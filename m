Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC881B2514
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725028554; cv=none; b=hGTx4MDsR3ggLiAfqPWg6RlywGfXl/MEcAcIucWhVm7S0OwsMG2qmUnG/oPOqKae1IG42TDAAK9kVn/13FNJ3nguy1uCXItxiVajPWx8IMGoV55XTRz5hJyCXQZ6SPVAFd//sEwBgG5rfJdb9Ja0UfQfitin44qkLp+Tv1RDdCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725028554; c=relaxed/simple;
	bh=MwF3cMM3sGgdv501y0P24cbIAUQzMl1OeYK5sa90rq0=;
	h=To:Subject:From:Message-Id:Date; b=oZ07kbb3sApEdQpQOIVkQZNlBy+F3VwLienemHD+sG9W5w9IUPDfEqZpe5AcMzgS6rh2y48Nm1PLdNpGBFtJPxUz3L4rxejd5N2jCLsHpRP2wbdtEK2yE2w0lu9MFnpUxMN3Zhzi74CCgOSKrIduNVyh5h+3+osEU/gVe+OJljU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNEcIe38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNEcIe38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC651C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725028553;
	bh=MwF3cMM3sGgdv501y0P24cbIAUQzMl1OeYK5sa90rq0=;
	h=To:Subject:From:Date:From;
	b=LNEcIe38AsoRq4Y9rkC0CQPn/AS2aCOkKV95nRtOjNC+VjOm4b2JpO93w3dxG4FPR
	 ahK4v89NvYIcITE2zAXElaw2RhIevBGCo9hYs+YPCuWE9fM2tQDEDS+5u/TFX0Pl02
	 CScto00ZeHsy1hgfHYuvLE+hPylGoBCwWQWw/nkkcMZjOAEZlR23dRYiIBP6gVRQaK
	 R4j858A01HTUEZifxqbPJUeex1EUSHvKuvItB2V5dCUW22KHs+xCqJraRxf5TcV9qi
	 NVqZompc+ZouB6pKvIyakw2mZG7dhKDnwwxpqYUjnb8Af/wiuwAOGm9h/jPZSSThJl
	 iCHXUqpCZF5eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C6CCA0FFC
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172502855361.9355.14578858458072861195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aa859b6a2eeb9b5f43c72b45a86db90b9aa369aef519f624c3bb5a3d19b9047
Date: Fri, 30 Aug 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725028553
