Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C85E219A8B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752734994; cv=none; b=rKY2nmGJMjG7VbOR0nDaGti5GBYHXrZJJmp15IIHgIfojY3DYcBNlxYbts1VZfJZ5m393x6jfen1R7bBzBPpXz+lTeGhXoygfBrMJgoG/b8iXWBgKGaWa9bmlNHAWTxjWnOIWuMElEVKK0qq37tKQqwR74X4T0PfTlIK6eA9BPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752734994; c=relaxed/simple;
	bh=+c91wuX3D52ReYA+r83MlK7Jc+KfS+tlws06IR4031s=;
	h=To:Subject:From:Message-Id:Date; b=SaBxtBk9Y9NoUzocCkwfOjYBXza4Kis9dmdnCTaOOEMVhQ6YeFd5yX6DXrkXSCWTb638N2ibS2tpfBFgVl2JMrVU4nW8onXdOQK+knv6/j4gUHv4pBc3CPlhngYjpvSWBQYVIfLJwXDrHT/9K5deK4XYeCbAOCAi5DrvqnsTH4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQQqABH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQQqABH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A175FC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752734993;
	bh=+c91wuX3D52ReYA+r83MlK7Jc+KfS+tlws06IR4031s=;
	h=To:Subject:From:Date:From;
	b=kQQqABH5kqk/KfDDQXV97LEUtO3HH/347FiiG/ddhNFhy0cImMBS5djPfxAmqWDmH
	 t7wEqYQ4n3cJNClobuGJzf9H03SwIQ/RhY/aWzvj+4x7X2+xjrLYyroFM94LbFqcjE
	 8NfkIbZzao+pZK3ie1cd3EW8ggfJChwlYVQ14PjCYzY9K0BZr5+Ifr7qPgntJ5hKAL
	 BM1QV5a8AFi8T5sizXm958Jo8V2zGeAxr0yQPTHQ5baoD6YRgagoi3HkMZt8Jl8l+2
	 ejkfqGSPkFsttSRd4La9AzMNkcNYjdj4d2EDbFdGpFy1sGrLdgKO0c5mJf2FiND7FG
	 zovW9fBh1EBJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FEC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273499357.4602.11720007718081074679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be3ad01f066e55eb4607a7b4e5b68559da698a9b460b832b9751cf579a5a2b53
Date: Thu, 17 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752734993
