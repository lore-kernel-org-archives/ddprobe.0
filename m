Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1116A001
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775109934; cv=none; b=N+w9AAJLnknJICPzrawgPaQUTly8p1ojKUHYyYZz9xJGrMoV6SAbZY1pDEtl8/ybl+bps/ZixQKYD1weoBJMLK8Nqq3fmoKtOwhdLF9Igne6nW5H3fiCkiEFp+XeAhn3/jh8zAqAPiXC0QLr7uyUzQeIYHGoIeB5WJkD68m6lrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775109934; c=relaxed/simple;
	bh=Qw0SekdjAhI1FDr9ans+dkL13W3aqs41FmaR5N4KFrM=;
	h=To:Subject:From:Message-Id:Date; b=qoADwOLo0gnHOzVO9mwtUx8x4hN56e0FKkZ62xM2f4mX5+k39wFvH1h15WVqnSscf5rcT5FXfw3zDFdIlxtUHIQTC7iVcuLxBZurAKaDjopAO3t0qmmQDg2qdjTfU9MW3TZ8MdClzB/cZ2ySqLK+LA2Xe3oy6bIPOLNOGaH2RoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHRYqVHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHRYqVHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3AAC19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775109933;
	bh=Qw0SekdjAhI1FDr9ans+dkL13W3aqs41FmaR5N4KFrM=;
	h=To:Subject:From:Date:From;
	b=aHRYqVHFkt/0ed6x9fBsNys/WVllbXlVFCREOS/HvabN5kFTGyrZGJSQlFWJd9Fd2
	 qc62peyiPcqItvQ+1E2a04cejFq0JMdljHyfDO82swOofDSqZn0K9K2jlvEli6ifN0
	 qVGf/JjQobxIFT6Lq/88DyvBsDUUjWkMefdu3XmZrdCMd7djBcO7oWIsp0mVIA9lYf
	 Z2Yka8fyHOWQkudNKhj8MGlOlCW/6dq/Wmiqpb1nIFKsvdJce01Je+9bxJvJXqFZIA
	 ndjncgxyogF9hVZX+DzSGVN6fp17kQekKLCGV+zJiPhUlYDRMVpFXCKp1MJiWpzhsH
	 WloweNSf+BKjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAFECC6B03
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510993369.26032.3231695893416381249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b558a374d55598e36678d5ed6577a380edfa33d41926fd24d5cb4fca6449b72
Date: Thu, 02 Apr 2026 06:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775109933
