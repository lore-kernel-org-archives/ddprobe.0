Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C1913774D
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759886394; cv=none; b=TZNPKZiNSLJKY4kSZzf/R40FoVb1O9YKEuM343ErdZzmtYL3bRPKO1edK4Zji7YE370G37p2qInZVp+nxf3M47B/3E+Cp39nPdV0LXtoW54U21s7gf3jGf7hELxoDbUraCr+8tBw5wNzsyfpXJMM2PKs1iFXRhyP1DV/BfwZmYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759886394; c=relaxed/simple;
	bh=lVEpaF6bgUJkvTwOR8ITABfyf2OVa9eRvBTLX1pzKQU=;
	h=To:Subject:From:Message-Id:Date; b=EveTurBhKChSvawkHI8+SwFeBsVu1yfW/Vnz1I3GaKQdHv0QhT4W+/WZLokOfgS9Cj5D+7OYdaIICW2+O4u1B8nFXWQvFBjqGBUowbZwqIpmWND3ai0zfGI5C+nmxl7nor1JM9Izo8wcu+dOgz32MVCLJRGzb/sPGZ+RFupHm9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0ouFhqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0ouFhqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB06C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759886393;
	bh=lVEpaF6bgUJkvTwOR8ITABfyf2OVa9eRvBTLX1pzKQU=;
	h=To:Subject:From:Date:From;
	b=d0ouFhqyb1pVgDqp0lEen8d6EOTi3DeLi2RQ9VSfd72SRSrYNbf+QEcw3yjgUw3l1
	 RuYdUhVT+ji8XD5vSOx8oyb1bgTarGKeS0p9R7lwPM5BAXkDIeRFYj4K7vnnhWUf00
	 hr0cluU7W+KRmv3gEKA9/x0BOpYfCl5nYju+Occ1mw2rOt4QRxCgz7Lq37cuMzyGFF
	 BbOioAq9zB3keRIKbviNwBrrZaQdRJ8hAY3v+9wAnjvodO/0Zor0liyB0I2qtxIZ3E
	 2lXPvHrpZ7U76yhDqd+qtHMmozahDyfCOhayU++6lC1KSHMz0xqtX21ajqejoC1tSU
	 52ixkf9uq7v9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F512CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988639357.31786.12766440550077653863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e2b132231d5e5a80db132ea5b6228ce2bd53268de5aba4ad68879bd68c9c651
Date: Wed, 08 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759886393
