Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58322146A68
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728082554; cv=none; b=u10I9bMMppQUmKlcy+Fn/SV8Pd/Mb26Y042wpjzVotgboo0IeR3/AKatFzW5culbvvs78COMcWUBX2WXoKwJ8/p4ICRqvZHj4qBH6W95j9Urzda0LsAaeomEXZT8EfTCGZRR+7GOM3RrKWcWQhhaS4Rpk5KYt7OoeunoePDPIS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728082554; c=relaxed/simple;
	bh=lUpW1OFXbOmmo4eZifiXzsu5JHTbtPNNWq6JCN6GtdE=;
	h=To:Subject:From:Message-Id:Date; b=LJpxukA/OTyDna+/AvnI6ayuCLHrZhE+QkpoBk0QifJ94Z7z4JUu6+W6+q1902kIw4gDC5M/xSKLKoy0j/KugaMCxneV6rL67i8i4SzzkfR01F70/g1zWO/JjVhxopKlte9UWGCiOvcfHwucfU4ozyS3bLTxSHTp/E706+GdNL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsMqT3g3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsMqT3g3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DBCC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728082553;
	bh=lUpW1OFXbOmmo4eZifiXzsu5JHTbtPNNWq6JCN6GtdE=;
	h=To:Subject:From:Date:From;
	b=qsMqT3g3Nw3Pxh6j+kxFP+GJlOyMRvrjfHC1VGA9XklGQiiEbrXmTBFiXaDsGvm++
	 IIjdi60hbu9qvkwgF3uKCONB3a95bJmMENwWTL95VV1Hv/IUNS1Rj1WS/a1/i/knnt
	 IXKiY+LMJokioz+RGUz167MBg4Q/MWKerhBhdp5fBkNQcVVUwnE/vmQWN3KCheTzBC
	 Nmu9NeaOlUSWfUOJx8X4Jsne8mrsoeq0S5qJOdr7ijAXKK3csoGi+NSLNCkvpDJVvM
	 w1A4w5MQuhxiVg448SV2sFDjIIrvHlX0rRkNqsgGuthkJax/tjrhNuTOrSsgNvBH6o
	 ozwisOdzyIPPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0B9CF8852
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172808255367.29487.9676012466011347750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9356bb4c2e71b6ce07ed1f83dc24807ba7ef3dc1678feadebd2ed85a0c0fe375
Date: Fri, 04 Oct 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728082553
