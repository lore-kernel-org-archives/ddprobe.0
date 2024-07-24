Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3793714658F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721824554; cv=none; b=P/rxlag1ppn6aMGwjosm5VSqv1yO8SQPa55WggoTyvp+tAlxzv4aD21hftBLB7i3duAObhX+tsEjW+ZisM6LY7BcZ/xf/noQb3UalO/TR2TH+coNIdhNcJiqqAhQDT/ZrePxtF29jaGqKyweX2fJIZ5TcFv0oCsEyn2A5FTb+7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721824554; c=relaxed/simple;
	bh=kzZjubcEtoF/oVxf/iUMEtIyk7G+OcPDNG+QIcUIv78=;
	h=To:Subject:From:Message-Id:Date; b=FyT6N0PlZDHz/mP4aKeo7KQKqeYZs70YHxM6wzXXdKSsMoSqqUOUeUHLWxPzd1SuRxnBhbY8a6zmd66WCpoSYPZsjdtgeoeS4OMh3EOVqO826zs7wmSzgNRkqXnQjRZyuTjNgxhFGlTOk1A/j7AIgdeJzGc9OcqRbXCuwFCmaVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dANt9Bwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dANt9Bwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3D7C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721824553;
	bh=kzZjubcEtoF/oVxf/iUMEtIyk7G+OcPDNG+QIcUIv78=;
	h=To:Subject:From:Date:From;
	b=dANt9BweZ+LrNR+QWfN4kDkQqc3gdIkzATIK4QKcDEzBBa3Li/Jug3CLoOrLqnYeI
	 zuR1elqWqMqnIXZt850SJG+3A2B8wSD9yWaC4pzj6BgSu5ZTGEuXbIAnu+eKytaVTS
	 QbKFeiXoluj6ooe6y6HzmOFfQ+qbX6AbA/fFiuvetZYWKRnUHzNijiYoFerM3R1JPo
	 TGww39h8m715nru3uA45POrtpRNbVdG8mZH32/Kje4sA0p8C9HVrT2ZLf69zgl32VF
	 rO7lwGj0UAybOoPSCbHCNpV0oFwlS5S2YyUDxNmYLihrdu/Uh1AuGbo9Ks1Wuyu0IG
	 3h5XZUW3cxelw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E96C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172182455358.11479.4904395477439174686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e50bfc49c5fadecf81ce8f1d36c135f51482cbe7d7e6ad687e77accd3c0ab8
Date: Wed, 24 Jul 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721824553
