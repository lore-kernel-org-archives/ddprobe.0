Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E6D28B4E7
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753181394; cv=none; b=In44ryOrewLnSx9U/siyUjWZbvJ97hWjsdBtU34bjUSzjoVp/pf8MSTdGBqWVX9ELPS8sV5KC+3UtbIlTKSgaxk04sqajWJXBcIlfpbAjx9308cR2YJpT4ycNVhCPm7JVFxO2G/+tNG8T8twd4X09UZL/JMqVYYXPeW4VHn13Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753181394; c=relaxed/simple;
	bh=5ln3oX7njvCCKmkkSxwsFa24IWHy8qMmBPnV8TcdsG8=;
	h=To:Subject:From:Message-Id:Date; b=MJv0C8rJaARF0Ptx+RIPfjupZpsgjC8pWKFM9PR3/CHM+lFcA2qmvDUMrr9D8UcDJ9yvIAk7Lbx+DBR/f6npfZeEKbNAKdCvYXb4rtoajAThgXupyTPvPyG1PJkAiD5cVTSmQM71lxuaSqQlGXlSDbCKsqtXMcoszLGQ3gpvNDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOKUDQ+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOKUDQ+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E486C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753181393;
	bh=5ln3oX7njvCCKmkkSxwsFa24IWHy8qMmBPnV8TcdsG8=;
	h=To:Subject:From:Date:From;
	b=SOKUDQ+U8uC5QcIoQc1r0vuyJeGjRA6LJMyiXy/sNt+EEShbsWmScgnWy+u4IkOGz
	 wdc8YbIRR89VWJuCslBAFpoJNIFPjswjRwcmNku6ZnDC02S/C7ecTJjXc2JJX1/DdM
	 Dq84InQNUZDgb82B87xFfIotpm9Y6BiBrbWDUc9zRKaFre3DKJKz3H1hIn3qTp4sT7
	 ztyf5ZB+UcNPWXd2sYj2bgdFMH9kYYDhxzjlp1SPefyPY3tZ2NqsxRRIe8aJYm0X2d
	 ZxvFJF7h28BOUI6gUYRpt7kkPHHngNaCTH5UAC2CETTbVusj06bgu6veopwPQBPGXd
	 jbQ8ixgy7XNJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3EDC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318139357.16822.3115813532301221550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d965f544b39f9147b5ae207c3ca60c55d0599066f9583b1785289c658a576f53
Date: Tue, 22 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753181393
