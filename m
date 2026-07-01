Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5AD1EE7D5
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782868114; cv=none; b=uUbZpmyju9rM3AoZ+tvlOWv0Th5oOUS+olz1zFM202Ek1BQ0nAQp6Z9/19XdKxEhPiMNhV10FQgslU/ev4JpxY+9K7/yKu/PcXxlJ0ojqvNWtA0XbRI2K9eHYd/WBq8RHiq70YoGE1ouOTXzo7GZ60u7/hziGrM8PPHyp3Oyu4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782868114; c=relaxed/simple;
	bh=y8YClLGeu1MG5/e4tXEYt4ijBGyZQtVynDozT4FhJJs=;
	h=To:Subject:From:Message-Id:Date; b=hT+VVXfJOVu6PQyRxZynS/cLPGhzUZ+iOP96lFfAUHVHbcfl3fEz/j/Ru34nILC9qFRraFRZnlrv3iFrzZCGA2LiATqmkIIYTfqrhuyYY72GGR7HbxA2S6xG8F/nAt/yEg5lnMZJD5uunScC13jvxn8VgmJUx1NeAdW0tPpOgcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c40szNHX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c40szNHX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1914C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782868113;
	bh=y8YClLGeu1MG5/e4tXEYt4ijBGyZQtVynDozT4FhJJs=;
	h=To:Subject:From:Date:From;
	b=c40szNHXd3Cwf+b+VRvmkLm8g6odOVEX+VEQMfAF43O3ksQ4L2tV5ANokUpAq0bLy
	 eEzPAFziNRm0MJNMH7/OQ1Ke9aUdwnGvf7ZjhRazPSLjgKkdwFURR7fFkwRzGv6U33
	 Cl1uJpmmBXRx5a/pRQgtcuFJukK78FkdgpHnXrfo131+rkcMJd+23eJD8a9h5uAvt5
	 sqhztOsn7pxLF0YBgTti4aEbtQsEHnQDL7F/bsBJtNYG16Ov1Pu/5PeSKK6f0ttUBk
	 NFHOaDY26/Y7gvSlarzqteJizmpj5WNMmp+POZjKxRMpiJTqfOA6Gvf2W5VXRT8UEw
	 t2+SZtNKX9hmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EB1C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286811368.18616.17721013768120401204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac42fff7f204a96a0f04982760cc0e05eee26654db3d3bc5c53d9d7925dd746c
Date: Wed, 01 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782868113
