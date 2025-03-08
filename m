Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D12C1C84C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741447734; cv=none; b=SoiYCGPkUdMYjUJc+zvPUiJhvvomrrH+rz6ju8ZjcI8OoCtycLHfRM21kZ1DUWBEoXYRp0QW0Y0oAAarNsYaTvKRUjZmIUZaGRMtotgUWWBn+AGiv1c7ETMID5eI4dXQpw6CDRe3uwe8nHNVGhV+38ZaBGOjW+WpJ1RDt/BV8uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741447734; c=relaxed/simple;
	bh=uSiuWmo8XegrwIdezsuLXdV7YoLuqvfBkP+GbyplW0g=;
	h=To:Subject:From:Message-Id:Date; b=IPhSVl+vqF1beBfsb4JoLrxOZmoFvZZ2iAHI23I4Pv1RbWVHnp/WXUJdTkwTFMqIEwLNgchrjV06UReulRi2QAJE7NTk4jnNEqKOTJf9ywzE33f9Y3sQiSIAGprmjzYVppiexlAu7NpTWLdmBwnbEr3wNwomgwiNQy+oJ5WX2Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lj0Wvl61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lj0Wvl61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC34C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741447733;
	bh=uSiuWmo8XegrwIdezsuLXdV7YoLuqvfBkP+GbyplW0g=;
	h=To:Subject:From:Date:From;
	b=lj0Wvl61pesz5v6+u6VPnMBlqF4XXEunQNmWBNCdk0UwPTuBjnA3MVPl0a3B8JpnC
	 buFNTI40O+wycztcs3Rr4nNvyP0loxRuHNDwP3F0yMQR69nOlDR5Zed62TI5F2ufty
	 AQ6YKv6BvCoNmX8HQg1pFp/Mh67BH5LoNoVzzbq6rDkdmW57h7XP67y23rNht7bERq
	 ciTGr9SxttmCf2MoRY5i9jcESvoKTKVZ7BJvNbbtx4eZw+vmKP7/Q2ra/ap10sgULE
	 RYvHLshiOM1HwX8H3DtqgMJTINVPV7Y3vJ9QeeDQgidP+SvbhKUzlC1GJ73Y8Jyv31
	 MStCTLhFIpXfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9568BC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174144773360.20532.14248337614090922403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4501a3b9270787ce438ec52fa42523f1eed3fe829fca1ccd775a68d6b0d3c817
Date: Sat, 08 Mar 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741447733
