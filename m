Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D26B2BEC52
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769376234; cv=none; b=kfiWnGFdc1pdlGzXFLM+7Vw252JMKTsZOfFKBdMfIpypGX2EqwuRklo5su89hKkXDu2qf+YbW6Y6S8EmQMZj4YiZInfUcuLdju70PPMKhJKBOZ7RaTToq3nea/EmzvfOL3JveC7CNSTqciS1ryQD5IvedubtJPEh96TYi3DNuK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769376234; c=relaxed/simple;
	bh=VL9nyhDPaZ3qgNymLE9ESgwj1FHNEjK90IPYnIZgSbI=;
	h=To:Subject:From:Message-Id:Date; b=aJdfm0+GQjasA0AlPoeNQHrvyTsjJ0I9WZSIRPcRMAG31Vx0DJ7qCKE4X1p+rGnFKjm/Tlh71i6agwb2AzEBuJpeqfq2NKK7hl/xp4VTiPl9005SIHZhKj1CW6V38ex0+0CR/d6v0rVvoA7lkQNesBblU3N3nnUp2gDtMlzDrNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTOY5SRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTOY5SRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF99C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769376233;
	bh=VL9nyhDPaZ3qgNymLE9ESgwj1FHNEjK90IPYnIZgSbI=;
	h=To:Subject:From:Date:From;
	b=jTOY5SRSFE8Uobq36j1un4oNFXw6Qz//R6aW0RlKP+KU4cSzjdjIFFSlZB5hurZQP
	 04Ek+1iGdH/GfWJJXfiJtqflC8kP1ySJa9JGmGIH6MKRYdhtHtB+5HkuVvsXoYzl08
	 bnZgXJ9weM5DZYKl3ISx/rdFfUnmZPdaJBtIQ96Hw/Pmz+LR+kiG+sIp/L37epDwq3
	 IAg/t6cR+r3l9yQ4f4R3FhNztF0IuOH0QHHatnYQMTnBYaB7KoGDvSgdufNEZgv4WQ
	 jaSUziohUp7cBOTp0EadmTjMsfp6tC/bVIyRM+QwuEUo1ZR6ZH8DVV5SpCHlB1YNZ/
	 Gwl9Cw3RVKTdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F46E63CA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176937623358.5006.12027908248080681366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcac3aa7fc016d8e42cb9cb7ce981065114dcc8cbc688047eb9765e5bfcb5a92
Date: Sun, 25 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769376233
