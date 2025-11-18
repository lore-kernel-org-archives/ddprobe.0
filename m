Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107C42F691F
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763497315; cv=none; b=oHltBPQxGSPNAtzazOFWQ1HYvyUwzIOtnkGdLKnulXr9g3LPjopBd3rkQQi7r9fMl142WUICFIsPeQE1jFYY/XQ3nfEk9t3/t8qwSP6agMXcxeha73WtR4ZAQ1CSe9boR/nBDWhnhgx5d4hD6rbvQbkFmAnlhY8UyJvcutObubI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763497315; c=relaxed/simple;
	bh=gL8KG1kn1B37xShD6yChPsGfs83pi8MyBSnJ7CaAlcs=;
	h=To:Subject:From:Message-Id:Date; b=ScCtexe/Lz01NV/PH2kSpiWFomQfoGgLaUW1LehvJuOGNJ7TP3yuBVw3EE5WDIcb5EuQP9+EVECszLuzlPOt9qFFtrdDwONbH45FjZ+xL4r6NftkKepOg1F46AZOtfK1mXZCNwDJSAeo/yz9OJWwlOXE5pCNwX64yk3NeVspiBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1bjAcld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1bjAcld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6AD8C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763497313;
	bh=gL8KG1kn1B37xShD6yChPsGfs83pi8MyBSnJ7CaAlcs=;
	h=To:Subject:From:Date:From;
	b=E1bjAcldtflwsn/Vl91Tzkt8AqpDZ2a8/bFXq3WhNfJ0hyzLYAg/qgTR6xAJJReFA
	 o8Bg/kiEW8wRwUJrnPD0yBzJJT+j5s91AN2ECYO/jPns8R7elvOFAgbzJtrgNvll0b
	 hyMra3156D8nF5tKP/LFNwrq1ExEvx5J4XIAXgPUZq8AatWfM9s5Uen7djH8c9KDuP
	 HwDOnXa9LcjQyOCY2zCavoIWDuKwWimVC/g13r3mG6uxBcaVp0636eVF4dix1XgdzV
	 FEK9N5danM1qSZOoTuJny9tGT3h5WQ+M5GaQtrNEpwSstA9OyBUQ5q6xUn6w5FwN1F
	 M2eO/KaaDmbcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9094BCEE352
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349731358.9709.8327582467296186844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31b3cb6dfec6ed3152fd3ec6ecef0e2f2f0d8d93aeb98941db92c330705aa5cd
Date: Tue, 18 Nov 2025 20:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763497313
