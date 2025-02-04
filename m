Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AF0216617
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738690554; cv=none; b=UfNYCZiDpSsnAczHWBRsEBHf1XTJTMy1/6LhrIYtnIMayMfbouCSphlqts8kz2AjKZ0p2YU95xla/t80fwvDZXFlIUXySrBUKtI+23dPz30gk3hXSocB7XLUpTG7Tnmab4B07RjReJGyE25T4O7exOC34AVeRx964bg4W6+4WJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738690554; c=relaxed/simple;
	bh=ldK/p0OqqvSw6lAb4kG1IwqUTHKlEswyT2YOQXc+mAo=;
	h=To:Subject:From:Message-Id:Date; b=dwUM12x5vyt7Qdf9WWCqcYcbPiSrHe0CNd4+XkGgOZ700803t3Z67FeFpzyknVckHeQaDDRRJHlRJmd20vxaYR5WFfmaIB9Gku8fvQ2B3Gak12bNrFJQIGBe1Pc0/VNNwHcCWEyZGn9MfBaFCVIWjODColLedqkPbMCSi4qrsQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hlhy4BNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hlhy4BNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC65C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738690553;
	bh=ldK/p0OqqvSw6lAb4kG1IwqUTHKlEswyT2YOQXc+mAo=;
	h=To:Subject:From:Date:From;
	b=Hlhy4BNpiKKNP6SUE7xDyWXwfbXQYeIWLcwai5EYTc+A7qC4ksqubZDdXz/MV/7Tz
	 rN9IThhVGy9nY7MRvuoNK5hHltcn1jmfdPplTDS8gXwH3bXlUlFW1IHm0OdIEWWrD9
	 NKg+sERgeSi5giA/mk3/0PI84/L+Vu40k/2tLcFcEWfl8ijsPwi6BmKz+kqs6U4h3T
	 32coqg1cy0+KBtNh9xv0+ppkibSM2Pn46JCQkIGoPBLTEt4+2VmlHTyKby6Ugs2OIA
	 duZ9e34k8dlcX8vT4h9d2JQAyp39aJwBPB0l7iTsUeV1Rh8ag1grnmEfUoGPF1fV++
	 OwwugRK5t1d7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4860C02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173869055365.15137.16076955319866042195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 469b6d57b0587100e9d3fdf2621ff235babc7ab486b0736b19b5e365599f7774
Date: Tue, 04 Feb 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738690553
