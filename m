Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464F07464
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747874394; cv=none; b=aQh04wZALbKP1HUNZig0lKJInASKtzbuH1yGOS3EZzf6GDcSVKsOrZX2QWxdBNUsVyKOkolcyFyZdaf+kbU8CPZkbAlzLOyHsMa55xf1QwxGl3IePbJxTA93sC1ykJ+iHpom0z2fG9+RLQLuERuPLlYroXwtbZa5uoYB6IGziXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747874394; c=relaxed/simple;
	bh=o1Fr2ok+jWQeNK7egPzVfc4r0ds3amDUN5YhFMCvJAw=;
	h=To:Subject:From:Message-Id:Date; b=GzereAyQ6BDHwBXOflWiyus2lh9SENy0JMVaLF0m7TQShrAmtfCl2uv2rkf4VAGnvJ58NU1m8S+G/3Vxat9iDf5NwpA4Yy7TBEgxYs6ixAHDPmEhjmwK7/q19yioNzDU7vNiyl3KM5blXnGaEpHeTPpdGRqSEstwhUA+66JmCUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoXYKEqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoXYKEqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BF5C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747874393;
	bh=o1Fr2ok+jWQeNK7egPzVfc4r0ds3amDUN5YhFMCvJAw=;
	h=To:Subject:From:Date:From;
	b=hoXYKEqpv0AOKXY63mKQ5efJDpIKm5ikgxQWAORFZGA7ZlkGbXEbhoH1FFZX8zylV
	 z9eRaMcEHrrQuM2+70/hIpPDbDIyhkDs8BhwFxz/36JOFeMqdgzj6kiSTAzt4xB+TC
	 ZosIlFX93kIfbhHpOXojvBeSc407GswhifRYN/0lorKcBqpfzef+RSdJA1RuDxKY0O
	 nUgjVDOIWeMPSd6SQ3cMSvBcHSn2VebmIDuExHdBb+s/EP8gRym7o1gJRNqEIK6CaI
	 M7kHGDty/QQNEJpXsw2clgeiFWAvWnaao6VfBnxFx6AQyyfzlSfeTGOb0pBTd3FGmU
	 UZuR2Y8xG1Fhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95310C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787439357.1515.18247833890026506527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b56ef73c6e71b72ca8ab5452fa4e6e49faa511fa8b760d868e144d79c840db
Date: Thu, 22 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747874393
