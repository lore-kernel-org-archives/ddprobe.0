Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4581A262D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775426734; cv=none; b=L+PWqwnbIT290sp0DEyuPogO2nybMVa0SKcgzEgqMa2i1SwmWaNcpQ/YvN8GikyzBVYqI1grjoWTQJjpA/5QmEwEbEco2NCAZw6v6xFnZ5wotcB+uxEU6OVwxwXL1Sn7tCF6ijw28tY7KdisCbtrSc9JmNWi8lnXGX9pRZ2xFYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775426734; c=relaxed/simple;
	bh=J9qm8eiYoYbge60yPfnMCFQK1EbPfyrdmDESJV3aE14=;
	h=To:Subject:From:Message-Id:Date; b=rVnZu3N0Hut2tD2d4drsAbgUXTfXakX+t6VJRGZlMK/l/yVmB1UhZzluLOwCpDbebeIBzQATnZEDileY/N8zJaRSmvhi7JPB4wTo0SVRCoTVt8Hv/M4Ad4dH8qgmjm+R6cJ0Vc1ui7IRzxX5sRr9taRX3kK+TeslcGuevb3PGqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQ5cnZKk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQ5cnZKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3630C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775426733;
	bh=J9qm8eiYoYbge60yPfnMCFQK1EbPfyrdmDESJV3aE14=;
	h=To:Subject:From:Date:From;
	b=YQ5cnZKkfieElyCDVn3cUsFS/YkaGzY+BV1G9WyZI4oOSVlGzaN+ng8r8hffcSFan
	 UlvDnKQJQiHuytzIxaP8rEblZARAdMkCTqZzsz+SOw0fM1edkuv72hF298ekbtaOtt
	 1CGeepkDKYgYlVscSWdvIi2iFcDAovJ15gG1BeSeOU1OhW3fC37uDR9NxpBka9oXRQ
	 jmvheQp3q5AAholhYKo/GhsjHDTvdaaB40+XOIOsUg4um1dDXwQ0JT9Xz7x/HI7aqA
	 GidrAsHdxNbcS/uWHzpkcsvdzKm6JVHt+P67OCUsLM95gLhYchKwo0cPOYwDqVcU2X
	 rUctEXVGkglXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A6BE9D825
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542673369.7255.5687795217162933045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b491fa75a10e4783eb4e5870324c92803971045362b15888856161044c19164c
Date: Sun, 05 Apr 2026 22:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775426733
