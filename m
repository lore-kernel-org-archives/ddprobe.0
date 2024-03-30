Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11F23BB3D
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711823297; cv=none; b=mNlYyUoKqznkMuqtvNpQ4Fa0e83kDGXixzKm97ywgTACpnbuG+rujr03mYGb/9Jovuhy6JS4+il0gyqvj6kq0TNLJTRAOmbg53jlVsAmLh5CUa820SmO2OyftqJXD/fGwezR0/cPpE/9USSRsf5ILoltwLRBqbB96qlXgAMZEOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711823297; c=relaxed/simple;
	bh=6Xdw8+X1+a0IfhXfTk8502NBDuwg5ZMz6XVf9DC4QBA=;
	h=To:Subject:From:Message-Id:Date; b=PNfGfj0a/ITOn2ADG/7JfT9kfQ67w41tt3CJfLEoRY1P0AezAU6iSj2TI3NOIuAqr1nMFgAh582bBQqMZaOVNwaMLSAPVZER0SILmsKISPwinA7o4hnjNHgpdgMbobgkQKtWTi+lz3Qn49B2b9gKHOgR9+OHhOkePBm+9Wqs9dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4vrzLOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4vrzLOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F667C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711823296;
	bh=6Xdw8+X1+a0IfhXfTk8502NBDuwg5ZMz6XVf9DC4QBA=;
	h=To:Subject:From:Date:From;
	b=Y4vrzLOoiYPk59MVSmVwC95pdgFU2MgHbK/CvCTZwLcqVybP2Y+bj3U8sNLsBDj9f
	 YEfCjYqGpEsfEwrJwTBaga4phhFT+vLqYb65Kmn+3e5aEWtZ8INmb0ZM0Fzg2KOqxV
	 dj11ruuqP5Ys73+wSZk6vwBq3Ao8xwUdMGHgCk9x+0GeTeC/OE6uZ7zG3kaerQs0Ot
	 pZmdpwiH2mu+od9eV7AilmuQRZ12EhRqAGPKmffne083uTI84NPgGhTNFEBNugDdFu
	 RRqfpE3kHHJzGEf1jv0qQizuN3YPePttsARu3aANaAsNIPW6o9Vr57malPmOyMi5wj
	 8zEqDin7uKT2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6865ECD1288
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171182329639.23107.15921688242407593482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f946a88192cf46b3e118514342b5ef01e23589f3e5694c5cc8dbd38ee785e1
Date: Sat, 30 Mar 2024 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711823296
