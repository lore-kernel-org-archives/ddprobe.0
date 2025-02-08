Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0172C6A3
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738998354; cv=none; b=duxMsD9mPOqmnBppIC/49Fb1OZY8b5u70NTMrvDig2Iy79tErQABZ2oE8I15M2Ukoe43sDCXYI9xurK9Sbc8PlxIcULdN1JUVJsFiCgP0dCtbFN4HZJMDb7ybuXAz0YCrA0ZG0bGXD6w96jAqt/wTw3mmRXnORQfdKh7AdDgpMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738998354; c=relaxed/simple;
	bh=W8jqQhyIUfiUfwGcZ5oOwI/lG60L/hInZTpCiSNLRSo=;
	h=To:Subject:From:Message-Id:Date; b=gdVY/ZWSAxB9+k6/UBk81clK08uyJuHXZ4dGNhEfpmnR8uAkDojFfUcbzCIZIoL7tknqVCWcIhIuimcNtV/Da+owdC0E4Kn5Q57qYjU1ruaYRMEllkz/yunYnXxP69SURQ8+gsO/3TgM2uQA3Sy96RwBRupJI55wlOzmXYX9IqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrxDR/ZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrxDR/ZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF535C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738998353;
	bh=W8jqQhyIUfiUfwGcZ5oOwI/lG60L/hInZTpCiSNLRSo=;
	h=To:Subject:From:Date:From;
	b=jrxDR/ZXDGn1IGN6UCH9m6m07P4IodgRflxTPOYMz3qPRfGw3vghmdthiJcL6Z4PS
	 m1TV41tTsWdRfqK2xkVBHP4ownd0Vvx8LpJzAsLWOvwZnHoopFiDevWeTwLv5gcEqU
	 xm+/MwRBKZGjgUlGF43Ir7B+OVPgpDhP4sZyqJCDUeYawUs8pLWcuNlOjmkM5gcuyp
	 +0AWzDbHUBf/OeQmnMF4e2RY1qV1OSmlypaAbmME7FIL6LJHu9ct2tdtB0El6V7dqT
	 exLz/qDjbvurtnZXJHmU5750viFghC+Ul0ZlYt5Tdd3ajpojeFngR8Tfbn4Rf42WSZ
	 jDEfxp2cuSw6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB779C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173899835363.21256.4040113222495603196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fadf267c7f8b6046f54f946249ca19219fec60e9808736807bbad84ff8b0fef7
Date: Sat, 08 Feb 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738998353
