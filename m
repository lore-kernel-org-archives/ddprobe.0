Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDD817C214
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717082063; cv=none; b=AAaJG2snB35UP1Fw1j24yebkI5uk3tumIHHdQHlPfv2MLj6zqAPytHj3eZpTftyKWEu789BupLFMHlDx5f82KOSjjJH0ekUpUxq9YJkAsqSXcBg/XjGFIeJpmNFmURkHEGy+hoWNwPIfFKnPYgE8tV9b/PlxP1BSu2VpSIcmxLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717082063; c=relaxed/simple;
	bh=8xdybYOakZipQf7+SSI5xm9bhKxVLXzAAcGvvKAZaec=;
	h=To:Subject:From:Message-Id:Date; b=ToaSCTsnRpA3xXQjPyzc5MArK9Q1hh7QYZnFNSGdS9kcgjRYA8GbS4pynLPCGTVXjc+iIx8zjl6diLFNticoJbcAVpED226SH58AKHF21YltUir3QEuxeVcEzznfone6E+Vog3ipR0ri47bQb7o1/l4G6swNxElFrkXFyiDskHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elk0mD+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elk0mD+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE41C32782
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717082062;
	bh=8xdybYOakZipQf7+SSI5xm9bhKxVLXzAAcGvvKAZaec=;
	h=To:Subject:From:Date:From;
	b=elk0mD+F/iFXFJ5EZ4M3wxNJdv1I2KQ9hQk/hTCDQh/JxM8LSa35ryLsq8qMz8iWm
	 2mGrJkxZ8/zguOyPlRzAgMPPQIPVe8AnMluFx6Nfv2aJKpcPfrUq5bAzBcLqIqYUMo
	 pnwuIqJxcwpblAray2pKNkiZ1jE0E+7khLRjcCW70EoRHG992wA7j3dUx48kVt6zED
	 SdBNKBT+pZaMzhGfQ+gRXLdwCDhkaWhHZxg8434eIDj0rSdQy12x87hK83PaWFrSL+
	 02h9wwpFg9xaqWdR3GjTUiyQFNRuJl0YcDvg1+xwiEaBYrRgtfVFHM+p1t8+q3gE/o
	 SOWHG5VX2idPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BE7C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 15:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171708206281.23795.2588783058746677027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dab1caa8fbeb60439a1cbd461e897d1660336c160335ee804d6f41e319d7200
Date: Thu, 30 May 2024 15:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717082062
