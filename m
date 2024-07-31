Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D05481CD
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722426354; cv=none; b=RIdu0PM1oQbo6msRtsufLRnynnJjOf3nUgFqqJv8jML9y8EG1GB1sxosykTP3h111e3JFErP7BsVbww7UUWGOHkFaBs7P/vLtuCUEZ9yM1+ktx5ciOqeY2VXdgZHg8n6kTDseBF+hE9xO9UcYu7UBf4je7Co79SRNKNYWTKn10c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722426354; c=relaxed/simple;
	bh=TUJBlN1SwYRh2C665BeO9bW7ie7pYGn9fqkJJb/r5YM=;
	h=To:Subject:From:Message-Id:Date; b=j6uOjvAI+XD10FbP3VUaSedaKoGx6SFO4qC14Sp4i+UWShJ/P06llmyFne6p8JikAMsv4+H3TM4pQzzgl/EAaW4P5anNOpbXQIPFlnJq4urO/uyyPvfSFE+tW13MPsfFLsm1LknqrPLmXmbw1TgsJQSpgF/T+fo+Txu2vEGKf5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smsJHG8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smsJHG8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4031C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722426353;
	bh=TUJBlN1SwYRh2C665BeO9bW7ie7pYGn9fqkJJb/r5YM=;
	h=To:Subject:From:Date:From;
	b=smsJHG8X231aWQWZaAfKMuNFrjaHIsmw0oh5aAlADfDpSA1YRcROpR/2GPUBA2SKW
	 r5AxRFXnRodHL4t20eMSsG87s3uvyFCtO7uIkXmMEVWwNo1ZmA7K0v2Of6uyNSxPAh
	 +QX8Au7kA9RGXhnGnfKCRurCfvvHUBO2fZVkrQc+h+SL0qpKJs/yXXwiL6N20OaDND
	 0JbHBDh93E99J02qrAVRsTqfcx8y1+CF3Rbt8MmxvpfPMAEFXgu+zeGJFKkxQej/Qb
	 kh3okLKoUNJNSm2u9/ZX3v/GKUCFG2Kc4cwNPIZwtD3FcAODqM4wO8k8XYQMxsi0k+
	 j61E84A3sE5XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB5C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172242635358.16464.2014314972871241819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf7c66297c47dd2ae40c9657c1d770e948465446c647d02590ab32c4a1a66d4
Date: Wed, 31 Jul 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722426353
