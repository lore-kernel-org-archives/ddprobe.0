Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C29138423D
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783491514; cv=none; b=Kt3Ma8t89lvh06AMkBgg2CG9LwD66T5LXg8JCxRQl8WGHXGUm/xoX7cpXE3p46PoGMgihf9VJvjYqxthuD1vIdug4f9CFQHrpkcrZeB0U+KlGxaSTensk0unHEEPwuIhmjNuas2Rzb6X6LuHrteHP1TY1c8yJjn7WEPtjpZypk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783491514; c=relaxed/simple;
	bh=LwY47+hCgeHdScqWuFMfvOiY3Ye9Ja+NM2feBLoT7XA=;
	h=To:Subject:From:Message-Id:Date; b=no6+AHQRI5PZwlE9rV26T403ZWe1X2vqPftxJOpk+/AuCcL5/b5lP+C6wFBZTXBbUM1U26ImcOmpJ/UOGIRbVbw2kI8wbbsRQwwAPFHOhOG84GdjarK034NUFleFDnrMWkVJxClLVNZtfamYQ7p6OODMmgt0BCXVMJtWTmVF/WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzU608Bd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzU608Bd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB65BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783491513;
	bh=LwY47+hCgeHdScqWuFMfvOiY3Ye9Ja+NM2feBLoT7XA=;
	h=To:Subject:From:Date:From;
	b=lzU608BdlAcubqTxMa8HAjDLxcgNzkmywqpzl2RKYnMaHBdYQCHfuQBKRdlNNx5Ne
	 AKiHRhuipez5miuUxtqjH5LKvrW4930tSxmbdzDSWSCGV4SRAFqgiL9x/Qw1eMU7hb
	 Y2sRbNQvl1uC+qwfA+DbJeVbzPHKjhyWX55RGYJoq0Z83NQ/h7FtrJoVDBOReJUVe9
	 3r7AMAPDnpYdzG8dOtnILWCDG/L2qPUfuGbzF2sHaN2r7XHIovrLNj0c31gEDWyzLM
	 oZZ+MyZjUBok5kpGGepTVekhy3q3XDl4nEpV6wRt2YU8pXT24udogPEVX9rjNph1qz
	 7J7vdJGN8LnzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C68C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349151368.30749.156299010126154804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd9a03d533300e87081cb30701fa7781fc158baa754730ab0c7fa20c3b2308e
Date: Wed, 08 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783491513
