Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5E51F4E5D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733786154; cv=none; b=fwrKgIY0cm72TbXEbwL+TLpycvEcFXH9PkV4aL4g5olj+ljWShg5XRJ6g2iM7P2hMBdZMwIbUfcCE2ky9fy5yeuBstItGgorhm/kgh9Opg+kr5Kxj4PB0RICPxXc3wKEElQ6Ndap5YSeQ1trnhIGNY1hJQr/QGn3qsfIEnE5ERc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733786154; c=relaxed/simple;
	bh=cDG6LUgi/hBxp7CDjcdrhdrtnbwgUlyUi/CYzmQMUQM=;
	h=To:Subject:From:Message-Id:Date; b=VpzSboVv2pYU93yoAW2skoe8krnVxsBD6HHvZSvHBsXw66Ye5XFAABBW+u9q7EOjAGFO+JbI+rWBAo66aGgAAcAqznW0VALjYedDICiaW6z1e63RznTK1kSKXnbN8RaRz2NFbFeRtJsNNi2EKJwO40tECbwv9dBZS4QIl1GYt1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ilrpvdn4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ilrpvdn4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FAFC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733786153;
	bh=cDG6LUgi/hBxp7CDjcdrhdrtnbwgUlyUi/CYzmQMUQM=;
	h=To:Subject:From:Date:From;
	b=Ilrpvdn4ZW2c6SiaX2GaNJWg/2jWGal/SimwWIcuHpPSSByS9shHyNT1Ii+UN+5Pt
	 Ew2jSCP12HPi1Zq3McE9w0hJ3IRlix19pBclg8kUjk6GbqR2g/P3Dwgtax15CFweyJ
	 i21ytskIcm+wcYL6L45Lq0NyA0LVVagfGiuaUYTSqg5b5nF11c0cnOYFKuUhv/n5jZ
	 5+sMnjhA4uQ8+fzU5Ioh2vD5zcFwLQybc8/LZQWKwAAJGgFRnbuLhrQ51sdyEvn1UO
	 H8WM5UYjA3petAiVFKC6xBPenCVyAkjrM9OBbdUjHV8Us93Y7dTgHvFBTIsS7ZNloQ
	 fTexx2j+S/cag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA25E7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173378615362.13213.16623786269525766677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b883c1abe73e3b99ee75748be1b10a798ea13791fadbbfc1e843b50973fb364
Date: Mon, 09 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733786153
