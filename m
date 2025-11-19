Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A8E62D8DC2
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763521314; cv=none; b=lJEDl3OgiG5eXJDETzD8g+RNhC5SANAjE9JW2SUUkP8RZQZqXo1n66U/5p7NhbOzuy3lNHZHbJQEzZcYG5rU4gFfXeUG/ljrJYBwce22XofmawJg36SNtGXltl5OLNJwbxH3t3rpcjit+1Dxhqay+LenG2T5xAHCNrW/E28ckn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763521314; c=relaxed/simple;
	bh=HhanUqIeOWBm8T/AuU8n47X3y/nuj9GH88y9ZGKV3lA=;
	h=To:Subject:From:Message-Id:Date; b=esys+iPCot+KoxzcWYjOLz05Wp6VbFLsGBcqnB3C2srjWxTNEXVMhoKFmWkc/jec4iNLXIOyAEGKz06ydfDZEUvxkUgLAQAFpeLSZct6c1/oCKg9tMSKq5dI/Hljes+tnyPugKyQRxIpNRtlyjeSRy3leire/Kzh/JN8CcNkM7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLlSlzam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLlSlzam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFACFC19423
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763521314;
	bh=HhanUqIeOWBm8T/AuU8n47X3y/nuj9GH88y9ZGKV3lA=;
	h=To:Subject:From:Date:From;
	b=MLlSlzamaATddTmJlBgThxEiY6qIfJ5N2Y7qAh3CzkcTXJkk6rVirHvgz+mWr2ld2
	 ud/olBFeui+3fvB7kSTp0ApzM1qm4bqOrJDRa3WQ8rWMhqnVPCbJoQa01ToPfZgQSo
	 k7Th++9FNOXuEEj6kmOVZyUHksuZgRSMxZRueataXI+edjbiElPTd8h/CV4Q0C84Q3
	 e0tHbzw1jsaXJhDJixNWnc/DyT4vGIQms5svYO30JZJnEVy8f9d1psoudTex5PMU2a
	 ow23v1uLUC164aPqTmhZNCdvPMk3UoXgSMjplFEszig7WDGa0q6/5A8A+CrkAAyvL+
	 y2D5TkQ/+fK7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8025CF2564
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352131364.11768.7856855979123064689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6efa16f5b4a35dcc85aa995ef0f03d03686a98c25cc436c1e008f68f66840d55
Date: Wed, 19 Nov 2025 03:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763521313
