Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A98C1A0BC5
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750542594; cv=none; b=BBkMSmcB7BtnKu8Eh7MzQTb5NQtWOpoi5FPrFg7KGuv7y2YuNmcUmPPpvODnGf6tnzWk08LZ7GEzUKTuqo0UmimsKe2Oo9xf0vTc4k9UE03EW9fJRgglJXrXZXfCI9S4wEkfd7N0Uyh2FWJiRV0KnO6/ycXl/wQEIFG9q/Ajcb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750542594; c=relaxed/simple;
	bh=htCnMegcxApMDnYmGL5pwoDDK/AqE4HS9EgQAdtcQGY=;
	h=To:Subject:From:Message-Id:Date; b=C4YOQkMOforTj0Nviwj+/1mRiYufJsKIcgk3cuANIAos/4JRXHGfjaS9jWoB9CDcCuVRiABHZF185y6YQhFyN0RXtptTDWcYxjb1gbzlMptV9sPiyhrgCRgP12j4Eb1tNpIp7r/qWISwvtecWCaXQwka6Kdzun3/zoGA4ldD9D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjZBdZT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjZBdZT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B60C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750542593;
	bh=htCnMegcxApMDnYmGL5pwoDDK/AqE4HS9EgQAdtcQGY=;
	h=To:Subject:From:Date:From;
	b=kjZBdZT7QsjNl3PQNRjZjzgYkqBEdJ4W8cevzOYfpYCC5lYyrVISQIEZ1thqcJ/jm
	 IEbb2p12migISpU4tY/v35uzjwCjm2tg9WVUvpQUcfafpT8g1VcOQ7kD1L4SqNLBL4
	 rkq3h7upYq3yZy5Vw/szSCslP9KUXpyTfydsUAihylts0HLSft3b+vZaUitz2KnxAX
	 l1ej4osoIInKoRYLY3kKZo9vfWIumsdHv36Yza7LratHACqI9lhsQUcilUEr4tPmO1
	 IvRulRWyNzOQR1/+UP1jLCKQs7av++qZheBaFJRykQJS1YZAZDKRtiVixTSyoUXIjS
	 uLNefc4owj7Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9218BC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054259357.4017.3935093087639056091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b4a1130ef0242de6ad0431d25c31c7a18d7b3803a6b7e50a05f834487fb22d
Date: Sat, 21 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750542593
