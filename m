Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CC51B3949
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735827354; cv=none; b=hWSqjZymJ1NdpFVIeDG/UHQckz4A2xTNTukBuVXkRxFg7AtSpdgvgsVB3mwKAqZVnpXlQmfjhK3gMlEjFQb0C7QKWSNeABfVj2zpc1nfw4XGjIU0potSWyS6KfnhyEzPVqcUaXJlzXt5Hct3d24NHcMhL0VHADXLtsyXobC/wwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735827354; c=relaxed/simple;
	bh=+REKkzBa996LJdu+VONafpWDFEALePAq6S53OcB4Cn4=;
	h=To:Subject:From:Message-Id:Date; b=OQCY6R+kDDCBvx8Aeajs7ih9HNwMOXsKiHZtrknBVM16vEhJ1BF191UJctfZIhKvnnmehDKuiGNWyRXbq4cX5pm/GNAx22j3Z/CD/aYySiUTnl2g+1UmfKFD4yLf2D4I3c5v17hqnKzteyXZfPP2zc79iDrmpxN1FJ1r9XT3sn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYDgV7Wo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYDgV7Wo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7B8C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735827353;
	bh=+REKkzBa996LJdu+VONafpWDFEALePAq6S53OcB4Cn4=;
	h=To:Subject:From:Date:From;
	b=ZYDgV7WoXkec9PFiHQkxN2DomxCvA34TgsYVZiMY0RKuIoOGZP/dVLP3jbhjpX2QA
	 F3zsp1Pc8Utypua6SgsaPqAbCvFef9KqSlVBPCvz2dpPWV/tkeTqRtTStukn4RHAfU
	 jQcEgj9RJVxydXtlvIaUvHl55kimRr/sdtLrLZ2AfqQLydw1crAqKcxXkJhtWxta9q
	 scp4M9KuLIROJRT96leMYJbHLIQSWRCoEt/Je4yozNmbXEqN6xVt5SD97fKQ+h+MaD
	 VnJzt/yPxup2+CuBB/AZHzFd5UFAlw1JcQ4zCgqNLBIPqMcWleAwAuyz3U73hhKA/l
	 f9+/LHXih6XSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936F5E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173582735359.24850.10832846892969203313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60343e82da6118ada93059d1ac48497aa9ed1abe832d042d0ee5be2238e4361
Date: Thu, 02 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735827353
