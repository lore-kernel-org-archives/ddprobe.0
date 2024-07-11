Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512D7288B5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 19:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720724843; cv=none; b=gZAfbv/vW09+ugM2ZBwZwV5qvkc3QSMGTIKjzxYZmx52zCxAe/R7MfpwswC2QxB1X65qHDNnoKfM7IB8Edvwi+nUwx9d+IpRErRaSqMsz8Dej7FmvLnogggodRMc9DORqRg02SeQysGgnrikTDn+qge8RveWhekDCQDQKZ6J96U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720724843; c=relaxed/simple;
	bh=Yz2/Nzj9QHGGUK3cC40vCiH8N92ihP7YQzPeXGUDT8I=;
	h=To:Subject:From:Message-Id:Date; b=o0KANW7Ut0xjMTkfPKa9QFfy3dg6MMJ5i/ANgn0/1FQAxZNJj3bV4ySxzprlHnv4clQgxk3LpIpJH/OCG0aECOGoDdArYkQnANhoVOHb0ioPxM+s0WPC6oSyhSvBEplZO3V2PHINouk5nDvJsttE3HfklKWQ0j9X5zzMEXvic8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmu4VaLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmu4VaLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4E4C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 19:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720724842;
	bh=Yz2/Nzj9QHGGUK3cC40vCiH8N92ihP7YQzPeXGUDT8I=;
	h=To:Subject:From:Date:From;
	b=hmu4VaLIxr/IlPAPw56YAemvi19LCjiB7xkC+puT6qm1Xp4MB/ejSuBqfDMC0bIyt
	 IC/+qade/GT9vwNA1bI5y87w2UGNb9GiU2/IZCeuLwp+l9ahwiq8EwbzKQ9qH2PB+k
	 n7Yb1OjaIeSBFmi8SKCT0E5CtLeWff2wc+WeDDifBS1eNfqedjmbiGo59TFB+qpdRl
	 XUY7LZvanK/C7PzXnMWJZsGeWK6cnjzYI8PRcZ9yZsn50VZzyOnbzlIcIyDEB9zwvq
	 MdGFKt8Oc+9vR84Spp1nzN8Y47Nbx44MQYnt0CifXE1e77mo/rAv+exvkYsBTZXzgp
	 Kn+h98umaH/FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F72C3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 19:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172072484277.27710.3769669637753325534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28586ea9321037dc467f403cfa2d3f2b5553050085d5124ce198f44dd795322e
Date: Thu, 11 Jul 2024 19:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720724842
