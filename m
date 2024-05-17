Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7CABA29
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 23:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715986943; cv=none; b=mAPYDI+6bwm9zGFjFZZO5VpHonOfCiEwUgcOPgGmFICulBqcK7ZbrvL7vCovwDNBhjbJCyxP4w99vRED7s8IhEx4/G6soU5gTj1nxMgOYXIC2XtvwC1EbliSEG7aZreW7k+IAnJANKjhZ80IhzJGmeppx9m1BaN51tbRwLSpBOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715986943; c=relaxed/simple;
	bh=CXgCXRaedVjnaOlJqcib6M8cnExvkruUgU8HdZS02ss=;
	h=To:Subject:From:Message-Id:Date; b=EIzx/LDjOiIRouwVZAWuslTSK74xjcrzJcx2N6fmG4CdDTvqoOP6VyJEyBcE9cNgiBVOIenOWu/FGNnYsHi98fAN6Et/G4nx+dGB64ysN1VNoIloHbKw0ECcAwVjYUTTAd8Syppplti7z9lM02nL5q8MTAOudGKHzpxYxgLqkZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjmBJLFQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjmBJLFQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E21F7C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715986942;
	bh=CXgCXRaedVjnaOlJqcib6M8cnExvkruUgU8HdZS02ss=;
	h=To:Subject:From:Date:From;
	b=VjmBJLFQC/C2WBqKcfYxD9UgqzKxGqhiHTNYbSWoZ/eVrgzrUVxCYb3Og0lVI6use
	 BdMJlevncS0jJTDie5tzNFEadrPTJx4DQwv/0u28aZRHCzmd0n99KNKpoEUE0LM4Ug
	 Re7oj3DKaL8GHmiyMEger4hMBTXVFeCp2FdEhLkNFujI1J0bQhiC0iBGNX2WJ0INM3
	 oDl5PkjMoYnFbm6X0gu39IiZU4xKvmWoA/uONXR6JPGViq3DxEzRooThm//3Rv2LVJ
	 2Q82PyptKQEfrypoDi9cpOxdbAbz7+eh9B91B5trxY3zb8eFXcVqOPBm4eqvONdKUj
	 Et2tNF+L6ykdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C86E8C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171598694278.31643.5118815779966991068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1a5edcf1d01920a95b3606f66811768e377e1b7a291137ebd7b9983bc3641d
Date: Fri, 17 May 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715986942
