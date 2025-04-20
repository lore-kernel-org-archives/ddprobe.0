Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7DCA41
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745162995; cv=none; b=N22oLcFS+BqytN2GMTMte4GwMJIB8Cj4jlysJO3lefmDfTE9kGBwF8XZrutKRZwcfT+Xw5eu33qPlvmXmeshdZbpiySY9PicOe4vgbiFc5uRHPftsfD4lGGtpLYAmxroATpelPSIXrkpGF18dr74n11jiQpZySKYskhLQXCNVZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745162995; c=relaxed/simple;
	bh=BV7gC4hBkvyGWDSyJc7jBiPEetiKxz8I+40m7dHXtOk=;
	h=To:Subject:From:Message-Id:Date; b=B+KBk3151bRSq4VR7tX70oLtxb/ZPBy5Iwz66eormz8IzPkmN6tVFh39pCigEYtaDS7TujfbraCOHeQ2RAQhv3NZ6we1dFf5wxM6kbDBE1xCdnsJ1S3mg19Ap67vxs0GKtTWZFx0kYaUSSgGW/Iwo+ydp0Y7jbZIxs2MjWUQ3U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/nRjY4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/nRjY4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA959C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745162993;
	bh=BV7gC4hBkvyGWDSyJc7jBiPEetiKxz8I+40m7dHXtOk=;
	h=To:Subject:From:Date:From;
	b=f/nRjY4KETNpMI67Sb/D70GoJqJDI+4HJDhBAaugTbsIq2WkPTFTuX8jW2Ix3JoMF
	 7ulNOavJqJqoH1bSieOYFCILLQsR8rUBUr2U9Z5ctgb5VxcwgAx2c0dFYSh/xj7RFr
	 f8YvJ+EWPAytmjMog1VgSkQnpWycmQ94HInP07NonIE5snERpuR1FI9QhoqAfUdT4e
	 6wqDvQVl6YlfqRH1ATBIienw1OXuxPxWHc4/0EmUfGAJYnzMj25+aO233D6/4tg1BU
	 jayq3ur69jTbuxz4+bB1p1laLdlAASr6SfmD8IknFgIH8BPXx1XspYUAn6CLMAaeHB
	 CFbqiSc3EO1Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC4BC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174516299360.28438.16587639966139718273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b75c57716b78185c0c810f901f706f0cda9d4680097c80996fe72b0a022902
Date: Sun, 20 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745162993
