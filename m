Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4AD84039
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783039714; cv=none; b=cGLFit41yhJNFlRB8kc+AjmWGGC+eX97L7GXLNvuoEGN8I2wlxPVNBtfZ8dywGzlIhAyzErFnmWlQTqNmHo5WJZYtE9VuEcXSQHKjdrYdH4KoU1o/grIfWokJuuOV2/RIbgCZtAij9fOhbYFbBFpe5IgG+enHLoXUNdttoPlads=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783039714; c=relaxed/simple;
	bh=hoZsOC24ncMtNrXbGzHrE83h/9sLNmtHJ+od/iwso40=;
	h=To:Subject:From:Message-Id:Date; b=KRFGhFRIAdwO/1zjEhpBjkHKwUTGGKwRD63qTTR7eR8lhRJGzpII/GYN0upQtx5z9AS5UFy5S6IlA/mdd3vbhvEAaYKKnL3xaohuahiihIoVdJACGHUkvO1h5OHliB/Z3YOk3aTUplHNiBJmsVDu4emKEIZDVzneDd19zeZvuQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLjKitgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLjKitgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB200C19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783039713;
	bh=hoZsOC24ncMtNrXbGzHrE83h/9sLNmtHJ+od/iwso40=;
	h=To:Subject:From:Date:From;
	b=eLjKitgo97w84K1BEwDTZsD2jVAAtmmVhq2Xx/eTGaIeCnh09w33Apipiq3gGPnoi
	 Zpze9tGE0ZqpLlBl+RC2JWeyOP/P7Un6O3+PwSos8DVt5rcYk7Zx5E+sbcOlRZg0YH
	 aa2zYUBdpMlt4QkSIyTnC36aPsfQXkm/bVNI0BtCrvaMVwfI1O/bco8ljXEmo3RX+/
	 TnoZF5c6IKNBrax8/3i1o6FJDCcYpg6oS7YYJWxwKuozu85TGMXpWGI4lxiyVC62V0
	 aaBHsyUxpetC8GaVNN8Bcn/nkNb9McPpm2JXviAaXC4DDlOEZ6Pb3mqSfudMnBIh9G
	 3IhSzI51Onwww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9434C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303971368.32767.14347469732645275485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 745936dcecfc234d6ff1fb0f654958cac80ce02db9181473bed1ea91c11b87ab
Date: Fri, 03 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783039713
