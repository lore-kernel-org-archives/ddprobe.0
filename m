Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B791A2C0B
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764532974; cv=none; b=iwWQrKPQdaMWeC7j/RjhDieblG7nIuInpXCrxRS7iEXWWOECvxWf7c6IRKtwACXSQHKJOnsdY3dsIkLYuapn06hs4ULQAkw9tW28OipnU3Red/v8wxqstHBeni2+G5FOECHXj12eaNtMmgVWraJ381o61z7a4uBZEwdiOBEAr4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764532974; c=relaxed/simple;
	bh=89cJINOjRiaA5G3b2QWyf+NEN3KXn9B4I7APNQksoh4=;
	h=To:Subject:From:Message-Id:Date; b=pqHqL95b4Ny2sU/d+niejxVB0C1O18BrEtbo4byi0EuBEhpK0tug91rXgCdq7PSNazxkc4RAmxGmdtkVgs0b2W20VmdS25HsKaKAYuw95uwkboT+OoHDt1f8lAo5ooXwYb7EgbPvWTFPvDCtK8VxRw6h14tkb/78/LcxuhQ3Rj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LE0ZJQGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LE0ZJQGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D24C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764532973;
	bh=89cJINOjRiaA5G3b2QWyf+NEN3KXn9B4I7APNQksoh4=;
	h=To:Subject:From:Date:From;
	b=LE0ZJQGEHjK/NmLCFlilrAj1p26c8C8r0eZo1d5b9rbbQ1OIAaH9m7hYJinoMsPYz
	 0ljotCOGO74UugGezjvq4iKvtSWCGfHrqKqKoXWyOBv1CXy9GKvFkqXEOtgkr1yUF5
	 Pn045+Da7zfo65iH/wJMXh4ZMR9tLk5kYJvytMo8HTCwOexPLSx4mti4qnJ+1JsiU4
	 cU51QR22J9de9hgsBgltK1Z8sQKWXbz6a1L1V/4QxioI2BaH6Zu06LPmsnYzG3hxuu
	 pLrzhaREGBqX2XDZbPF05/dArtQIYezF9e/caGJKQFrJdRfDS2NE70uOdqSbLE8LCZ
	 NfNEaHDS6WlDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9585FCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176453297360.3736.7542833063434947428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11eb7e8f49dc24bc37c933834be7608ad08bf75f5c756725995898d01f300cd6
Date: Sun, 30 Nov 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764532973
