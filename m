Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2630523F38E
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 20:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740775734; cv=none; b=H23I2Y0964SsaAPXE0r/WpuEpXX6w2kt9BPC5ANU1bbkCidJk+Rp6TMOVxx0Di2B0PUdisfYe5gZUv2SyQHY3xDczsn7gIHq+ZFDgKMbMXdV5Mv6AUMjCYLp5DOjsRZ/tQmrV5M5ybcfMnlvah9tc8V2MwEtgog3Jmy6cmdccyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740775734; c=relaxed/simple;
	bh=I6xbFpHPMRFjlvofhhgVSGQGzcUdlWu5Gagsu38DkoE=;
	h=To:Subject:From:Message-Id:Date; b=tsX3AwKBx8SN5QsYvmBfaXyKMitB0Qft/43EQBWiiJEqvALVDQts35pyMGex97YX5eXiniHBW9hjOjVxvrxJ/PaEI/e/gS6hdD+eoInvaMb9MXjFcps1gn7+x/oXFPfTDUWfMOl38xJje2xBuxZ4xaOHGkgqOSxQRpdUlMQLAKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdG27Pcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdG27Pcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13C8C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740775733;
	bh=I6xbFpHPMRFjlvofhhgVSGQGzcUdlWu5Gagsu38DkoE=;
	h=To:Subject:From:Date:From;
	b=YdG27PcxhXg3tjGB4deVP5WDc71mR5UqKcoFchnT73c5LeAuwQ0m6gLId/euZ9Q7L
	 IUV059ib21GlBBYW95tCH2xvyYIPA+KiBPjaK64jtzYvhVklyoUL9lMAKO6qW6RHKW
	 TPVJsvLgSA474M2Un/1KPqBuGvPhEv9s453VVSFByIVpSHCTR+9d5CZ2I3M0mzj3rt
	 xCSoq0koLL+erItBmjnZ+D4y+egfaNguU9Et0Yck+Pq/wXhZkd+XOapX8IhAOJB8gP
	 ivc+yRhSiFvTSkM6O6Kw8dhAyjoSDiNc9YQNvPK+iUCkV9VsibW0WbqAlG5rCfs2iW
	 akxzhaMpbx2IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944CBC282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 20:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174077573359.11745.15591065670567256709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5924b17a237911f602f34bdecacea4debd41a558f0ddcc79233c4f6d8ac47fc3
Date: Fri, 28 Feb 2025 20:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740775733
