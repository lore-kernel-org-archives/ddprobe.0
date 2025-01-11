Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC1B219FF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736583954; cv=none; b=kJ7rB6P7ErHSAoNbkzDpS0JNIBAc3KUDooV0o2byECF4FgwTUxSVtlCbiLgM1dLQbcgkiMcjkjFVWsKAam6lWKi/nP7XNizBHJ8lXfZnAkh6/IcWeL0h1MywfijgPe22PCxZASyQBe3rJaOA5rHvyN0MmW7ClqrLlWZyMEqGxYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736583954; c=relaxed/simple;
	bh=DC23wzzty9r2Ba/aGwA49SJqCiOyLYSRGCrJAX5kCP4=;
	h=To:Subject:From:Message-Id:Date; b=oBLghc/kx+/hDOehM+P1Lr9EITHcz6YzgeKH/pyMx/dbeEvuMqHuUZNh5TRuWjEBOpcJFbv4PfN2BUKvmnY54Z+8lCAPbu/jN8e0qgDWMAxkugvbcsM6NgJJjBquLOa36FCwycJo6T45oBr0ul3CuX5jEmUfT3Zz1ZaD82FAXrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzrsOtK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzrsOtK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E68C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736583953;
	bh=DC23wzzty9r2Ba/aGwA49SJqCiOyLYSRGCrJAX5kCP4=;
	h=To:Subject:From:Date:From;
	b=ZzrsOtK0EVbWJ+yADO2AFH6vQOfSP6Rey2axG60mfW4cfJKNAFmZwWuUru3tuqQUt
	 vl4+IqGqjOzda/y5IC/ajm8inXU0pO6rROZHz7xWgMo3Qu6bvF8F1a67TMKKxlC/6Y
	 Y6YLzHHNDkKCl3dOAZFY4j6SjtzW89aE+jcLAKfhXzTqkBvRc/GFak07t2eTp7O1G5
	 k3jq40DadUE+E07Q5GoUIsRXWS9Wa/+87DQ1CbcYCcATRfBRaGTh/E7gDcKgpv2J9W
	 O4SSzoea3V/S7b79xPZrnAcr9tfikYoUt5fbb/60kct8Awd3Ml6XYntvdkfO3dNqVW
	 WS2THmzr8rXIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F1CE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173658395357.29008.9641976353153338596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5359253b18fb2c055de7d64c4d3b827e3c13c0b6f422dc2ba73431e67a6f34bc
Date: Sat, 11 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736583953
