Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6B7323AB85
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753130994; cv=none; b=XNXtUZr49Ogt1nNf430+76dGIWfvL+xwfitJknPJ0Cd8a7sQxx8b62H9EoSjMKnoYsyb+Zv2O+HgCiav90nBvn9s5bELquiwGSrNHHwI8Wc3LkIAvL0pDTHms1bXUk3bX3GF033XeeXTjGM/kl6xWnvGDoJWfoRAUPb60yGVNGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753130994; c=relaxed/simple;
	bh=WoNgu3IHxNR1Qj7H3TwKllA4UOrcQm1ezSELnw85Yo8=;
	h=To:Subject:From:Message-Id:Date; b=L2blfu04RYXbkRldWxAHTA81Y5irbYfBJ36rfOdN7qyHXUyqlxAR2UAqnIej5PMkasRp7/aufDJCB0CuBwkerYnOQd1jWCV0ZayD4skev+nO7NGBV3qISva8pNfeFL3MzHG7B8jwysDES71HY48SANuVer7FfneBst10r/WibTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOOFyPcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOOFyPcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E4EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753130993;
	bh=WoNgu3IHxNR1Qj7H3TwKllA4UOrcQm1ezSELnw85Yo8=;
	h=To:Subject:From:Date:From;
	b=VOOFyPcwXcAsMud9r99fEQeuLEKep6OTUes4PgVMx8few1/ou058+VjqAYAdrHMJf
	 /AXGBl0XrDV8GVIu2I/bQ5jSwsTgcjKjqdj9UX/Ko+bVdYaAjI6dFH63+popsuHE75
	 7RS6BlSBKMSxTVceHkJ5leadeD1M7WipVrjHTvabK/po/mA2rHGnVfMpM9amP04xK+
	 MV+gBoH+382/OQ3AwidJN20KIIhj3ktJetEShr05b0NtmkcqgcP5vk+czlMPpNUU4k
	 yHByLoHwjvdeWjgqQHBk3yq/FxHdB+Gyn0Fb5QajZxrRV8S0GSFGIfuPJVorAs96/r
	 oJqIa0+B7WYdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1CFC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313099357.19749.14221182329235133717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8888b5c2ccc5ab628003aa6b7ad4f29760d8b6417071b22ae0dd4c4f012c5c40
Date: Mon, 21 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753130993
