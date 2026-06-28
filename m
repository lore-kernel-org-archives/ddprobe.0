Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DD32E6CAB
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782645514; cv=none; b=FZKtY7IB3Z35x6b3nqMxykVqdPaLVJ7YZZxBxk4cynlw9hBiZc44f3lCtPcKtc+TPr1YZdLQ1G5te+O0lMz/onxulg08AOtely0SHxSUCKIjycBI8gezj2rLRYIbObiX/lrfuc34fghYZP039Zb3OCxC9Pfj/aXwMjhlHU4aniU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782645514; c=relaxed/simple;
	bh=0bxOIZja+DbKirR2UxTkb3qBGBE18jPTs30mBXoq5Ak=;
	h=To:Subject:From:Message-Id:Date; b=XkXpg1fdFKNn7dRxLAmtjOzffZYbP5L934iGmF8hxv/VWai6DhxE5voImyeaUNeeamg6YUK1PQLNcwaCrzEAnk/poOzGaVXs8GE5BzKyQAfnY9ryu0xV4G3045JJT74EoVRI7cyD/T9CW0IzMZVb4fTJUQibuXd4HJp0dZo/+a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHKXpnyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHKXpnyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E48C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782645513;
	bh=0bxOIZja+DbKirR2UxTkb3qBGBE18jPTs30mBXoq5Ak=;
	h=To:Subject:From:Date:From;
	b=vHKXpnyZOIYlIMLaQwz+OT/U3oVxWzSplPixnhT2xg0Ph8Rk1H2nj2Vs4419vOdH5
	 B3KVHTb7xW5l/Dpa88BHVHYyKrJfBs/SUikW3WSthySllls3MBARqZYa7ruTVg6Wir
	 gdJPSeiYXr1s5FqH8QTj2SwJ0WWQi1fqdgc4ZS9LoAWhYmVGgWjWTs4d8LC4xV+t6K
	 Meq9D0pTxEjI3aee/7Sx7L75nsy6CaWo5o1kvQlUatt5EieD/sN75SNJUv+jobFNcs
	 DYyH4hB3oe3Irl4uq50wIcNxfyM97IpJkdiEzfMkyH99Hv76IXKUxlZAXf9iI5gQUP
	 oYy+NrEGu+0NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B844CC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264551371.11856.2070086623046088156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f1f0e9374b4c97a930ca09dfb4a15418e77c57e3a16879d407e631937a17a5
Date: Sun, 28 Jun 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782645513
