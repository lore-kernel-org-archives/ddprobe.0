Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A6C21B9C5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766946833; cv=none; b=ctk0iwuHO8YQHG79OE/UJXlBqBI83ICwhPmiAXzpyL0zFKvqfVklkaRY1B6p+0MxVBJxwE9PPtTm+vHXisFKthm1ppWLQgTMQNT0l2UeKehR9kWc5rio+5cxM5cAr0vBHvYHvuAAQvfLHjT+klpG17wdKJZJtTuTujw0lhbiEzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766946833; c=relaxed/simple;
	bh=p92kzMdTT5YLMK6rVvd+Gwvgg6WsYxrdSOG0kj3tdaY=;
	h=To:Subject:From:Message-Id:Date; b=P3sSyJwKmjncacvZzyAqVQrCSppeshypGhQIsRZjvgXx4g1fmWnJauMD/bulNIwri0moFUJsVFEcCC8I16v10fIfD/IBC7AsAoO3tshP8QWuQmeK4GZlrTSU3bs7CK9TdGd67IEiiMnLEOBqKKK2NCDsdIucy2Qt5lMUsAsHvB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nihp0phq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nihp0phq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A859DC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766946833;
	bh=p92kzMdTT5YLMK6rVvd+Gwvgg6WsYxrdSOG0kj3tdaY=;
	h=To:Subject:From:Date:From;
	b=Nihp0phqOOnAJL/LeII4djmShdR1Qt1vcAIYhC4htjTLqx84df9Ur8K6VCAHi7dJi
	 8QLuh9Bv2zOVZAvw1meNqwMlIHLbtgoM7bHGFg/f1B0qhIc2j7m5RV/kj3Kkw8mlPv
	 CQOVJi8PT4AXO/fA9+4iMWyP2kcSsg/j6qP2y27sYPjaL0jXwDX3q11L9JQnK8wXb5
	 GzLY0cR4IoA6+avuWvdMvpMnCE7dTo9eJJJolYHUN0Iyhyh8+Oil2sWbUSYRumLZaC
	 +hqdQJNWpcR3I5vHJ7GZGbvZKho/HEFE07dD0U+zPZ5cCkyMa9MPz7vrOXtqZbnpNn
	 0tIZhDz1HY/3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B22E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694683359.5528.16011894537598875330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e826a7f49f3cfbbb7e3c91e9e3be854a8c9c6652e26f04d878084d190598415e
Date: Sun, 28 Dec 2025 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766946833
