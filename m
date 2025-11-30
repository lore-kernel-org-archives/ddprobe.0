Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370CE1373
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764497574; cv=none; b=HmwiEUeA/NqR3ZXrGN3XGP4edSZ+QXxFztf6QZYURqcojuQSXYH++e+FbUm/KN/UjrBIN+jJf8F9A0PL48/OtqgD4ascnQ0zGQKOgGVTd6trpBiN+4ZlITqbw7VvOITwlgl+Ehz0uopq8G7rRXV89LJUmFRBWc48lndwBCQcZm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764497574; c=relaxed/simple;
	bh=ju4ZQWXezdEAJUNVT5EwOyrOS6EkMHmmwh4a3u32mM8=;
	h=To:Subject:From:Message-Id:Date; b=Yb5xBWvmbV49bTLopZuJYHQeYZyF8LRk3KGdFWiA7riTqPPvxNGr9P22r3wevlaSo8i6q2fOriVJzmf24GRTJiApwgC2/sFAGdUwQ78WIknBrtoNmbMQNdlMqWb01l2pPKXNjqpfUBsbW9oT94sLEVQMbuydEh544+Xik3eKsj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCSamFgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCSamFgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B135EC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764497573;
	bh=ju4ZQWXezdEAJUNVT5EwOyrOS6EkMHmmwh4a3u32mM8=;
	h=To:Subject:From:Date:From;
	b=DCSamFgM9LMjsevS3+QwWqEzTHgK+GYtuMSdC2Js6e2VT7/KBz+ZpZn81oqxURHka
	 Da4tgjFKhurzfR4M3VvSwGjE2Sl4sMIu4g3LWTYgV7snBqLSYiiyf5tB9ZdF72CRDQ
	 1P9q5CtkYYP7GgIPNl+Jyhg8MkUzr92jJ5CA695etr7XrC3/GJ+WKjNcyzvqQGXK3c
	 iftAv5ntBwYDDM2Mwqd2x1KwJoVF1kSUNGCTJyyLb3Zotn99wOG+ftSwcuQkHvP2/q
	 zIcDZ6GXAzAT0TvhDAfOAdSiIB8yBTP/zOeL4o9p1R+1DlSeXx/HJIn+Ls8IS25TSY
	 1g/R7YL47TXrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B296CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449757359.10094.11517320575030316717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a20ed4ce0a8092e555cc39287867e1603e6f1793fe3aa227a9744a08431e1b
Date: Sun, 30 Nov 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764497573
