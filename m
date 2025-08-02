Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1C523A578
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754169594; cv=none; b=eyzMNAvyl2bqCujUk9DFipjVS2PPqjXNFQ+W2vVF3zzgwFgcZjvX25fRychlSTHwmKZ+ce+a+4qRz4OI+MSESbViwn7iPgM+EVcXGlgLPjQgKliZAr542y+oFVw6qotX31ENi93aF8Y067V3trv0sv9yLXbWEASlbm+wfwI4hR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754169594; c=relaxed/simple;
	bh=vwLo3tFU7RRNGFJAGWQURZktu6wIkdFHDtA5Tw+3I9U=;
	h=To:Subject:From:Message-Id:Date; b=RNElxH0f/+5oaBpdW5wJE9P2h5E3MRG7C019tDnbS39/ccW5FFXOW2DsiWsj05AmPv8P3HWCOeDDkNwOluFmwppCGZNLxAtUK+6XP5yzG7CY8/zDEwp0acJ9Jf6lwKorRua3ura7tXibGpwUuEdsCWZEnM7X6lIR6HL9H8KJ0Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LB8TeV6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LB8TeV6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6F2C4CEFD
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754169593;
	bh=vwLo3tFU7RRNGFJAGWQURZktu6wIkdFHDtA5Tw+3I9U=;
	h=To:Subject:From:Date:From;
	b=LB8TeV6ug9ZONvOn18g/g+/vsKCzD1zjqMeqEpyk9wi/T7lQD6lqKBrgbus1N5Dx3
	 tcnzAia1L5KUrIsvUlpASgqwQHymD/UB1wshAp2zlt9jTNBDOZOSEyqw0WQxABXgr0
	 dIXcySPGsSglUwoq0IIC2wJivX0/BSuC2G2JN/rTxDQI9zynAzmtgnILJyZQKbqIir
	 jTqfy1JAvKUohDmBoCEokFcy+b416IkmKnro60QU6WNHEGzyVhMvcjWfx8gOnTj9f/
	 oZfeL5esv232gD/nWszJqX+265/dEpmJqaTNhuHNdQB8YHvSNgxrYWYe8DX71R/dkm
	 Kcx3ALIfSzdhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95585C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175416959358.24993.1861043330697857723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d673a62322895408ef184dd6248165587664c2f118b6c6bfaa0d42266886d526
Date: Sat, 02 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754169593
