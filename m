Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 956D93B42D1
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785441034; cv=none; b=Cgi/exblSLVL3xEYDmK42wrUpBo23kDeuaHAjPaWKPfcb13vJwkjG+qU6IeT9lzGIs1drxSYyiRyF4jeogmxlkA9qIp50vhlcve6nfMviA2DFSxjmGvIqcUPhx+C9C+w7x6OHw+XEVIKHGBe5HFzi5VCoOn+wr2I0hh0Xq4kb00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785441034; c=relaxed/simple;
	bh=LHfJ9ljVpYhFF5MzPrnn6XPn9OOx9EWgnFaE4I75b3U=;
	h=To:Subject:From:Message-Id:Date; b=mfCyjgR4kggcfY5M4UR4FNwtZzLR1O1tqv+J+jMvQ4phjoe4Luvc7I7qK1IpBZt31empg9WiHyLFjlWYcJl3CsI8WERDE2Zj2pd9jQHEHaXYlYkbbY8tFAji+51mhfW2aehd34PXBoShc/U/Xl+Y0mdSdpW0YRyr1Lb+6XBPYSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLh/y0Y2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLh/y0Y2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB111C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785441033;
	bh=LHfJ9ljVpYhFF5MzPrnn6XPn9OOx9EWgnFaE4I75b3U=;
	h=To:Subject:From:Date:From;
	b=mLh/y0Y28EyEMd/RFCZ+2f4P8avBiFkEo7a4hAJAZSj2vbrCvU6sxe2oIlYQhN/JT
	 CEsz//AQGnA45I9Pl6CurU48fObzVn24kDPH5FwAn/aW8Zyht878uhRIFaO272h0pw
	 g4Zh31zw+OJ4u+FkjlsrXjnAnW+CmSe7xJtU60cr9KQxTrDYp6w8YvGmlruG5WzXV7
	 SwsE7Jwaw9E0TTN5gUgiNzKkMwvDtHbX0JTXcsges8GvpFNkYv8Jwyk9C6zSX1KTEK
	 gHDQzHbZS6ofIDWrom2aWAPAlryYatxdX2BADw1eGXxNS1cgcrknCXllbGbGiHzJ9H
	 olGkLeVPOPrPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ABEC5516E
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178544103368.6294.17052658239165530999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 440745e04542f4c11bcf83e9e26d26b139da06d868764112784b5bf0d59d0e0d
Date: Thu, 30 Jul 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785441033
