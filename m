Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645C19461
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717722443; cv=none; b=SlmYAbgan+j2oWYDz8LM7CylS1UGkgjkh0jygmfuJ9VQu6f4v/fN0LKd8fMFC8dxYDF9pxFgJMHTWHCmFdC0Lz+xd6GIRolHD0D/k5t2KpslTFFMTrxmIGTl2C0k6DGroV0Jhx0ZxpbddGk7h+IPj/+z/fnaDPI9gPQtYb6pqJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717722443; c=relaxed/simple;
	bh=7BWi/RvbTup+fd+4uZBb1l9OQKmmfH6ehMoaCoFzcU4=;
	h=To:Subject:From:Message-Id:Date; b=ZSYzK3duU6xwDQzn5zKEc/3lzHiAYC464JboRy9Sz1QOroh7IOCl5iz/ujDArP/iWS64CdUEm5YiTnolbBjWP22P6K0PZqSBGN/rTY6+4ZRoYim91lWt9ROXaf54QQGe/FzpuVC4x9WQ7Tb3B4egi4KlAS/1JSDHGW6y9muHGHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giW3Fh4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giW3Fh4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABB0C2BD10
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717722442;
	bh=7BWi/RvbTup+fd+4uZBb1l9OQKmmfH6ehMoaCoFzcU4=;
	h=To:Subject:From:Date:From;
	b=giW3Fh4vjpmYtRu5N946ZwZdaUyxOnDhdPZ5LSWOCSTFuBiUaF2U8t2uh3OsBRFl3
	 SD/vtwXokRcS0GDJ+hUNHimjg2OTT1Wh1YCnMCNXtELnIY12KHItIuI5BLXTBLDga+
	 PNVv/EkPZItnpThB4pST6wwcpjKoGaNoA/dkgglkdByEgF2vTmuVrm6sp4fhRkTLPt
	 XfyF69/9z1WTQ7uzugYNiHlWsdE/5oARJYh4fPRroUskhNE4xVntbp/VebdHGp+P2e
	 kmfxpn3tZ7zjIy3ED8w1R5bEQ+posJY28hLYG0frvPfSGScQdGqUv0ffakG3/TCEoi
	 frRrINu+H7oqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02ACC27C5E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 01:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171772244277.21713.8544977601338630213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34508f6282fdae3c5f81ae67391373070f830ca3b21e9f71a456f333a6885ff
Date: Fri, 07 Jun 2024 01:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717722442
