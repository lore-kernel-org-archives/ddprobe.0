Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E0F3F4DD2
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787565634; cv=none; b=MqmtoS6phHhjOd+h6DPCoOzwlOXXW7gBI6ruXK3FXzq+b/6SxEqqG0IuDaZKoRmpkIJFQebdl/m/RfifJVIFWe9zdhqnjFqfYk6lbd39Pcuj86WBKg+GgLSNLvvk+V2kprbfy7MViWQoSbCV08JQf8Ch7GpqcMLm5SdkLoq2Fas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787565634; c=relaxed/simple;
	bh=TJyoB3cFMA6gSKTdnMMwzr8Ca4TX3cI++8tD8hWdDqs=;
	h=To:Subject:From:Message-Id:Date; b=ISvZHuF8T9PwUGhNMxS2G6/w60jM4LwzXlAjTMC1Cjek/KpbMCi6K7tC04kRQyAvPBp+CJvhVlR+pgYtWtrQvqa9WgRF7fD9jik/eAHk8aRanWiH6yMZADNZztXMrqagFAaSezaR2l1js4yTVCIQImt1jpxNGvsesUKzFmPb/5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYvy2Ib6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYvy2Ib6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE828C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787565633;
	bh=TJyoB3cFMA6gSKTdnMMwzr8Ca4TX3cI++8tD8hWdDqs=;
	h=To:Subject:From:Date:From;
	b=hYvy2Ib6YiQBJ4I/4s0PocYPdE71WKL2dUauh9Vw4M5cMNzEuQgtbl8coHZ2SR4t8
	 +iV2Ed/l/48RtVoiBQdgC/BAdzC2DD0We+ClzbBCF2gc3TW5DUVwH985EflvXeeT4r
	 SDEKV7oMQp9zJDGaqDwMlflSuiUWstWMvZnxhVoGFmjdCTOZa+xawXaprnsgXN7tIJ
	 2r082z6S0d9oJ0bK1Kzo0iAxLZ5YekTkDgeBWLnw3/hdALrl1uiBE+et94Fsp3p1o9
	 vVah5798/1c/TDK08J9DtomLQ2SXyF/tHyDixjXO75evBg7SI1G8gmg0GVUYIO8dRf
	 DGi8T12//n7zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB28C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756563369.14629.9599887573386102441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d0f8fde4a1766ed630f6480669a55426b747271313ed52ccec06336fd4ee2d
Date: Mon, 24 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787565633
