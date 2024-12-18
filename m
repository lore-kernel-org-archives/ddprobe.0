Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCD31547E2
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734541554; cv=none; b=j1wvuPjXDmu0FDL2vh8vcHfIR1uWpGAUVd/8kYxRfWp0+3B5PBgLoVEAcnoAjS/YHAVnW0AEWqUwy7Oj55hGHZQzZkHd/AsBS/XmQohLfkBmknY41DEC+aHs7DU4y3mrEf+D/Cr1SmcKpM6/Gn22ptTnl/Veo1dEltbcUGNFXOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734541554; c=relaxed/simple;
	bh=vilv6YaH20OFOjYe4WG8Lu0HQrU1jycZghGdeUpz0gk=;
	h=To:Subject:From:Message-Id:Date; b=DCfojRRAmgxwcKlX0rWR8W5dbAQ7IXJ2taqQ+XZAm9EzVTJc4eCLNCk7bIBNMNZSji3Spm871wA2IXpa7slpGu0XMEz1Z/3pZPz3r7yAnnFChmL/R6FAjdjGYa3OYqeuYsJokxa9XGu7ytI2vXNdhuu4nBcQ2EaQJBJM3/YNlxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=de1412JJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="de1412JJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DE6C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734541553;
	bh=vilv6YaH20OFOjYe4WG8Lu0HQrU1jycZghGdeUpz0gk=;
	h=To:Subject:From:Date:From;
	b=de1412JJnF6nsDc0movofaABx4E0iM5j/gaplh+kn3bhmfKr7m2LIuymGxF1ZGKe1
	 VfObFgLlRP6agKE55LQJZSMVDE/3KhQ7k6mbzZfbOVx7QScW4fTYnT/8jym1iuUOS1
	 f8EyACZayEY/S79wJAu3ifWekswN6B595h5HWPFy7IJh7WL3CX1LloEhsR3n9Y6nrz
	 R8TIMDpphdL8c9dlpiTO+2coV7ym47YVdw5aUHdIiSvbMq7kEB9Ee+tu+IKElSR7FA
	 TYa06NkPVw2oG3DlFpasm9WQccLKJWJRZGGYK5IEVhSbH8k9IMjQK9Evw8STaKyR2Q
	 oEh/kYg/SaGgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5ED6E77188
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173454155366.16588.191465827814680495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed956e91d7d555208615c7e92d7e7192c54b1416cd9d832c4f12594f154066c3
Date: Wed, 18 Dec 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734541553
