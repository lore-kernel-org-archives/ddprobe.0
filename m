Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6BB333B97A
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777456653; cv=none; b=b/Z3A4SKEyDt0ZqUV2oXLObvJQSXsRJlV1CtxbWi54whNkdz1nigvzmIjUHkmJNprAXLLi1CO1eaz7RKj3+FtJ4h/Zh541Uf836lV6u2wHEUKHXkcsG3hgyPYIz9LJ5zRr6vmjHhr2r6SdG8jZ6lol6ecEWvFGAk7jFj0uH1yyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777456653; c=relaxed/simple;
	bh=RR+wlbrvAhjEY3mPB8AmTvgiE3F913r/97m0UpM9HuQ=;
	h=To:Subject:From:Message-Id:Date; b=BBzZTzXBW7K4cSd4e8ZFGmGrLDtNsvMaqgP5EoLrHoI/6vKTgyGl1SgGghGuoAodW5acHrQ4240G8PpwdFd39d1kGE9qavDXWs4Vo8odisBAE+OuRu7tN7Ow4sDPMNOB6Kjjv4DJnSUPIBv40NRtKfcsUk9UTOTg/C7+ozuCp48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bg39U1rE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bg39U1rE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FBBC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777456653;
	bh=RR+wlbrvAhjEY3mPB8AmTvgiE3F913r/97m0UpM9HuQ=;
	h=To:Subject:From:Date:From;
	b=bg39U1rEiVuJdR+1460ElF4OFGgVtb4u2QL3/9NHuOVW1bUuydzDT1Iipj2m4pMsJ
	 U1lnSwH7M8sE+EyPwZlrIx/9SsYZW06W83y17FeQ3jksv9Zry4u4PNEx5vxYoNB3e9
	 sJdu+LR5uyMHbDYqLGshkpb4myofYizEbndq8Siy8mvnGF9ab9PUt9O1LPgPy9NJIW
	 vCv1fBYCxK6mf6a94UXe25yJOzMQ9uHYa0M83IDZHJ2cLh9maz8bSHZwjIdNPJtz5+
	 L7QRP+L2j6dRuv/PAWt8Yutdwn3E1KYq2/qjlDoIA9SnZhggGxlqi+rtEB73+n+uyV
	 1kAwSjuryQ1Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA57CFF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745665369.7714.15500317655934680085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de76568e451e5940bd0ef977b87c67b8409217adaa44754f1b48dfbdea73bb0
Date: Wed, 29 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777456653
