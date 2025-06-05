Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350CC3FB31
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749088794; cv=none; b=LQndS3YVHA2o4i8H6GOWR7SCEtwGpGjJ+Kph0A9GnzjKVYtj98fkLbcuZqUfVoliYC6WujwOFX5OR6ooTKK2t6M/VHFu1VQJ4KjAYPLXeee9YWSyROq00RuncBQnsPzhBTnmG3pIkd7ijBbXzLW1Wxdy5KefVOpspsFkmqO54zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749088794; c=relaxed/simple;
	bh=A3l49K81pcq5zahKOgI0U7pTIpCpubioAKw0GlC/WYk=;
	h=To:Subject:From:Message-Id:Date; b=CcTXm+K/Z56+HjcwHGE8NV9FtvmB9ule+3LYK60GWEPqCUuwUfslE/L/1Z4H3jsS3y4jLvSPhw3JiwIQvg9+mnoVNUY7JjxrlpIjAPR7lhmAR+l+OsCDHZAJ3zM2JAmOFLCHTjFKwYEb+M6/Uc4X8h+XUFs9n2jAyeee0ra/kxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzKSDaAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzKSDaAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40F7C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749088793;
	bh=A3l49K81pcq5zahKOgI0U7pTIpCpubioAKw0GlC/WYk=;
	h=To:Subject:From:Date:From;
	b=SzKSDaAUf2eryWIdictOJZnLHdzwhHL+50yGlUfTVU8zgTKmG6At1rPQR7SQYzL9a
	 H407W7OzEt8BlIvFVm5ijOU1HLj8aOYF0JmuiVmyHHyrKaNkeS1wRyVyVPsYNI4Ohb
	 CzvO7ingnYA8k3jpbjy+2auydJeJSnZk+4JAXJGmz1X1YYxveD15UDBSK43Hld7Los
	 B9RCluAZgi/jWu1WP/oJQDUS3r04qCWES2kinQZ2EXbKWQzSuBvoHYb8j880lKhPRT
	 4SU5LyeNAcskriO385UqbXqilPBswQ7rbaWpyUYyE7e6hrhfnCUdOA9Zib2lgQq9WR
	 Ax9WJbsMhRX7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9071FC5B555
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908879358.25049.13811305837599238895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a835914d14a3da8387f4d223a312a6b808e7b44dcffccf3b98a3cd94acd159
Date: Thu, 05 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749088793
