Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F7819C546
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751647794; cv=none; b=B3XYaQ1GlxGenR2534cWMYqoEUfMUoKV4FRP3gm0vu+RrD+GHDYU1WpM9eKTtaUL5YThLrTxhhP75bfbhZhheiVVAd/XhY9vPm5bO00ZWuOgUl9HSu1F+Pvpyn5A6dM65lfZL028yazo8SDDxlcw5DHY9NZudk1B9La4pmEN2Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751647794; c=relaxed/simple;
	bh=D0YqmW384rCYbyDUboXiscLCrGvYmenffZtRSNDJ2Y0=;
	h=To:Subject:From:Message-Id:Date; b=nOM3vBXhJwT0i3elOziVizdOCRD3mOu8IKFv44iasmA8yeknh3l4kRzp/Nru9xdukvnhz6bgxIQGirae6cnyf6Ib918fEfzEgK93daiLjQnHLh3472rvrkh6NxePK5grl+NRb4Rxb803XYenEXeh5wcNtGiF+m7GNIAYWAugMm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOMtxXtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOMtxXtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7F9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751647793;
	bh=D0YqmW384rCYbyDUboXiscLCrGvYmenffZtRSNDJ2Y0=;
	h=To:Subject:From:Date:From;
	b=kOMtxXtAX0Aqv/gYGKYhBPDYI+Rs+Vz9AaVSGBCnOT2aaIv782mswpAOtxazmjSMy
	 RzGSJLbl/+LM7Zv/7Gw38550c3Tv53IxNcKoYMX1q7nxp53lRwr4ICu5G8XLnF1zWR
	 jzi+39L4/ChKdUIqQ1DTSxjdxMdsWNOnvaENUF6u35QBNmWhUuDnTRKEyw+pasdY2J
	 VpJWZypbIuKLeP3wUbxmwDUkft3e6yWIy+bJ/IiLhEjqAPdZWJIp2vofR0Vz+RVbqg
	 otYNoJqKmaDl87oSjWjnlaSYYyfGXr/3L/a5ja7wlPVkGq5Q7qyUbcatPEwx1uuwc2
	 4KpqzRicMnC3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EECEC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175164779357.20732.12060408479530991472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95387161d6ee31990edc17270cf59f210c5f3373334138b9ac28fb3811bdc7f
Date: Fri, 04 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751647793
