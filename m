Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE381DE3B5
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760170794; cv=none; b=UIKcc+3dF2J/vhkaUv3goKbAe7RAeIoaeThANXmB3nkTFYKVXA2e6ybZXagyZIDQdUG1QR6ATj2vQM6S11irSs8frUB040Ei6og+ecVNWu5cfNrskYAr4+IdRmoKYpFcUpuj/F0krj7XrQyEoqPtJWR8ojNqZ7u7k04toGDyM5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760170794; c=relaxed/simple;
	bh=pEOW7FlVHBDxw6CDwlmDLi7GPtQSXs0oyKSxy6s0kew=;
	h=To:Subject:From:Message-Id:Date; b=MwjWTxxbMgm9ulc8wjYo14FWbd9nKRkpebh3Qjen7TXZvLm6ue6SW9wwQpcIMSJ1RfrXxfPWRqhhLzoTLqVttKW9XxcixAWwejfBFF9fK5tV/XCzKa+zy60IJ1M28QfyszkHTXD2mZFNC8snEywwfkTMD1DIb1oleRxo2Wj3ThA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NV8YC/mf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NV8YC/mf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A0FC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760170793;
	bh=pEOW7FlVHBDxw6CDwlmDLi7GPtQSXs0oyKSxy6s0kew=;
	h=To:Subject:From:Date:From;
	b=NV8YC/mf+sQR5jKghEcn+kX7Ecu8gyTZxAo9BVkTXbvaoPIdbUq4XcVWAG6IIbxmc
	 W+MFYM2MmByOAa7U0F66kLFkj26OZPkWvJIjtVh0f99cj7u4KtmFXg0aMPN8GAN4E6
	 QvlzPeeypf1ulDjY6mwQ9oBqmkugJpWrbfiZUR6C9+fsd0Uit4i2KGDPpdQYho2Gzu
	 S6eHobsWgGED+/1qR9oxIXQ+hVhLEHki2aPw17PMfde62KStzt1cfvZKWlhXUd3pKc
	 zVajsu2PYEQuWek8fp1V0IdnDHJWehZKWuZc3To/dXoGVKmroDeUuAPZqfupvQ5l/U
	 Tq+VnVqrm5r1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940CECCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017079358.8741.7439651762962546415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25b2eb363757f9a1bf068b2ae791ee29e306e5325d1a4fc4506e85af67e4016
Date: Sat, 11 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760170793
