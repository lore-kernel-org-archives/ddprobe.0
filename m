Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D9E86347
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761826794; cv=none; b=Tun9dsZEnHO8Q2mrs1VeskfkqrGFLAZSvRi5Bj/Jn9Fzh0OvNLjAga2l3vNOIYrj2wheIIzOq0pzkGfYrg17WgMWS9D4GAUJHBkXVHvY6Lxlm9EWE0s5nrRUI+2L2udaN5EnLoN5l05Os45Jm0cbngv0xZ+BxONekngwGsxqfys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761826794; c=relaxed/simple;
	bh=VTdWoICGP90sMAAMQxbwtHzEyIsBu0+sb7epyiynX2Y=;
	h=To:Subject:From:Message-Id:Date; b=NzFQIIcPzpcx2TvkHND2gPRvW0hLCz8R6l0SMUTNqOyLTYO/+TVAoTVRhYnMsP7Dv0epMsVdJP7qSFBA4yQAsFnOITiR7FAlD1iZOAvPR318MN3jefDh749HBm1SxNsJp6yh0ZKlpSTxdxTEdIyPlC7q49Pf8KSKv46OpqmMMDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIDjsbAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIDjsbAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CA9C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761826793;
	bh=VTdWoICGP90sMAAMQxbwtHzEyIsBu0+sb7epyiynX2Y=;
	h=To:Subject:From:Date:From;
	b=gIDjsbAmmWJMwR3Jp76PsihTL9eZnn9A+scuHqv8j364Y5m0/UjobbMgyoJEa29yW
	 BvM+9UNbOlOGz2DawPl2do2msqhfonsOXZK1BUw5IdNdps1tmJ14Dgj4QKn++cKSql
	 9wKH1q17wDBzKyCv5DHbj1AknZ96PO06QBuGWGiKQ2gNHM0x2MPgBXftO7jV1ny+LJ
	 uukWvnk1lapn1CuxZL7dJPOBxj3kp2gMMPoc5G86IGkEvYDzmiXA5RMh0v9ZADeYaM
	 hRNJ6sag3/T2enBndu5xTafRYj8ZWedej+InmZHLtt69a4XPXBIGzA+MfQ0LDJyyn1
	 2ToXtzirchPdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C5ACCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182679358.26917.12791447395087483990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4eef99a47a7cbf50f86e923a85570729d7c601a636c72c3c52075d32a61dbc
Date: Thu, 30 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761826793
