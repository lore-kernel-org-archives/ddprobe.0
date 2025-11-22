Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDEC242D9B
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763846514; cv=none; b=lucIl75Fzzrx4x2l0FKk/4qvqGS+mpI1fD1NsBNoaCFqZSaR356eWIbT4EiOgF2GaD3hBHsF9b1PIidAXBNrqeSdL4dfYcc2jlw1PByJtD/fOT1XwBbi8+wUXNSc7U2Wowj07j28vWXku7ljAEjT7I3tIX8K9MFbvfA0h5J8eEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763846514; c=relaxed/simple;
	bh=Itx0KEUbLmWwvTUTe0RPn4iBHdyTcPbHP5e/LBZfxY0=;
	h=To:Subject:From:Message-Id:Date; b=f9UAZyJKyp8E51XMFG9dO6tV48mOjE1P3VwJndLLeUX6GT5JpvuEeTMtWASZYpwgw1pd3wisqd/gUpoHHtPdVLZM63BSwftN7ipqjfEjiFpNbOoxL5EgkZuEDlwzGlsFvSVSr0XHeeM/Jr8XeobSfsSpXtn2kpwoEEWTdACsg6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFSLcPRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFSLcPRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB96AC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763846513;
	bh=Itx0KEUbLmWwvTUTe0RPn4iBHdyTcPbHP5e/LBZfxY0=;
	h=To:Subject:From:Date:From;
	b=HFSLcPRwjFWVpqla8RLtqGCz2hXZeWUcdeFTTRagbOufcYFpp13657FBqc4UMDfia
	 hGApC3I7zbO6GSdi8CTObcLdg6imsD3vmg7qzDitoQL/UrFr0HKLAYckuMDrD/mVIy
	 69t/HhO3BSJ/4gYbzQ/idqmF1JnXnfIr3QnRrsRvMo7lWoaTcagIPale2JL5PxAQfN
	 BD7G8ttpGLXyL6QaGCwx332ohAEPpUz9vBK8eUk4AE2UngnarwnuiP3RDi3+8o9mbE
	 f1zEiFyg3UQmAiVsnp+KwIe2bVSeGTySTFVHzKqnCfmShAZrhb1SCkSIldj05pPBNT
	 4zBypaRNiBujQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E0FCFC53B
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176384651360.2535.1243560187110767284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d25e1ff95099abb5671b2d6afc7abb3bbb076fab96781a7f6537126af1db3d
Date: Sat, 22 Nov 2025 21:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763846513
