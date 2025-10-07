Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A63F1F92E
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759800594; cv=none; b=f6m10pl5WLOLYne2r6Oea2PO3QfdicVDNINLE8hwaP5U/LdIy0QDLmMtBGXiLrVDLzEElO21BTwrJde60880NMuvS5D4BDTeWs9DRm4UrEExRkweKU7vHpvxpNZI2+RXd1Mhxy2xf4B+OAUFelOYNplbn2tqmM1pLOFxRiSquGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759800594; c=relaxed/simple;
	bh=8gSxkmlrHCxuLyxFinZ4T0h4WtpVIR/vq7uE6nejwos=;
	h=To:Subject:From:Message-Id:Date; b=L8vjH3vgeQnu2wgI2ZG3kBEAkRuMA5Locj2ynVG/kdop6evCJech0s+1CxoHGotoPE33/y30kDSN5d0qRQb3XJ7gf+uydG2cKVUUaBCX1bevQFho2DDiCb0LkRrQ9HS/OSebFzT9b3hYhRiOx5oUsTlKkbC50KpU1kx4fihFqAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhwOpyFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhwOpyFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DED2C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759800593;
	bh=8gSxkmlrHCxuLyxFinZ4T0h4WtpVIR/vq7uE6nejwos=;
	h=To:Subject:From:Date:From;
	b=UhwOpyFsxaQt56qoiCcf30w57RXHd3EpMWKhfuMnosHr38Eaxe1ZsS/WQqWN00bz5
	 BYzby6Qk4MPPlm0eAeZHIs9awp/76OibmOCcWlpDS4ixOZzRKU0IBvzHEBKM0cEL6G
	 YX3bIzvcveuSOf/tP5BnVOqZKrP6vRosZv6UdxVeZxk1aIBoZe3hpk684X1/T4gE+3
	 x7ZGsGfMu/lyR4vxoZ5+DrSgHBxcfTGsfRkdgdC8gI9CZnsjfmUbr3qYMzIB7dYLYQ
	 aVuTrN+GK4//wJd4PX7FYGFtXkr06JP8uktByCK69oPwZiwqBsk7hNmo4obeKye1nd
	 4VlNxWacN3iTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5D1CAC5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175980059357.11266.5209769808263427385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10c8b0cb2fe67174ed73c4532659e9c757ffb67a507d0edb6b1126aa08e3dbd
Date: Tue, 07 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759800593
