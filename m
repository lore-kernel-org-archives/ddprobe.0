Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138201448D5
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764901374; cv=none; b=imLKdNjcQt8o8AbOfG8YRMuzvMdo3n64oTDGBlJmfW7/ovjfdVpnV6XiYLbRkihdYz2U43ObBW7o/+X6Mz/Y0RtM9K+7WMsyHf6lP9KDIIMik6gvuDV/6+znZLzLrNMsq9bIfWkpOg35q4pqukA1+5PeUBcSaUeJKqxIa3ycQxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764901374; c=relaxed/simple;
	bh=+XNX1Kuy3TDqEYaxj+p8DNEHMSSQpBuq3t04lydekds=;
	h=To:Subject:From:Message-Id:Date; b=qpUo/VuUgbpXJwnebX4K624vutph9/IO8y9gPu0qFAz8AdMCHAArAgP4jD+2WUeSQa8u24NGXoUsL9gEiV2u1LVMC8TgmTJ/6qSh45+N8T4pf+bsKMPM1PbjUgIWTjzauT75PyiHBEctcXBJ8Y7vRKwMNj1isu1IKaKH8l94ydE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVvoxOGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVvoxOGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9369C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764901373;
	bh=+XNX1Kuy3TDqEYaxj+p8DNEHMSSQpBuq3t04lydekds=;
	h=To:Subject:From:Date:From;
	b=tVvoxOGe0uszmjuRI5EDjpVK6wcVykW0mVyBtPMEv0ppNTb8dRKkE4JAXyN9jKXLF
	 eYctwpAvY79bql1645B8phcckzvtdWQ7YIeUlqxznNKAIqnaKpkaMOMKtUtNq6nLJp
	 E9dV3CkEbC8pzy/u/YcHp64DYmIV+i/Wuimzkhbet0Cvlp7dVvkgoYGlKx8Ci+AV//
	 Bqv9d/NvX22XDEKRGLW/H3Ei9udToukvwCU3PP6JlzxDDDqO47mtXV9wyZ6iiPOUvi
	 hDHY5VInPUAfjDEgFyHRAq7WMSS8wIpSEXgSGPOZe7aAMPcBvaImkuo4tZwvbbftBt
	 OAmBpjm7arH4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9659BD2CE01
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490137358.4062.10591996123682780453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5470b7015402e808d5723d0e36479994821e4c989d59f7e8b41c06392ce77698
Date: Fri, 05 Dec 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764901373
