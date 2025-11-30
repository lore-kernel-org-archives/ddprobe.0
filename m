Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D334252917
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764523374; cv=none; b=lTRiSsbWTr+sfJYgomArziQtu29lHX1MPfjFnAKx6L4X5M7W7NzW5Kn+iNA0GsQDln70qhmJ7OPZ3KYvM/KJwuYp1X+cXy6RHFBAZ1O1A4jVNbXM1Wc/DLh9x6wGAX/1K3KJsjkpBl4SoNc4mmKzh76BlfhJWKLiBBPRF6t0/yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764523374; c=relaxed/simple;
	bh=f1KoibBsXLe8K9j7PvAm4Wf7fvxM3MXJPXQvjIfty44=;
	h=To:Subject:From:Message-Id:Date; b=jVoUQTyWiWAPVkeubnO1/6X8I0puL0DP6TnoTdkoF+YMXp+Vc9IjcE9VO84JvQJfnn4Sa0oPk3LjHBvNFqJ4a9a/EXu2z/4zcWrKmLpvr4oW6Mt464GaSuaO2MZKLdmDdw/wjIn58/qbPEcnB7I2CflUeLoTR/H2FZ6enaafh0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQwbIswZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQwbIswZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA90BC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764523373;
	bh=f1KoibBsXLe8K9j7PvAm4Wf7fvxM3MXJPXQvjIfty44=;
	h=To:Subject:From:Date:From;
	b=dQwbIswZAbDyEomW4sdwGIjCO2DHWG1V42ZlLr6l7NCnRQZR8UdaqTjSlkIcWv7hJ
	 ZGuyp1GW+TTZClP3qu7y/vZzudGr84tDVEfr/WJvog6XKlFwOqLn/NOgraRuAbkoeh
	 xzPicb/XYg4WGoYoBS3ofmR79ODHj1UTPds0B6/ubPxS4OIg/bOAB1JRDqj7VkDZaf
	 Bbk5wWRU69l/1wxMJlEYNvJPbpOwXX1zt8o0JSwG9dkYEgGHp+dMNClQfT2qHyruGU
	 6ShTRN9ol3HXzDQG9v0YS9cKmruPiGBEx/0IsEOoHQ23jcxL1Q9k/bfac5QvlldRmY
	 IQ+Na2P4dxaJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97001D116F3
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452337358.12416.3409986087964920205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f952a7690002f345e25d330ba3136ee01886088acacb819ef5bcdf11d2a7dc
Date: Sun, 30 Nov 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764523373
