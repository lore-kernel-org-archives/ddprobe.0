Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D09B2F34
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719812063; cv=none; b=GXuCxGmyyF1u4CS6XftYlCark7CMp7RqNtmvRojOkX4EWNGfpH/kn//Ha5wAhZh7tPXhSlGnLoJHyyt4Q+2qAl9W4Rn6RyP++oh9AS78n6HxxNdZ4DQ6Y4hTEyP2qrW+O8RCTVxXC2T3wIkhQ+pTZJifSp2NECOQ7bCm4OFi1hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719812063; c=relaxed/simple;
	bh=O1vXQQj5LX0s9QaI8C/NUkQrZG0q5cqav8Z+1IJNqTE=;
	h=To:Subject:From:Message-Id:Date; b=lOOfpffM9zeYuOaB8E4UjjzDOdU2BvTuUjw1mEgVgTN5HaZeG8M1YjLP/2wHi2PkqmLUSqpob7ltRPjBhMqrVmuXv9kHhVDWUKrSoQoG9HDbdD+k0y+2any/IHmbJcy5Nz91Y9mCDx4BQUcVqWDtRgdfgAjydo6UyrohjUcpLI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRVeIngj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRVeIngj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F32C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719812062;
	bh=O1vXQQj5LX0s9QaI8C/NUkQrZG0q5cqav8Z+1IJNqTE=;
	h=To:Subject:From:Date:From;
	b=GRVeIngjAx7WbgSYBTnF8QBj3OBz3XUJo0jTmd2fUP3W+hTW3EgokbYblJB7WTxu9
	 C8Lve2t0Dw1+AinoJvi+JRRIfRMGWRUh9leroxpYQ84lVNwUf5lhb8pQ0CA1ijkBDU
	 Ks5xxYA49gnLgCgqJeSv6DN0QTH8d0Apc6TMn1hz9062D8ZXMq+V8RPIQ1dNAhQR3Q
	 aZOO+2AS+7I3q8b7IHiKs8YBfzQKRwybMrMoOKcWRsT/ooBXkWXIe7Q5g4lN+PYqra
	 5k1yVBaMIfrPYOiG3UOJGMQMVWzoGZWwahSeNWKu/Ln5mu7Z6j+ht8/iD77/kEYbpl
	 qZe36cjfKuV9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A4BC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171981206278.17250.11104746120431254138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e2acc38425f4a2e713d427db258fa2099b6c3d1ac45682d237788d96f36153
Date: Mon, 01 Jul 2024 05:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719812062
