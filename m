Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A89636E49F
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774805094; cv=none; b=rf697F0uRwQ3cQhR5aeswAC+2S+0if4UxjfbsZ8knjMV7otY2OnYx1xf0G+AIkJaI5dhO8mf6Sxk7LKOZZ+fvfIXHyG7MMkdkvljrge7+1rAqAMQ5OBIUQMYOnvTqPm2f1beKlu5GDubpsw2gWe5+BlN1dFtVD5qt4QniGOjWCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774805094; c=relaxed/simple;
	bh=ngQ3t4B5ZwyANzpoeIH2sppT3tJur82yofNeUyU/1Jk=;
	h=To:Subject:From:Message-Id:Date; b=VGH0sFDtsQsjZw7PbZiWaKrpCpFJ8lwjusJIgsIrQGaTjWLvlBQ+PcnjiYGdFTRhRO0latENmArOb/Tqim85jL/KMjBfgmwCAewaOM/kzq8Hw1Upopyx7vqyQZvis5Y1wegJS1dURTEwiny4x7wvEpbtcD/N7j6HW3cFumBA30c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbvcV1Po; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbvcV1Po"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50D8C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774805093;
	bh=ngQ3t4B5ZwyANzpoeIH2sppT3tJur82yofNeUyU/1Jk=;
	h=To:Subject:From:Date:From;
	b=cbvcV1Poqhlp9RaGs5eEzsn1eyz2P0IM3u3tM8UawekyhxH8vo6NDUzuvGcku+vUd
	 WRfUoLAwMQidrwkVBEzN3kdFX8VBsgEzn5slXlfPqTVQ9ZliaiHWv5mo7a7SxbBGgc
	 93ean3ohMYds32XMmoptx5AXNpIBI9Gb4hcXFSlchqOCXDh0n3RH7ornGazDaEh6B7
	 L8EHNSssITeZcTl9GyS3VCA2htBV/JXiTMad+tdvRv2eVv7CwFbOnEduwUZwnm3/tV
	 O5oP2at7qb1UIz2Vwv7eaTwCJMweUK/xyLsT/rzL9l9L3Vv6JHnH1T1Uujc5Bkv2Rt
	 LXnUaG0HIb52w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9103FF3D611
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480509358.29901.18009938029751527512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6fe119f3152839d8b1bd922ca2411d3be432198e9440b6d378fbe8b3aa0ab77
Date: Sun, 29 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774805093
