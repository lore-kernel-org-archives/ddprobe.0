Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563A51D54D8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737753354; cv=none; b=BRxPbQmL0wQQZdEW6hJxcEYe9+cjWm4L7bSb+WthGud3SabAzribIFzDIqC6eoKHr+fZi0P6+SZGIfnFNybWj1AYPtgTuxqzUW9ESosgIRB4USw1439EbNK9+x9OGPqNQEXdS4x7YrmLwBmo2duaTni7WQH5Kg1hondp5HTEGvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737753354; c=relaxed/simple;
	bh=G/ezabH1CZe8TxHoRblCgVhVlY6cqQpouOmeq/Vy23M=;
	h=To:Subject:From:Message-Id:Date; b=GOXvpHegPRu2BlCcZFHpQakHVEuSFmsey522PPB6DcODdjUifcXUs9hYt0IDu62YYDzKCpvuP4kqxQPUta9+ayZSLXEG9yifo0yqgGskQeUV93E77ChTCKwMtsyHrKMrJU5hLrL6EjqXVQDaICMXVUUThlpXYU32F3/FIHDUlv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FC2W6HXp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FC2W6HXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CD7C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737753353;
	bh=G/ezabH1CZe8TxHoRblCgVhVlY6cqQpouOmeq/Vy23M=;
	h=To:Subject:From:Date:From;
	b=FC2W6HXphYmiW/7o5lEuvUR6KM05GaeyTVo717vCo3jNaoBJSyLfLihqFtgj5tgBj
	 65DkRTiXK9ntMYIv2AjZFYLLNeudPDB7GLdmUc8+kwTZGQPGzQiRITDpWtOietEpJP
	 HTPOWMEhi1ibigxEOFMGcWx2x4r2qhLwk5Pci+PLRuju+mZLddsulsxXSHdUqMU++S
	 7lpJ1xSW99/OL0ScVmkpQLw94kW8kPQFEtMOsG4Kyg8N6dM+NMMKbxhoBXlyd8/ZMG
	 aSk6H5WYRkTEGSSXTE7pUhN9qu2gsXOOt+w5zrE6Af8j0vfVkj6dkDy1yr/8ZXO5Xv
	 c/6RKOSz63rXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98169C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173775335361.6510.5080620932858390713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b98ae15c8f5145c74897633cf5046f39adac50b48340c569ff2bf21ae3a259c
Date: Fri, 24 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737753353
