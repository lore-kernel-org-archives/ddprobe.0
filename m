Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B55748A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721955954; cv=none; b=LsgfU7MiAMLYXku5ECj1dc7gWp4LBATkRSBjUYv73NQDTFrVDoEptCcoLPdTFI1iyZHidkykqHXS/XXhvfcyjxG5D8D52pwt17AzsKJiGhjBZoqSJRPIpb2sLuWs+sMqBDcDQcMBknGqtpoFAhuFcxLk5yguHzhFXVZLI897+Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721955954; c=relaxed/simple;
	bh=iXCSG8vj47SPXDlqEokSfBgwGQLfCAuuOLmju5AbcAI=;
	h=To:Subject:From:Message-Id:Date; b=YOua2a93AXaauV1U70EeQ0TuYoKykN0s9xUGkxJzh37oti/04UjhSY6XvUTms2BeZaPy4ttkXDOuTMrYiknAJTkSccjvv2yvL9W8gls+L9iWvRCydZKTK17266Z/pweSuTA8jLUPPUQuh+0uVKjmT/oF0lU+E1jn+F/6//6Mokc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b14hAnod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b14hAnod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCE3C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721955953;
	bh=iXCSG8vj47SPXDlqEokSfBgwGQLfCAuuOLmju5AbcAI=;
	h=To:Subject:From:Date:From;
	b=b14hAnodl5Ft3DhcBsQas+4F1+fLv/4hhxPZYs9p7aJE9H5CBu4K/NMDuZGd34LSm
	 B6jXXAX+Xef92wH6bk1ALbUafkCe+cHJIC2mUN3RQRpuH0VdORWEtpkNjctKecoMDd
	 8yZTEo9WB9VcUwEhsXYtICnG4jWU2R9p4jI76Cu/S/8xgX1lWolQkh0LLzDOaisCWT
	 GMe7GYLL8gYIlez/ZZ4q6uSQYB4dPyzbro1JnHrKxS4iV/Xyq/+fMzIUqsi+vsxTij
	 eneasdIDPmiEPBu/ptxk5ZrNJlL/B4Xp0WTs7ECpobyUcOIRmg7FPbH1RSnGsTbErd
	 ek+aHqUQzyrCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF14C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172195595362.11987.13137533949371643469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb89bd02108713741328e9de223d3e45bc04d0ff6dd9900ea5bdd1ed734d0f4
Date: Fri, 26 Jul 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721955953
