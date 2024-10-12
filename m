Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211B223D7
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728695154; cv=none; b=qPQd2dV+POkDXsIYrntcapiMuyorJ8xX2V7+9lh2Ji6epHXp/NaC8vWukgZoRChLMQt/WvLISzN5BI10j6i6d+lVkivYbTUGAvXsqtQ3Vj3k1fCLGrlC7CjqoNr3PuIdW41wcMCcb2lOcwUzpHXPqclZGsg/MfUSe811HzGXDF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728695154; c=relaxed/simple;
	bh=qJUtUcD0qi3YRnXzcv3r4JIVZn3GxRaGIgmMRzJlraE=;
	h=To:Subject:From:Message-Id:Date; b=d6tYp004pHqJ+gKVZXvTAXsQ/EJdX2SDWozmaTeKK3Pk1oFRM9TfA9rlE+l9ycAagPKWhhODVg0eQ9KQn7djWDhwdD12EfBaqbsbJ/bh4GXR7YSmhZyR03E6gw71OsP7wPvCi4Xwe/qXpWtVIWHPO3JPGHfkRR/xEu1nqOSQTB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLgYIvta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLgYIvta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9191C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728695153;
	bh=qJUtUcD0qi3YRnXzcv3r4JIVZn3GxRaGIgmMRzJlraE=;
	h=To:Subject:From:Date:From;
	b=lLgYIvtajeaf1FjdJ231g+zmQhJLHlqFrDgBCW6rvC/c+Vu7gxQ4vXfxmJE/RDU5i
	 Bzk7cweYZNpMseCO3MzJTmiInZQ0g/g/VC1fDsgYc/5c3YvZPbKS+5eD6bsgiXQBSw
	 Jb+Xv1Ysy/NbrwuMXMTlHkpnuqBmTiJtsYdqBUDTTL6uAnKtUSsA4cmYeRENgBoBh0
	 9SHktxpB8JFX48Dm+Mva7hqKccml8G8ZPotXCr5IukHuJcT+rpXXe4Tpo4cWbD3Fjq
	 Cvb2LghIcqX+AOgmjKoiSfX9bizP46bNHZz92MCgZYYVlRyg3HOLmeOVv6tlhqtENW
	 jW6S6qvICnyiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C9FD0EE1C
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172869515360.9169.1484438508499580452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b0411ecbc67fab6c5276087423a9951834d9a3c248e17421ce42b6aae032f9
Date: Sat, 12 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728695153
