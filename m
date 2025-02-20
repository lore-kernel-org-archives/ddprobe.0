Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F291F417D
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740052734; cv=none; b=lBAFKZOWcZIUE1lRf0kZ5X4cNhUGag2q3fDSqJShxUTbvCATUx+2Sn7T28niyrByiJ8h43tSdRObg5fbiBHeVhz0wy9/+cVMsHH0rPxmlB1Djt81jUFM3eslkfZyY2qh7GxsTXreHXs7MmYaJf5wTWUdAIq5ym5rRnZze9Hm3WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740052734; c=relaxed/simple;
	bh=UBAEOkEPIndxGOJhuFbdRODyhWi3/7tDk/BgoT+6rXM=;
	h=To:Subject:From:Message-Id:Date; b=tvEv2QsdHU1NFZSVzewKwCiV7hnJjFpYojmh0Hi7ZVHw1X5JAFPF4yzK239/xIdqDAK5EHy+2E77zlo9TlDjIIbiCtsWE+CO2D6POv2jeu64C7P30RJ02DAzBJ7gKlu5RTnlyXszWsfvBfT95QrniF+Plnm5bYdiE7gJmiBHbew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFU/XeWW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFU/XeWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF9FC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740052733;
	bh=UBAEOkEPIndxGOJhuFbdRODyhWi3/7tDk/BgoT+6rXM=;
	h=To:Subject:From:Date:From;
	b=PFU/XeWWLdJ5IMQppZc4GGVu6MPhPq+6YXbyNTVoNj37iADuelCqQUmm5ME+OVuD0
	 W5rp3f5VUniQjUOR3XSHnvrWdB2uPn1fsjw5KrnBweq9qBPHv+jAZaXFAtIxigjvwx
	 EMdTKmBxapinRs6vjlE2Vd+ZAvYwpgZs1QU2LMXw6kRckM+s96EYPyI8AjDjG+h/xY
	 6HcjOTUBu3Zmvi6lFUs/K2kqs/C24XzWoLpdKVuHvuMmlADNixOqo1MMV8YnhGlzXu
	 CDLONQY8w66tNr+QRl1QY2iGcWxG/2n6OUSJV83ciRUczUHjBRr0ii5qSUtpd+9wPH
	 3D7wVpFLpXUpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95096C021B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174005273359.521.9442609601367244006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570ba9c3fe74047c7a1b84f61e4e153ba2c685060c51ba2b989ea3b58adc4e8c
Date: Thu, 20 Feb 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740052733
