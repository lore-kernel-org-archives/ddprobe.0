Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147992FDC22
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757674794; cv=none; b=cstsWCNO+PD+VfF4I3VukQIucxt8TaWmqAHhJjEMAwjMRhlW6+YvtWsMFlKUVeyX4OCv9RSbzVu70riIfKS7HpHv068ObBGt8LQY08VbnptMc7ThNgZSzUYkG6Mx7vDNUZpROmVG19ePYT1/wUtOISkMeDhmb/pUcSpSTu/k5Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757674794; c=relaxed/simple;
	bh=dFJjlOXSHalWFIFMjBK+nslk+3FJx/Xgv/QSa1+b+K8=;
	h=To:Subject:From:Message-Id:Date; b=KmIW+5/6oWvUz2ctOS3SgJDEg5U8Z3b6poGh6zPXeu6t7gyVMZEipzYcYpRQRDx4CI05+j6yb/qRESNPgGG+H3UBTxatYY1S0l3fXBMTFO6er6sdQJ94VscHbkWEOuLJk/KyGHM/TO1QBYsZissBj68gjEzSNXKoaaAOy/HYVME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejEYU3dr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejEYU3dr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05D8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757674793;
	bh=dFJjlOXSHalWFIFMjBK+nslk+3FJx/Xgv/QSa1+b+K8=;
	h=To:Subject:From:Date:From;
	b=ejEYU3drn2Gf5Pa0a7+6U97LOKptwB+HPFuMjsBsWLy0F9WK64/+qxRGS0au0e3F6
	 sGId6lSjSp7oBcMUjWCCBWg6h3uOannJk6N6fGJZZZA06vkXhMEQPaOQ/Pd7XUyOB4
	 jXUxhZ1EPCqRg2dGMh17J3r4To1szWryoRQR04/l93nbUfsvpOoJCKpPQTkv5vWzv1
	 YcBLhHWJDcSA378hw1q5NiWpr2IuB/QpzFjPl0pGQuakk7h5XAjBvkcOsxYfEcCzef
	 wZN8XYC/7BIBw9rkpdTcnPsaUIKl5Q5D8kuz830CYKVrDMyAaASsw6gkerZpRNx59g
	 T3HznSSAlVElg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED4FCA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175767479357.31281.10475793541909315632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b442c54d3eed88ef23d2bde84cf33259deb56c6db7e0e72e36e9e1817f1f84d7
Date: Fri, 12 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757674793
