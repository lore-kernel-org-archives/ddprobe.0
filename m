Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F29625228D
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788129034; cv=none; b=rXPG+5rSGULy8KKjzdtxPxv8S2bfUAyE/nVhffl0cnK1PXDv9xZELAoZhU/TSz0ccErZmlreZqbJ3UUdRv3iGgJc1SHm4RvZWtITwDKAk+zZDC0lzh0zXxmI6BxjgMvWeisxpRx81GykXijUFV8GOZxTHrUwa5dA6QMGEhhz9TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788129034; c=relaxed/simple;
	bh=BxCkzKSIOWB9aDaByNZsC1gfdFXIof6275Mg2iDzX1w=;
	h=To:Subject:From:Message-Id:Date; b=mpmFeIJY014ggCRfR72xj5i9h5POuS4bz6ibixyGkRJbNzZ+lyCEOpifuF75RgVpnfUQ4Yha5rmsDmlL7ozDUGIiVlwJ0H/ajce4FIqxByEKZD0kMFAdFYpskNY+L9NNFb883GsE9ZVZTsehfZ0CyHnyGME11GIWhXbc7OFzdgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8xBDxDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8xBDxDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21FDC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788129033;
	bh=BxCkzKSIOWB9aDaByNZsC1gfdFXIof6275Mg2iDzX1w=;
	h=To:Subject:From:Date:From;
	b=l8xBDxDFMe2PoP3nsu80Zib1dKsiVpVwV90ktW3MEAzAoWoYRY3Oudq2/MIgz5sck
	 4msLqaWHD9uJv0U89czEVr714uLlmQo9mzs5JP7vXqmbQpOZy8EU025fZO6TYQFsrK
	 LUGmQYa9jEJqbTBy0MMD2YVkUzOHmL5y4JJ44JDVAZ2PUJsibpnWmDS+H8IZy1w12k
	 4THwIauHyUgRGPEI0IkRowJSJIbUgB3Ms4VOOwybyJ0Chf8gsx+cXDA2PaOw69FfMO
	 fH3h12Q3P7FOoKW6nP3J1EMJAgtmsHgAi3HbtgnGSJzDtm5KKI/qLGVAurZqN+jSnB
	 uhCTyVgs1Zj6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA8AC61DE8
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812903368.29409.5813257884692560635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c158bff0928aa093bfe6da693aa04902cd85623a6c236e082aec64a65d71e007
Date: Sun, 30 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788129033
