Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BC13B186
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762999794; cv=none; b=b3M2xmUrWtj0WwVWVf7j+OGNz8VZ05izO5nxR3KfhJ1gMS/UmuMVENelVh2c0i7Ff/7SeV8p9/kfCpaQTv/BCvlVnmqvm3LYW4PSwroCPaAle5xkV9dtWM7K5p//dBSn1zq+5rDNUommeY3VH/6vcshkLOnFbbwANcUFB1BFqZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762999794; c=relaxed/simple;
	bh=Iz/r4kDhSaCmXB4MVADLZ41QmG5WNjvDoGVGBi/aX7k=;
	h=To:Subject:From:Message-Id:Date; b=XFObvX44vYQAn0noBm9ysRAFg2Lch8EtIhlJQIeBfp79ZpCJl0r9bQGphdG6F6wZVmJ0yGFb7eLaHNwoPwq9tGCY+9sqoJCQytvHk+i0UAOW7fcotISb9qCtvXLK7BBv3Q+UaFdbAqAXmTP7ZW2SECE5ydDEDDGWlkmJTPylaMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyVNHlBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyVNHlBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DE9C19424
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762999793;
	bh=Iz/r4kDhSaCmXB4MVADLZ41QmG5WNjvDoGVGBi/aX7k=;
	h=To:Subject:From:Date:From;
	b=CyVNHlBlA4BLMUfKV1Q39KT3RqoOGImKFFGL3TBtc9K8xv64bQFapOYrb8PNXVdRj
	 eMNIeq6ii3QXZUraOWcWGYKWAE4M4AYVFEIEkY9dEAhkqjvdqfc967AreD7hjLFoyY
	 OKtS0DmoePDtjLUttDVTbP3oz9v3c487wbpklmbnauUp6CdacZXqvCYOKhd7iBN0Vr
	 B6E/MlMlx6HKwbFdJtCIC5HiTBrXZouP3c62SYQDGkHvcEt1dv1B5vA4Bn4CV11UgS
	 S+VUzPIR8UiiS0eMuQJtkpGfY9jp0ENUmI8gPbD0Y6lIaTrv4zYKUcBX5NC0pdjCNa
	 dqXx2WCAmLUBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E84CD4F35
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299979364.6647.15611925648941798285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1678aecbde0bb545984dd2dc03e5b0ca190e855de9e62d7f6cedd9d69e3c4160
Date: Thu, 13 Nov 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762999793
