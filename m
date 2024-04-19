Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B4C63E
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 01:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713489563; cv=none; b=UibAZK/vjeSaG3w2evZmuNbtTwA4KIPJe9lOsz4z2knZ+W5MxNMMISLlv0ZrDoAh2pCasdBlOsnByrLskEKr3wOLpJjWz2FTnQ99/rvel6k9fLtc6+4bPB5kDUFiy9xX/M9YzC1/9NShpcpqD/MeXDBruRKu9SwOz59wK3RYHX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713489563; c=relaxed/simple;
	bh=D0Fzd1La44uJRsn1/KCPeiYddEhTY85uM7hZs3KeENc=;
	h=To:Subject:From:Message-Id:Date; b=VpUeX1iiJ4qyjn3GOaEAH1YxwdZETsFES3CCDgSk5/PDInGzDg7sNPY3Bb9TlaHxgSpsvvvZEkrFPqMBuQQYZqTviieMZOrTNfyksB3KoLrzwSIjLE8Xgc97QnOhYuh8t1Z4wDOAfKEY8pHmkeP2kvbwEW1YokZ84fR0nqSty1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vn8nHpdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vn8nHpdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3597C113CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 01:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713489562;
	bh=D0Fzd1La44uJRsn1/KCPeiYddEhTY85uM7hZs3KeENc=;
	h=To:Subject:From:Date:From;
	b=Vn8nHpdJVuujwJXFzUsZl5z/fOKYJ2CJquYx3pjXi8Fvmh5N/wiXLq+cFN9wbcNLu
	 xxrqMfq69/AAkFthsAAVmXLXjvsPMZNHrH/c6gFOOAk7r6rgsO8ppXbfg9tSalzR+7
	 YJJn+w9FS8uNFCb8nWlothIVOmmN2agxCaMeNYMSvyozM3M7X+nCtgkwKLZOEjAFN3
	 qcNiojdS/lMcEWLGe3W8fvMVgPbpy/liegJeNh+JwwwcLfOI+nitOB4Ilryvd+WIhw
	 BQDKBGfOvOZEw/MrqWJEkAsjB/rq2I/HTT1n7ngpm0OC2ycOflRC0HOtPRsIO70NVC
	 z5yzICuUE98Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD866C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 01:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171348956276.19851.17200254445407720846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea18488dc04e91f81ede15046358052f13df11d30909f09aaea17e6c63238ab
Date: Fri, 19 Apr 2024 01:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713489562
