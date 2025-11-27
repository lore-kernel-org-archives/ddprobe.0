Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8B72356A4
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764232374; cv=none; b=U5z/HMDHWnDJgbtuRwlan/B8mjslRSTR6ajgIr8mea85L8jezpiGyHo3jOqDOgLuu9LEWM8h2gSX8IhQ+5LvNZExdR0fLjiTM3IG5T1N70vq3wAXs1enX7q3uDdBDuUbDI1Mu7yOtlgAQATVPVnQz/RTftDiLvSGLEo6tUDuIfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764232374; c=relaxed/simple;
	bh=XYdmudS+WGLx9+8V4F43TiN8ByE9Ckryu6//9cv4Kew=;
	h=To:Subject:From:Message-Id:Date; b=iPrifflioXqQGgWKnlpXC9/VYyVVM1zTDV+TpZclnYqkmPb74bdjn4nE2VvJMFTXvwb1rCuxr/doUgclWGurj3rOJR3DWBE39PDiNaR3lEtZlztH5lvyuaQpnPLz0PWaegC8aQl7vKbec3HsETQheW+oGVSnDuTPqrjtmJau0u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSZkdMKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSZkdMKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34A1C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764232373;
	bh=XYdmudS+WGLx9+8V4F43TiN8ByE9Ckryu6//9cv4Kew=;
	h=To:Subject:From:Date:From;
	b=fSZkdMKC+FF62xgjDk+Lysoo0zBbbXgaWVijtrSSL5fb/Q4Q5bJ8UQQ2LExp2I1w5
	 CddiK3STRER8PlhryQcv+LBFYB8FHJFznl0QG5JSXMIuyLSZPXhD/H64aF6Uv3qTRi
	 kKZuJl6qWBAalkLESFpCnTFYkiEd4ur/ensYsB8rRjj2Wu2w9x1tHoAZT0HDOd0OnF
	 AxziFAdP8XqE7XKlroS8Ez1Xc6AaysNkSqRPEweIWNebXBZDM6g77FCHKJzXB7ZnXm
	 MTeUPU0oWA1cPujO6aZILX5FObZO6cZYWBZujggEtqICfLWd6HiP4tpgj3bcePTgZE
	 J/ymQN9ut+dOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9111ACFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176423237358.13505.7506634415052264366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a4b071ea86770b970a6dcd36cf9bbf1e8dcd0cd4166047cf682fa88785ebf3
Date: Thu, 27 Nov 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764232373
