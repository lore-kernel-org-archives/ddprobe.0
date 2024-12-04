Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2670618732E
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733346954; cv=none; b=R1OjS1Pm5zfF9iMAkVdcOfnbZc//8Mil6pIWes6g3apVp+7F7aofQDK9nhblqCa85PhrTvRZFxUvbgJGEUBGrUtx4mQmCZR8c78q/ttBLJGKC+/EFq/KKn8zRZGXaHAmQ68fK21rCsrcuKZtRuimlz3guSFvTLBETX02JHKtUuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733346954; c=relaxed/simple;
	bh=3QZKtZxG4fPcb6Y55z/ozSpU7Vo2gjVSItwTypvVjyI=;
	h=To:Subject:From:Message-Id:Date; b=XB7pzZyZAzwLZ2QXm2glSnYU3iVt6jH7y7BKHIp5HCAQx9HmrqGexa+/791afRLe1ejjEwMuLSvMrcOyEr3z2i2FuuXFzbn+J2y/ByWaVJEa4F98ko0aRtv1oxBHKEr/SMFNTA880SNTPxSBVnbhs3mRhPPcJT1z4J2NrLFO5qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIWunoXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIWunoXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB82C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733346953;
	bh=3QZKtZxG4fPcb6Y55z/ozSpU7Vo2gjVSItwTypvVjyI=;
	h=To:Subject:From:Date:From;
	b=GIWunoXXfr0Oi5b4EjDthUiX/2EI9bbAubYvXLCBbzIxfSs+QsgJaDzvpziRIQmHH
	 oZi+lW3qolATGQsGCO9YiaTkHMnQEGk4D8OQsKR/UN03U4ZcBGapdqR9ZnHe5/zR4a
	 MqDt7TKzxLuLE2qfaV+3Iu2hzor0E5QDw02J4tT6xcsjZXr50eJ1qQUAbFKnwDmVXP
	 OZCVZ+SogY8zWZ1gLinTwqXB3WkBuPy13/SsretkM2pdUoRsmtvQ/oplJUf1IdoVCk
	 02xsbVY5WyEt1MMp4XVtXjRh2iBolK5E3FcQ6OUSdIiZAyaSom56UmlRj0CzcP3hPt
	 uLUgus1UTIBfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98151E7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173334695361.15212.7023906006466970604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a152d2febc2d8a356cb519cf51ddf946e3df467a8a01e449063ea5f12964675
Date: Wed, 04 Dec 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733346953
