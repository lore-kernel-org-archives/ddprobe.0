Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6169224DCF6
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792037434; cv=none; b=oSzaGeXMIpaN3612f3FhezMsIvhmTnpS5BtaH2c4WmaA2mFr/Qzr2io3E/HpyhXz3uW/lXcPdWZFegcID/IRXEtR8urZl7ebB2v0xhZbNyuMyYK0GSsXOY3TlrulXELV29gfx9EPfNer5tLyVhrQ8vNYWkYsiRxMYJ14W6Cm5yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792037434; c=relaxed/simple;
	bh=yXyjbQTQCjRFHvvMIgeyDEOCCqfko14NVM0lA27O95A=;
	h=To:Subject:From:Message-Id:Date; b=gxni33thO5eECzcApvFC1JTtPox7HCscIRSy1fQ7iRa9oVWliuoJIHyMjexx7UROyiKfyXoPpi9TZmWAm0ddkrWFlxDUIlPyYk0mkQb3zVsaS199IyEcTD4Ae4ffYs/vSmfkzeZ1b80RH3Wzx2SPquH5b26KMOf/WEYSogvpQzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvG4G9sv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvG4G9sv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7173C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792037433;
	bh=yXyjbQTQCjRFHvvMIgeyDEOCCqfko14NVM0lA27O95A=;
	h=To:Subject:From:Date:From;
	b=LvG4G9sv6W4obTBZxIB75S1MV/0cjq/3ncEY/hIx1FdalESBhWEcp85ZKd9Iao04o
	 UuOiwr3B/0OJB9raP1GZpXe04zLzkZuGQU7lREIjNHIhq8ZTj9Q0CodaYxoC5e0nX0
	 S669OMjWEaju7ISPTWIAkHIBdacNE/XLC6oBr7V4YJqwBySypl7U2SxvM/Q+i/0FDU
	 VdjFNUSzLvxakqmAVDMzFr2uoQ3C3W2ecmR0WhotG5Ho5M8i3BYUetYGWLthGgH3vP
	 hYEj1n/qWxVbE4xPiG7dYCX8Ngp+Q78KQtVaG+qjymaVF/D9e01SRcEaO4BlHYbBl2
	 Fj+j5S8E8uoFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39C4CC6B1C
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203743372.22272.7914714860487278167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9368fb072cc219841648e2026d0a0b0e3a3a53795f0600ab905ca1a5bd7a1ba
Date: Thu, 15 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792037433
