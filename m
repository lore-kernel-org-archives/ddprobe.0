Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAC9215077
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760047194; cv=none; b=TSow7rqPWgViJw2W/tEWo3FclTZxfSriTlwTZGD0KaKlV2yedpRJOelENxwRvNEl+rqORH/YHfZWzFvfTVoliAp/wOe4BJzrUo2m0J/x0VQJTWc89W2vumA7tkuildyEjOEkbJVpUfHI3x+prQkWan1GF9n3ookjGyiseG2GR88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760047194; c=relaxed/simple;
	bh=X6sqxOeBX6LJ1xTnGFDNOI6qIpTOTtvqg4gBBM37RxQ=;
	h=To:Subject:From:Message-Id:Date; b=BzxA6BeRNmn03QQN4rdMKQ85ApsGoBVfj1iUf9PXP/YW4EXDINSxtBUW6WREmyH7KkSEdXXo3DwKlfZak2KY2+Bq0Tf11Q3uRIerewW7Ta2NGIWzJH0NXtnv2EclCi3qIBUC1vlCFW0KSmEUYohB5ZEH4ipTCoYNZM4zsS+qE9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKB/pAoW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKB/pAoW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17C3C4CEF8
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760047193;
	bh=X6sqxOeBX6LJ1xTnGFDNOI6qIpTOTtvqg4gBBM37RxQ=;
	h=To:Subject:From:Date:From;
	b=AKB/pAoWcg4qr0+ej/VquX4qcoUEVshq1sA9AxTyel7cinCGRE+iISe8HQaxYURWZ
	 CqOyDgGrZ/kFJv2MGenEiVujhjFqeWI4MwKc0L2GNwhQDS85souYKcb7HjGe6bSddy
	 a0e8QaQHGX9dlR1byib3Oim4RCgcV4iUCoNHmi7MbTjshiE/UbXPWaj3rn7jPNHZ3L
	 /2iBU/hj5RaY0KLZ5RP71vIXr7liMqNe8PxfxrNMRUAHfb0nZP6YDs/wmZ+3fB35vZ
	 ge5pdLbeJalYVY+Z9vMi+G6U74KABQGretE5+5QuNvXtCt8ZwhElEBcoM+1Tm/0HeF
	 XYNd30mQR+pFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE70CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176004719357.8362.2712270023129893192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c046a96c8c4c1159dd7cf2b467c75ca07925e1f4d54464746902471b081bd88
Date: Thu, 09 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760047193
