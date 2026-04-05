Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF862F069D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775424934; cv=none; b=XR3bIM3sthcSqenG31BoGLl+SM+0zk7OBimfeX+Ows+ieRbpiHLhj+Udayk9wNRqWmb4s5fhGBb27KSfrjwSKkeCzbt7IwsMLICXdutgcE8pAlVBvI7vWsSRTCaK7iTFgPoGBOMTd9lvUN8+w/jtAg9W8fkzM7oEYbyZf/yH8Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775424934; c=relaxed/simple;
	bh=k/h4xYhU3xH4oijYW879sJuMX0u96JwXdSKdlNIBZqc=;
	h=To:Subject:From:Message-Id:Date; b=LE7pAy2fXlOdjUX6fOeLLMF4ozETUc18ebWg6bjmvLNGEnRa5oUvHQzEVw/PJ86iZyyQElUOvi9X/+3GQtNelGn7iw9HRxcjBSkexLKjw+pL8y1EVs9Xb/3PA57373Lf3iUGURr+KfQtCwEVvAd3XVjSzdro3/kGHGteiznKAEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fK5IpDKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fK5IpDKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18EEC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775424933;
	bh=k/h4xYhU3xH4oijYW879sJuMX0u96JwXdSKdlNIBZqc=;
	h=To:Subject:From:Date:From;
	b=fK5IpDKxkVT29XA1N1kxiREN2eZA1w2H1aZ5QA03gWzWNWYmBcxvGRxdMeGMwVd18
	 NPPFR6js/VmiztBI2FOxZXXRlbTOnwRUTwV6QGMysDPbthifDF0kR2dTUb3ha9Y5Hj
	 SNLaf697mq74XuGdnRo6cD791NCDH6BjNREDomYickv96b7q04Tlfa4xZwhg7y9tYm
	 MdIAzhgKeqFThoxlepEMaEGugCMUqSOgDqxnymvWLoyNL9waVE1eTFnKlpF0viwax3
	 XAiuoSunneRvR7pHgP7WFeTaApBEy2mXHV8XhC5+4x4KHbLSj9NxSicNiQChNHxkT+
	 NFS2ABFQb+9OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF53E9D822
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542493368.25647.10530544138325771074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a550e90c10710de87e14ad932040fbf91dd8c2b5b2b355dae214b906e893e7ec
Date: Sun, 05 Apr 2026 21:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775424933
