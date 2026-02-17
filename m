Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4C82989B7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771352694; cv=none; b=sMS3W+pwacbF6gFAbwk1faL3Kj8M2/1C0P0h4BQjj2g+0RJn2+QjrjSa5eFebb1wDbZ/eAbOVfPCa9R0zoeh+zM6OWN5lo4HvwekRu3PDv1PArqK0ywYP5+C5JwG0Wjmw8UEiZrpvdWPAZlSD1GcLOTSnbkERYYK90iqOXnnsu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771352694; c=relaxed/simple;
	bh=a12Jwt3/yzrqgaRrmhfOGqs/ka1a8nNXIz+5nnfy380=;
	h=To:Subject:From:Message-Id:Date; b=QfRg52H8v5UIAwZi94uDwUc7JHRrZVTHKJeo61PKWb0QBoRIjt4kpbEXTX7wth3UkoS80TlmB7G1bnCMXha1wuz7rKOYCA2JrIgErvNM8QpiNviArGPleOeD1mOee+vnznb3KRhOn/29QZXseW+7zFmrjXpjoUInEqWECQRqAjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DndWED5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DndWED5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A83C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771352693;
	bh=a12Jwt3/yzrqgaRrmhfOGqs/ka1a8nNXIz+5nnfy380=;
	h=To:Subject:From:Date:From;
	b=DndWED5OqArt8G/+evV2SutMVInUBx/GZGX9QBGCcYg/OLY1R/rFoj9NGxoCaTtN6
	 +0KXvp+sVwk9DfFGi7hU+fuL3zpEQxooriB//Y5pQgaS2mhd3lZXGuy4yz/cE1vADn
	 J2l6DOWI65xKDGBrqbwP5PiBaKdA2J89ge4T0i044FwwnpsBHBJmvqmg+zlcQTDJ6w
	 fZ/iH+NYzRRGNegxkb3HqkARRKIhDWR/+JHjzcYklBnESoGF+/ZjGCe5MreGlQ4gEJ
	 Z0SBr7Gaz1P/mUyxruuPXF08uYZFiOEKxJaIS+FzqM53iRRYRHDbc2sEXos1Sf8KCf
	 y4/kneElaSpcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D4CE9A033
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135269359.16051.1908638382080701423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea4b3efd91472390d17455673ff4b294c347eeb1fa2c87e70940877213574c5
Date: Tue, 17 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771352693
