Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DB28468
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725082554; cv=none; b=B7ZMXHBJUxefeu6WXMe/UVNp4lPKuS/wYXiScSDF5qmlq8HByu87uHpLMnBBi8oyZ0q7Urd7zw2Iet8Yk0+mOilG+Tq+va9IPWKweGhKIXKy8Tw+OqHv9dLMXMoSPVHb+8GC8BAL4a7xAiu7oPwbqafDGFqC5p9fVFFQBE05mbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725082554; c=relaxed/simple;
	bh=OugNCtgaiPG/gasae0CuJ3QPhjjXJWACjxGb/03gJGc=;
	h=To:Subject:From:Message-Id:Date; b=j1PmXf7Nu+oUcptd485NNLDm1ukwkaRVzze1TwFYP6rMBi4XyEzDPrCx3e5A3eDZyfxc+gPhnT4mWDPGylxBvnGhWTu8sSAz2HaY+9lzIghCY3qvf6Dna7VC87k0KQ0ug59Wl26VtmeBfFZOueVrT3HaV2HJX7ulbmMwp8AKYM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMsgI197; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMsgI197"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBCEC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725082553;
	bh=OugNCtgaiPG/gasae0CuJ3QPhjjXJWACjxGb/03gJGc=;
	h=To:Subject:From:Date:From;
	b=rMsgI197Wi0eZ6EInf/vf4f2LDpNonJroztKcVHZCQo2iiq60dPJOV+5uzqPX7H92
	 pHZ/mtPDeB4aWvlAbD+r3dsYXVR+oTnqbMlMmfKin+sktS208VKBYY+PNvsvTRa0Ym
	 7YhmHZBNFHt/6rEo6dJoJeLj8pAfxl+arvhDkv9g198auSUNGROl7ApREidN7BTE1W
	 c7WfP1s2K7DWTsGqxZrDlYmbxT2caGJcYy9l4eegzeJaaURcoXnzaV8NUpIbBPviay
	 0PsvA9Ckh617dRK/YKoxd824+L07cbQWsYikbiXUlC2WycTk8Yxx5f2S6B45UhD5BF
	 2vzUvtuRui47g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FFFCA100B
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172508255358.20489.6103112762338635053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 784dd5cfdc392e7d91b598708e5e3109ac2055a0b3d8c6c05533eb203be338b4
Date: Sat, 31 Aug 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725082553
