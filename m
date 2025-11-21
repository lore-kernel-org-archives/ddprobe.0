Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2658E2628D
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763699514; cv=none; b=cJH978CsFRrU5SMUu2ZwC5wqazFTvyLxD1BqdDEPnDDw9m2cc0iO72gyCq8J9pramkNqV2/J9e96JYs41ENJZHdcvvg8est92TsMdq3lan9NAThBroBg+cm/Swjju1qxsKYd2Gx1v+Br/zufE5HIicebieZ03nA+EVgQNCT0IB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763699514; c=relaxed/simple;
	bh=g227Guin38SsQXCttXemqMSnZFoacUCl+piSRtS0s4Q=;
	h=To:Subject:From:Message-Id:Date; b=TPaJ3+y9O/dh35s3YlhFmCDNqDjL/uEVOpfrGdLm+itss1TFLSGGlaKsfH17m+//VSJb49XR2x/nwm/gRmaK7NjRp1843GAaapq52PYD1toLFewZ8Yu2PNvkXLf5UkjWliJFLEzPJ9nPSf+9+7s/K4jotMUnLW0Mir1tGykU8Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mtgzux0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mtgzux0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D29C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763699513;
	bh=g227Guin38SsQXCttXemqMSnZFoacUCl+piSRtS0s4Q=;
	h=To:Subject:From:Date:From;
	b=Mtgzux0IER23KIabKUULifQEV1JzXLiCuol3CtQKU6gcyFwTFxMS4Lj1dotNQl6JC
	 MqaTWURucsOGq2oWgo/zurcD0i5PAqdvEOdyFG9aHdmfQmXAZDlnfoBjXhOYGOcy1t
	 7hMhIIZCPZtzFBqoJA/7GROdeHDpTz6TLJj1hcQtE4RkuIVpVfe96LiIQ4OYAiaUZJ
	 KY7DesG4nod6bQ6eeOA03GaDi7uGb+ha0s1fkTQ14BJ3GxiHle3YD95EME6C+0kyRi
	 T8eGJjwgCeY1BcnBUzMAOV7ho+v+GOGKy+EgTB+7lclrPM6RGzMs1/mE33RxRARMBW
	 RgDf1SkDkzIWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A052FCFA46E
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176369951359.14636.7938891630518725170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea546dbf5bda8c123a7fc7ac204c5000a94271c970cb4e0946b707515ab044a
Date: Fri, 21 Nov 2025 04:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763699513
