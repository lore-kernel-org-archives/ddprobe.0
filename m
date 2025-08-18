Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18EC49620
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755542394; cv=none; b=Fh5VXXvW9m6uno/EcZoGanoUBxbVm2bR7w/aVh/BFMtTCbeHDYFKn/SACHjRSdrOIX9rGgSeFhzdEyw1QK54GxzQL8R4yHndUa/z5BRZejVY+tNXqwh1JFbZIFUQq1Au4vxWnx4ngfLXucrBeiL/uE7nJvXs7A4YPcxPUCpyj60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755542394; c=relaxed/simple;
	bh=JacaypZoJFl2STFNy4S5dS84tQlOf95pA2VoFw3WK6g=;
	h=To:Subject:From:Message-Id:Date; b=a/D+xtuO7v3sPuaTnaJYiHEWMgtHaODjE+wTwU72O80WJBIr3LY67oQXY5vgdPHDs2UrbLNeyCM8XrH1uap7mBH4y07EKCLqvEzpgpXHyZNk1LU7I4g0PzrbJw/rl/tU3+7geYoHCv4V6AJb7XJsjNF2yH186l+nB7wK/i7GM/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjbzQWpy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjbzQWpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27FBC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755542393;
	bh=JacaypZoJFl2STFNy4S5dS84tQlOf95pA2VoFw3WK6g=;
	h=To:Subject:From:Date:From;
	b=kjbzQWpym0UQTlhwgnYIiZRD1C3k+w9cJMbJw9E/Li9QRJ8+OREwSVpZqcZBFQufg
	 2ztsosOnB87qALzGSWXef1bhqzRmX5sZQkdH7BULOe9w0BLM1PX91pyGS714vb9SB0
	 5dX2m0actk1wx58N8GrkJhnf/DPMcrtton/mWIk0xrxFXPT8/nIiciUtFlJ96n4YLn
	 jSFeMChPBCciKrUeCiKVA8yqSlDLOknlgh/Tlqn00MwP3A1JOLRR63raNlN93FKt7a
	 6dJAQDlBWopBbPwYnJnwCaToRare0r2vb7D7KCbXOVWvlGtKczsQ/7HIIx8nwHr7Ky
	 lE4tYopNRqVjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90512CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175554239358.9695.13944927356734478045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c909c4f9c96a2bebdf66b9ed15388f646513dee5e71dc67794ace054dc9fcb
Date: Mon, 18 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755542393
