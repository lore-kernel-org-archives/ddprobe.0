Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA223A1A35
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792126834; cv=none; b=ATdPQXcTyikrlOBg/W6jOgQ1oDm0bKzbc3L3bAc1qidDPqD77gHgwqUWV3I/RMSaUZ65ZrqNoBALIJw958ptQ+cp39kzR5LuzutC7Qsug9memxWwiIJTwg/3BevEkaWSedqc+NEQ5KNzl7uIKiCFGqmbvkI+skqUNYLmHRtuEFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792126834; c=relaxed/simple;
	bh=uSkPQgEZrVM2Z5J7HudRPzAu0Gd+7AuHM2Lcfz7UIZ4=;
	h=To:Subject:From:Message-Id:Date; b=Ehdtco51bF0XoKNjad8AsSlSDvLtACS1dRaOBLrKEnHOoZ5gr8ClfaXpoUAPHeLKwH+967ReJ50rOYPL1OFwQIfYmYoJ0htnleFsp1+pDZXXW9LgsN8ZArhKRjzf6i80S26LApaG5ep3b2gUpX5DyMMZTAyCRYyg3GIh+QVKKJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pApJSMik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pApJSMik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1184C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792126833;
	bh=uSkPQgEZrVM2Z5J7HudRPzAu0Gd+7AuHM2Lcfz7UIZ4=;
	h=To:Subject:From:Date:From;
	b=pApJSMikHVtaFrKiArdS+Nn3+AbDReRthD0W0wcgevqqp/qFCUOwgZdTeJwBnbynG
	 HyTGjwT43tqGnY5CRGcMweFepx/x+GLbjK1AKyWOOtT2E0hd9MIAeMWB5jKGNWeXLZ
	 OqVML1x1GMZmtoZQ/j2j8O8Zuaa0F2b5ziGRRCHAss6YmM15w28WOnqt0qynLKN8dd
	 MtRnwK4FJyhkh7MQqRhexCpoJ1W0uOoihWbrE5VBP1ww9G1wcqxKG7b8L2SGbLQ/m5
	 ZeUciwd+Y499EXmwlSMXYWRTOmMJ9k8zexfCJq/hrOMNFptX9+oWY/xpm4+KK9/zsn
	 upDgs8dS3vrlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65FACC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212683371.14872.6353642176295769738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0b985d393035cef9d9b4a0137e50b469e4754e734ba4d2286a83d2e0791927
Date: Fri, 16 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792126833
