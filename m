Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19944C144
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706322497; cv=none; b=P9GgiGBuzSf2y4WHX+n91dAPDvkAQvCAS0z2riGpTDewXIAN/YZOJC3yYyTS6JauxRbANVK8PNUCF4e6X1EuJU07xcgIVXnMIvzEgFCT7KkjpIN1BZbzYxkuFUTaKiYN2YGqmjq5ZgB2kld5QcO7MIsZK2hYGvSUBAnkr2ppicc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706322497; c=relaxed/simple;
	bh=NBZZuqRW7dFCenAsQ5nd5/XAy6zbjvJIE+nP6Lzxg2c=;
	h=To:Subject:From:Message-Id:Date; b=OV3MvKIAnGxfDAbCnLysI8mJ+LQXLVIsuv1i3c5WqjNCzJZmmTtmhkxouvGHVhFEIPy4ZlTovddcD8OUpmBeFeayIariUfrImiiHftj4IBabE+o1XOHMgGaDjW4dF9e4VbiOWmQyqiRFx33eIPqSlENu5tx6XBk+yriFHLOcO7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxXuRghS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxXuRghS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B89C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706322496;
	bh=NBZZuqRW7dFCenAsQ5nd5/XAy6zbjvJIE+nP6Lzxg2c=;
	h=To:Subject:From:Date:From;
	b=OxXuRghS4QqOUEKGS9HVswgcgqeUWK3RSUK5COJT2MlaDqRtRbLl6ZYWUOgyN+MJo
	 FJREAGOzrQH/OenCiB3ii0AYBiy1pzBffXvRWiPSgadg8tfJgP8gwB1nhRQtFKt67n
	 GhJsFLV2h0UOZ6ypljmxQQf+vUWQIaNn8Y1Tb2Y/6Impb6Kd3Su3RXupqmL0ncX5TG
	 mO4cDV+AKhai5DUw7/tOHIXcF/KFMtiFjs+RHjM7RaLxliDw2z8vsMOGyY+tDKBGhR
	 j1qkUAwa903goTx4q154LqB/KQ38eM8/DGg+Y6xyGG4ogRrGcDNCjjoqYPNC38CRoj
	 7LOxVhZ00YGJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AC56C47422
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170632249636.2474.12209508703578552636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfcc2a02875df4d725a279566f99844985a3ffb71fb581dff45b1bcb368c7f6f
Date: Sat, 27 Jan 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706322496
