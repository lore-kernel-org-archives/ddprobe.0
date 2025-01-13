Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B4C233130
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736755554; cv=none; b=pMLlRKkkFzK75Mk91FlGdfyeUSi30f/bh0qOU4n9oulYR0+D88vEjMnCw9HOyvKKB1ZoHuadq12v5gQZIhI+hWvsNyI217pDmiOO5yAi85K1AHL7+T752zNKIFl3qT0+7ZEqXuZ/dWWNGObndAPWZL7pHaUj/H81j/drKYR2yJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736755554; c=relaxed/simple;
	bh=IxvwQyTiO7sq1FUbffom/7xve8P3a2crdzvceXDNcds=;
	h=To:Subject:From:Message-Id:Date; b=A+b/xPr3x+M6ESpR8o7cMBgHC/PDXCSaXY6VvgRUJ06FqF0cUVd+ltlUk0x1JKj534Tu+tQslcGK5+lP1zaKrLkCLTnixLs9i4CvzNJVzSvXDtRd+IA7PslruhEmXVGKP5hqvsR66h+IKAgx6asCPi7g7tK+QGYOgKygWhe1jxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPGLnRBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPGLnRBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5763C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736755553;
	bh=IxvwQyTiO7sq1FUbffom/7xve8P3a2crdzvceXDNcds=;
	h=To:Subject:From:Date:From;
	b=MPGLnRBa1NxhCJBWm6+NrqkgLyfmmlWuhjsUy1ljuraBJnMD8LKCh1hzGmUKwj5Bz
	 sN4Vmm9XJd2l0wNNL6Te8OgfhucH8xOJxwE4r6Q/NPemmp4Qwc+zZ8SJMw0O1jWOsZ
	 95SH0hIK2OmuRusTKnr/x9ekn58B8FkNyIPVnLZBnrLQ5yjMLr0WqIS4Fuqf9uR6xc
	 VayIKnigv3LNuAKJlQfp0rggoBYPeuLOXBoQXcz4gt87mkAEMhfzF9GjdDjHdPEwgY
	 Keu0zYqcT7sS/TJTqqW0kxVe9xmW4B68vWOPwrjPe/8Oxbq+b2htdhsFJukwS3FQZU
	 gkEU04ivzF2BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CA1C02181
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173675555359.8236.11837136254849868960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de6962116a65e76793e32595393d2eb4ea08b319f4826d94baebac58b5e9db8
Date: Mon, 13 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736755553
