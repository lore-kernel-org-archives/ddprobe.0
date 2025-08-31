Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1411016F265
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756630194; cv=none; b=gY0Dzduz7Nen16sMqZwkmz6ZFZyaNRQySg04bvyUlvK/QVQ0V5qtJ7HAnymaLzQw99/F0RLHZ4l7QRmq+0vM7ve5LN9EFZPmyDnnnwGDtmsMSBjnH+6YubZVX0bHqg5ji7+Z4Q2cyY+WgU6g8vvt2mzyzTGZp5NpogMt5NnlBDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756630194; c=relaxed/simple;
	bh=3GTEvHaExZgxV4e7M3w1d8yTDXcVDJeWGZaZI7S55D8=;
	h=To:Subject:From:Message-Id:Date; b=D6yWqMQ5sPJ1bZO8o7tLrCi1hJ7+KNf3FaN3Lj5adiQQQsQg5nCWwg0cmP29ZHc3Lez0rnEnTxmce5zLGUH+WGEdBMDYqn0Z9Aq4RaU9VZLfjFPpOCiPeRhhUU3lOKqbzEh3inIzLX+/TAS2SZWU1oFl/Ommw4A4SR378P0yQxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zfpzt6/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zfpzt6/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03FCC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756630193;
	bh=3GTEvHaExZgxV4e7M3w1d8yTDXcVDJeWGZaZI7S55D8=;
	h=To:Subject:From:Date:From;
	b=Zfpzt6/QVvpGUNRMYg5Xo/yQI5caP2r7bqG1lXJJX+S2WR/z4bXg6OMiP5CUDyUtJ
	 tghsKtDtRLe7vv+22TEv7g+c0AGvKebjKsq8UF4ZO7zNgHTaFExGK1gG5APqwf781+
	 cgG4GQxjK6IEh5SsYAVz81WmzqwVwdbQGaxPx6EGydAVqXc4gCI/csJGxsXVD611nL
	 /R4vNTlnSChzPgVwyyErD10UW0vlCcsJzfk+TkSoOlI4c6kSWmmnmyzQmOB+BYnXH1
	 MO+pXWBL3JCIqVi64p6EZwblaXerzxUWnPCRu3CRaZgPGMKz64Q0jTu6uu2HIIhFu/
	 WD2ISxdlSMLYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DF2CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663019357.24810.5809870432487242781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4253576e5f14f767f0332a03c64052147f32582ab1d6a9aa4f1200e0afef3cbc
Date: Sun, 31 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756630193
