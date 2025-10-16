Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D69A2741AB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760614794; cv=none; b=V+RlDupcVkUKmJawyX0zL2wGkYROnOZu5LlOX9oVI5PjHoJmmnM7PimL8qzeayKubfAVrb8G0QIYg9MqyZL6E/LObiwakMmIvkp20aYRqxBQXnytYt15j0dfpd2higyflZZA72jSxtuwLn2jwGf5+/xIn3OsDqM3kWE4QShSlUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760614794; c=relaxed/simple;
	bh=trfbQLfS8SJ+fhxRx4UY6CmRGaAH0/5mnHU84Fdths0=;
	h=To:Subject:From:Message-Id:Date; b=Qxl2rF8InK2hDKOQ/iua1mV/AdjmUg5FADbB/TCgmUjIxeHn637+g8PveGmVtlAWIVlvFoP1uKDPU0RPEnZyssqyNhQ059k/gzWbmYab4Tz6sdpPauYOPXwKgKs27LG5gdk30zYXphr8c7usc3dUild2wEVg09eI9IcbmWIGP9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9ooCJGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9ooCJGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38A2C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760614793;
	bh=trfbQLfS8SJ+fhxRx4UY6CmRGaAH0/5mnHU84Fdths0=;
	h=To:Subject:From:Date:From;
	b=s9ooCJGGYDHsfFiPRc7Nhfo/HZ9TJ1OpMbbuER0WGNRgL/RqqjwkOMhwOnEhDAYAP
	 N20voE4bJeAJYxQXYSv2q0V/5C3zN+pRCT6eRuf/ZqfgsTf9WKAY/9beZoXTj6iezb
	 RdbIB0gqtF7DubChfvi6dQIy+7L6jQZe+Pl1I/dimLQDDdd+/E4DzjFIxqS60o1SRS
	 XxiUplU3Kvli2b/fkjtbyFx3v7nfxnL9T+w9qNI8RJlmMAgEo0tWXL4u7oU0/xfLN/
	 ekMPTKuTi+AzMJGO09oI4iG1eM5R3k6Ix5D1RFxKHeUnzSt+AUvGEAulKYBwWRP7Ng
	 VY+p72aPOK4iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B8ECCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176061479358.20944.14729287840789053984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a00370912d3e714e38d300548c6cbc80bb9200d6eb4c6373ccbba7e3dbbcb3fa
Date: Thu, 16 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760614793
