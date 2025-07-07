Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243277E9
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751850594; cv=none; b=ePL3GKcyr+Bwd7YJWtf9/ANdozECvA9qFfYXAPWTTge2yCLutVWqdkiYnb9fgV5b6or4qemNXGg159R+TLPBunDHNf2Bp0p4LbxV1XYkFXN0CJAFypvSfWyUAwS6q124hBQ+Zcx5RGSg1ezv3kSzZ7wOVSha94gK2rjRIXJwa4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751850594; c=relaxed/simple;
	bh=uLeesheUGOCaa/hwUnSRCE3iQQ9UkAZkLd4R/a5KjUo=;
	h=To:Subject:From:Message-Id:Date; b=FKjDsCNjLbMWxtHziDxMZiDKdgG6GnL5x1495bkrgnhxgWcvMc6kac3GjHFr3scHZDAjfRPXBX+NlNPAjRIbhupjDNCqBVs/fkurMY9tKdTUPd6iDcSLahEoAlJ3UDXC9qBkI4MbmcEN7ySSdqNDEd1v95bqdHf1dfPUvaBofMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IB6fnGAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IB6fnGAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54D5C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751850593;
	bh=uLeesheUGOCaa/hwUnSRCE3iQQ9UkAZkLd4R/a5KjUo=;
	h=To:Subject:From:Date:From;
	b=IB6fnGAoGPeLQt23cq83cI23G/uQi3Tqovmupe9pRH7O1E2MI1TQI8OJctVspnsjV
	 RHr5hTFgKAdYeCKEIsl92g2mLJGf2P+fQ4II1sciLaS/4ZPfE7DNdmzc+9zZwegkYN
	 6wG3H4yhx3Hr/B0n9QUzIFAY+lP7lreXtvvjv9JI4vLIjWt5C/56y1lhvYaNg/Sh7N
	 9koIUT54ir0hcLAA+x/vM1KxH3r4yhOVBnWFX3GAZGupwV7OhbLcj3S0RfHE3MBijo
	 rCUvFNJTX9szfu0eZbE3CyuhkObMsvpAuTP58d3dNUUe/B8Tg4zoj6CExzYOupdwJ2
	 dF/V3jntTX0xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913EFC83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175185059357.23325.3438709704641184293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc581d1ceafbf8a436d0d6178d6002f35fc775b2c538584f04ad496e5925591
Date: Mon, 07 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751850593
