Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEC0267B89
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782992314; cv=none; b=HYorjzLMdiEQqlp1Xsven254pgajM0X+oV7cZXk397nokHVvbVPfhU/VWRzArTS9a9/w8xaH4N0ICDF9f6CpUu378RHtxEMXyUr5cH5ld5w8DRLvaa3dK7x4qzgiLD0SpLBr47HzCSBkMIk0XQW4L0ZcdQIzvRP6L5gOVrYyR04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782992314; c=relaxed/simple;
	bh=oq3LQYFYJTJWRM1C9lJeibsl0AuksCyI+nBhlILbe2Q=;
	h=To:Subject:From:Message-Id:Date; b=QJ15RWZ0Z2+czG5tL/n1Hr5qPWsIBucQ9FdQFHrMRxXZhLhXwtqqqRdypvAesxl3SlnrtTTZ+hD5XmMlJezV2iYBTDJnTfV3mLu9q+wo+kd9vn/Ndb1WDUZwG400+rBUMVH7FBoNyfh3o/FAidE2sphaOhaI8QFGNvf8pX8GgPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkvtZCZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkvtZCZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8B3C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782992313;
	bh=oq3LQYFYJTJWRM1C9lJeibsl0AuksCyI+nBhlILbe2Q=;
	h=To:Subject:From:Date:From;
	b=mkvtZCZlyc+FvDx+btn5FtMIqgamTpm6HPiRbn1m8HcLdV5vy4aoqXPqYw3ynTrIR
	 Hhc6VrEvQbt0M34TH3jue8qX+x5Hu1qsFzYuHbd1nMIMmFVYosq3VluWqMJeIJfFNI
	 bcQSr6N1AJZVVNpUfyj8NaMGz2gojveiAgjnh1U4jLN9E6CUJ75dncuLGeINmmVgWV
	 zj+MIYeg+bB4v/NvFZeCMNaVy6jpj4/bVIItkAd69m9Bx2q6YtOzAEPWM+ZklKHYlC
	 KYfk24FQ8p5Mv6K5/GsYj5H/iMJN0xBUxHufAkXTJs8DuKrNWc5zA4ZXFRpV6au+Wm
	 gnMbG2sRMXyTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A936DC43327
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178299231368.8160.955346293874415213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e791352460954b159347a70fe11096c24490c0477b003c5b99b6661769d34b11
Date: Thu, 02 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782992313
