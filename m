Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484E41EEE6
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779578554; cv=none; b=N2woJVe62R7U7E0P9DvobWOiY9V7Co39IpypxTO7OWM1E5e4MqDduq3RzJKLRQ8taqQrVnWRk9I1ENKwHlOnDsk5PxfqpIvQg4HZtvML7yRQPvVaiEg7fcANmJhrnhJUhRxZZCfRByCPAm1qKeeppeIU/lG0IAQPTt8IKApCavc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779578554; c=relaxed/simple;
	bh=hn6vzgHcuScu62Lt/9b5vJDH4QiXSnCQokQOzYt527Y=;
	h=To:Subject:From:Message-Id:Date; b=tPXIVdMTfpI23Va49UzUfBWIcdQbPBwnHZxxHl5+LGcnIuJm56ZEBlEyogcqdkGdQ1hrrBK9syqN12fW3/FiqBRatFw1H+x/C5R5qKB2CdwbwQLjdcUU62G900feIv4S5kGc83LAZ0tzW54MxS81wJdSYCwC1TLbPY07L3BfBRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXfAcwE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXfAcwE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D2CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779578553;
	bh=hn6vzgHcuScu62Lt/9b5vJDH4QiXSnCQokQOzYt527Y=;
	h=To:Subject:From:Date:From;
	b=gXfAcwE1EajGzjj+GY4Q+fAw7zPyT2XNswRhcsergX4rhc8xaMra1hNYDPjjpXo3+
	 R7BgeKQLocz6txwHXlrTmR7x6XhMOQy3uscTX5d5g8I1zWyho6oCoFqDZoy62ACwLF
	 Axsv0J/dga3nkG/gVJ5E5nJD9x9ikNhHHzj+cbKizUb6jFLcjGGJm61F+qPP4o+mAC
	 C/+jBw5RAbK5KCJ0+KxRNzp4J9TeipnTR00VmBZwecKdrYalAaSBjaTxWphjjnIPYb
	 LY1Sq2EJ4edtn0K9KYLwHDNC4QKM1UblpNaqXPpCjsRG20xvCWAOu/G4E3tAWVDT+p
	 D0jZmz1zgUrRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBADCD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957855368.28858.7581187595782710086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcaf3d449eef08ec9a3d7ccbdedd3db7b92253e03a1a9210c0914774cd67bc9d
Date: Sat, 23 May 2026 23:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779578553
