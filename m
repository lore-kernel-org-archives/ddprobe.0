Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663743F104C
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788061834; cv=none; b=dimizauxNDC77k6z78TXmoYK5jul52PKKG1YcDp9Fa0Lfq3QjYyymjnoeCFWj+ykiGvFkoADeu0UJsQUD9Ct7h2FAMJSryVswcyc3toyBk3mStqtQpR6gxNLLgcB6RM8cesoIe5To0qBdhJMVdQ1JvzY9puk6lqXQVVSOJ/T5pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788061834; c=relaxed/simple;
	bh=CMj/6YOAJVkHM0hX1iOTSqkVFMZeUvfeYXsHlWGcRTc=;
	h=To:Subject:From:Message-Id:Date; b=uZA3XjyTrYSpBkpcG09FkChpfkTKn6WhSooNatYI1SV8GAkrhCnRX6N+ZMtI0922PUqUzHv8VQYI3v+ZIjZiFvbPS+entAB8ddKRuqry99Vl8E9qnmZ9YIzPiSQD4Opveiz9c0J3HOUV06Mw7FCzzPJ/IfolmQzz4q2ipgCyxQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0GevPkC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0GevPkC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08ECC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788061833;
	bh=CMj/6YOAJVkHM0hX1iOTSqkVFMZeUvfeYXsHlWGcRTc=;
	h=To:Subject:From:Date:From;
	b=L0GevPkC6yzWTYS6zy5iAYVwIl1k/xsweM+GyP9Bs4wjuuHRypiAQ0PvvaVokTass
	 FL2dx1oyRVjq86kNL5N55SZDjsHVgpJbWfiwOdZQs4Mukx/AGEi4HfLVPc2Hpf+7Hv
	 uLZTC+IIwih/3SqChZTYhLCoIa+cRWrSZcELIseTnd1any/WRDpZrJahS/I0E8dl4/
	 5OVudTTZou919fU0WLxHhWMPNFtoUDb8/72EfKDGdzQ7UKWYLWjBBokEIv8w7MmBC3
	 dSmvXDTr6mUULwkHGtyyGUYJWXyg3sHr4o8fk3/oP41sKFpSedFcC10fqZvh6/WOsb
	 1cOZmSaVmAVGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0609C61DD6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806183368.18966.17899802874863561441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 417fb5a5de2e1399c87a7915ac6f992788e0c2c27c2c96420d563892d782929d
Date: Sun, 30 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788061833
