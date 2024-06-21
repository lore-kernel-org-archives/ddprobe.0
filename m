Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E63376E4
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718971343; cv=none; b=ULEJSPT7e8qCGStxFgxk9Dz4qZWnb0u32ZIFi+kMEk8ZATjZ7/G4eodDKywgjvPsh+Vbgj1mT/p/2vwn/yr+GSrZlAJKw3mq3Dx0xASPwg8CYlzAdWiAqPRir5jVn0UpzzIRRUTsgpHiOU7tIV0TtHMM2fBgmgfO2tTxPTseITY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718971343; c=relaxed/simple;
	bh=q+YD4iEEFud+8clc7zeLZOqKuMnFK4IdvHNQdzEQD+8=;
	h=To:Subject:From:Message-Id:Date; b=ZonDmPg5FGokgKfoW3K6sc/FW55mmDJ14dhoX9YeJhBJQIhDF4fzm2lABeuDlhXonLfrJ3PFT7nYCsFLaDr/DjZzaohR9X39lZmaXOnIxC31PQUXVEZdOiV3Z5dw1lvptt7EJdg4N1U0p/Oo0o4qXqwWZF/EDRUq381MXGa2cVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vjt6va/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vjt6va/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5433C4AF08
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718971342;
	bh=q+YD4iEEFud+8clc7zeLZOqKuMnFK4IdvHNQdzEQD+8=;
	h=To:Subject:From:Date:From;
	b=Vjt6va/idXdpOQ+W5na89IgznvmV926iLbamsu5xsGp9W68Mr45HZQZa0zW/7+MmX
	 ufyBa7fXkkRaOyR1sGyiGEPQYkjzZ2j4zlnricrQVHpmwA4dejPTdbDudtAMB3yDlt
	 8qKh8Kti+ZlYnMCm8oXKhO+X/3iI97f5yssh+8hwBzhcmIZZI7+TbYFJ49XZgwn18E
	 s1nX0WwtnNvLW6JEYRZUcQMiHx4nxcQoxTWbxmDD9TkLoQuYCA5QoHGEWcqkYHrQ3q
	 ZtWrCzIuhkbLBRhV10s1c8PrzUSK0NGWx199ogfNDuScChmJ2cEoSmrOELQ0GlSkW3
	 +uaZEpZFuD6SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3ADC2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171897134277.28926.8076025045000955680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b18f8ede0a85b6e24d73418ca55b1157b5c7a8b041751418b0655d171d86fd
Date: Fri, 21 Jun 2024 12:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718971342
