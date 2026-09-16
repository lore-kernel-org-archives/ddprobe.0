Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666AC44065D
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789543236; cv=none; b=ABVVg4OOygTdbPAabgYzANorj9l+yJ1qI2WuUFSuFLHBLAibOLTvGs9U9VslYeDHshxt9bZ58XCS9GPvF5EEiVZGX5NwNxaG2vIbW3FO9GabVyK8tpoldRA3VixsksqjZRdFtllv7GyZLNaJAOOcTCTVAaK8y9eqj2SCri0wewc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789543236; c=relaxed/simple;
	bh=Y5NrcmL/Id4AuyHO2cMfG7XXVvF9tuADyCdfHOazWn4=;
	h=To:Subject:From:Message-Id:Date; b=Cw+q0aYQf5nywStf5dypc1gKP2CRksH1L+OMmDdFFVvCvPQ7fsx/bcdT7VFfQ23z/a6dTEbSQxij+L6lfsNVyow8lYlFTDBhn774s2XHiymRCZNbK2rsBSqo14nDvCshl+0LcKCqKQP79V1Ho5RmBUMxVeJ8ietKZwj9ZJaYrYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECW1f6MT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECW1f6MT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38B6C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789543233;
	bh=Y5NrcmL/Id4AuyHO2cMfG7XXVvF9tuADyCdfHOazWn4=;
	h=To:Subject:From:Date:From;
	b=ECW1f6MTEpSAlm0AVWo70Fs9QbPFZ7ODIs8aga6JoGMBauEtDtYYg2oxcpUZ6lAGE
	 Eqz54rVZtdkx/LxSl0w3/k1I4aDx5WZEBB0KRvsmTUVq/7DvUUTMbMc0irGLamqNGz
	 kLvHWDFdf+Pk/3m3R8XDq0u+7dz/oEQp2iI4yyRX7RA0ng3g8BbXIIgnnM9AaFmHg5
	 VmV5nBXHAvuj/A2BZv9nCM+Oltt/lkDVMBT8yVUskFzqkuCtuxZAI9JusmAl/nSeYr
	 03/KK5KBCiG1JWjXwiC0qH+fQ7o3oLXlNjUyivEdoPhUAZdNdXN5mURbyUXJfVbe17
	 gvYboISfJ2yHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF02C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954323370.19105.5281688859583861778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca8da7cdc3ec09709673791241fd60ffb0e63869a87d68dac3fc82b9317a7bb
Date: Wed, 16 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789543233
