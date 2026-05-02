Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D2E3033EA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777719454; cv=none; b=NqZp5QX7dFtvrd0j2S6d/HagEHdIGK8pxJW6/6rz416gjPWa+Hi2iSfx4/KrE15yq3KdiVQWkEyB0CnDP9narSKEKz3iCLkMDu5CiZfXf3StGg070eeD4OfIqVrDRrm8q2c4PxNb1bHf6I5OiDiy1ftdKHroKjVXCKyJ6X01x2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777719454; c=relaxed/simple;
	bh=fWk0T4D+krXYJt6DcFoaCQohrkZK7QipH20glYy4sgQ=;
	h=To:Subject:From:Message-Id:Date; b=pOoUWyzTIbuDP6sOsw5obo+ZXh4EdhlAxm9Kqohb/JL4s00RTtswdOHBGrSJPKCpysIeR5hpOHW3CagqTabXtX6bGWtG/LEh3grUQp/ZaGwzQ/y3L0XHZv1nmEVVBTB1lgIYco/qKcvmRY1TSQ+3YQ78Gi1DX+Y3x8AW+5Hg5V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVObwRWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVObwRWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA905C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777719453;
	bh=fWk0T4D+krXYJt6DcFoaCQohrkZK7QipH20glYy4sgQ=;
	h=To:Subject:From:Date:From;
	b=bVObwRWFOHkL8ZwrX+mzp3evGAoiy44fNTnkL9aAWk5+2Y81TIAl9SMUQQwVHPVtH
	 Hp7q8tN6d6ItslKW27F16KVuvUYlhMuWtcGIbQKuEsItfD1ItO9s0Lxo7Ia7IcWgIq
	 4xQttZfpJ95tCzmZU8g/YQROuaAWksHgod66W7TRRIECeO5AxIpxa8rNx1jHQSW/j3
	 LMM7UENIvErGgxd7SaqiwBy8EWqjuJsdArP2VkuYpeJBJwxwrN+fr3TYHVfPCLzrzk
	 UmFo2H+FOaVPT0uY/PyLgB7g+FVIdxe7mVXT7naB2Dd/axa9m8TC6mLa0Qwv5TYjQS
	 DlVq9TFKhqSFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD49FCD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177771945368.3035.11692940366669947368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb726c5b5029f2c63ed0deb1d88543587e0e6c9ffdea5b4fefe476ee9bafd0f9
Date: Sat, 02 May 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777719453
