Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CEC3E9C32
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779706354; cv=none; b=nQ3PzxGjNqCG55bh1UR+xNJ1QkKPXdWHr5Ctw9+5+XLu15EcQbNx0mCvdiaUNPGioFvm/G2rafvVkdcYVbzCIhjBc66yr8Mh3ZR3DSgbF6fwaBpKR0GhEhD/a+yR2tcxK/zKjBOTW7dfPRxE7Wd2h3S3tRPQYfdQjsJUouUSSLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779706354; c=relaxed/simple;
	bh=vmo6C5GCEMgrdcVmQugbup42O70OyZL6IljcPRLBATo=;
	h=To:Subject:From:Message-Id:Date; b=TyQV2oLdu8OOFeHNXE6h8eMyuk49dCH/BZGdw18W90aS93evq/21qTZlXwAC4c+1swfvutP3UZ4SSsFnqAtHXeF94paMupzC6LmDtzj9QIfR/nu1hJcLHFHhPNy2e73z3zFzORSfPLxaYVm2KmbNzixFphr8DwTXStKNX7I2xmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2DnYriW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2DnYriW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C85C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779706353;
	bh=vmo6C5GCEMgrdcVmQugbup42O70OyZL6IljcPRLBATo=;
	h=To:Subject:From:Date:From;
	b=i2DnYriWeIReJvK+O6r628OhVYNTO+m27eKMjDTbwf5g07RFObK/toIEUFbPGOLuU
	 eBUCtgwHh7QhhFAx9ItCGs6XoIyi4EExvzyLfc/AYU/9V41KDsj64MLNNIh1/JDVfg
	 yVV5sj1aE33PVcqbPonE888pcvD31cNtTHvCfaCaQIVmGpqKh3HXKt9TCPPyhNkUTg
	 qf3IqtTD5PADjNUBDzu1ZkJGu7R5BhNfi5bJykKeE3jm77TzLgX8Oy6+IJUVh7yRus
	 xV7yC3Zoz9JjRbU1pnqjPRa0XbuiO/JUZcKbtlRQEANrDQRdbsTLyB4qletEx3KfzW
	 32Kqr8jnbUzjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93F6CD5BD0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970635368.5071.10767116082350128350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6761657cfd809f47096466440d00637125c64d470e1155c1d15732ca50796949
Date: Mon, 25 May 2026 10:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779706353
