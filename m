Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51135239562
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748697594; cv=none; b=BZWa4LUIyXXjc2p3k1+biQkTll1gsLM21DOT2UVyV4RU78Dj2ByizxrjUN3iZmcPuhJaV6lbqM/p/RpSt552BQuEqA96MkoZc9Bn8pqTQIzAkXpSZMjX7Z/bPa2jYHlbToDiTqulyKAqL1eW7IklJJvQUCcSMVbqPwtlD7sb47g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748697594; c=relaxed/simple;
	bh=TQo65DCWhjfEvVLnQsvR10MaMPouAgKmTAAEqba9/yo=;
	h=To:Subject:From:Message-Id:Date; b=FIEEv32Iobma5Ps7ItrBe+EtFJq0UjGnHsrhRexCioZ5Bpt6cz3THYuiEhsAvNSq8+Y9z1v/ipucINk+JjOsRKxhoxCRyZxj4YBn9RGlw9aKc6QmRZNq7AjjDtwtkSOAg59cPEUJ0DC45sRU2ghUyskSd8hLCYztl2QDdknopWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GltKc+9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GltKc+9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BADC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748697593;
	bh=TQo65DCWhjfEvVLnQsvR10MaMPouAgKmTAAEqba9/yo=;
	h=To:Subject:From:Date:From;
	b=GltKc+9I1sJat4KYo76AFrUquY+cEOFWp6RBpPaDXUOKkadwx9vV3JudpDqRPvIhF
	 3SPoGDnZ9htD5Y4SZRt7k4cclZblmo/FpMw1vj2cgnY+sl8j4DsCUDTwvYyvE/b2aK
	 QnNXyQq4diSdkAHsJfOmupwjhnk6zUXtl/ytUf5kV5YTw3xfhP/moVoX8Qzm9HW8Wd
	 nwov2d6aFJmHOwiysDjl3tq85wTIxKajkBzPeZ/62l+EjCP3N3YXqvA/LJrYqmZZBV
	 WbMk/FlnQcaQzT7X+cAJTrTSVv/Itih062/vaqut3oO+RHC1IN8p6s0lRZwPLAPFkr
	 oeDrG5cDU9Jww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AFCC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869759358.5367.15558415277708152235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb2829a440aa1b83b9c6f37f920e0fc96ebd8d6014810be0b1d310c4c750d32
Date: Sat, 31 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748697593
