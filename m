Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5D935DA64
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781380594; cv=none; b=OhDeFign1il0EyBYq6+VhBtyJkCx5kfRw2UazQJI6zUy7EEbrA47jdpv2QaVUkaRkEsITTBPRazfBa5VuMFwjQDH0FmKG7xs1Og2D05+sEwfm6mifjHwAmxZtqjCEWq8f+PxIoaci8xs5UWSrVzD+ZBpMGSd4kQWLoZOR7Yw7RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781380594; c=relaxed/simple;
	bh=6D5WCu68Q4a0nf03pvq2grfc9Rn9AunsNvQiDwjCeUA=;
	h=To:Subject:From:Message-Id:Date; b=mxFeglSk5GmxAEo4a4sm1oa9vSmMjsE8iWRr9RWl6hJPWp0gYUKPU+mrcGibrMoc4QfjF0Cho0KtzMoxFp/3vMOOAIV95kxibciu+s4Q8cKMdQJ6F2Ud3COe4g23VyJwh7ii9gb3tlW7CcDsLclvU1LLn68hPWXEAEdsxYdUVG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJSOWtfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJSOWtfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0388C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781380593;
	bh=6D5WCu68Q4a0nf03pvq2grfc9Rn9AunsNvQiDwjCeUA=;
	h=To:Subject:From:Date:From;
	b=fJSOWtfbyBt3nKmDN5UkungZJvGpV58uB8X7nho9i0wXJL1CCyK+iRvroMWDmSPsO
	 eEsPtctBjkfiE4eHNPhA5c6Ew5wjlk3QlfU+qMgZ5L6QPn5ktNrdVzFuSB1WKIi8WY
	 jYBbf3b3IglvnSW8Dhm9vgpD1AWTOLcS1zBzx6HfJ6zHozzZsKbns4Qg+MgNXKEhUZ
	 QrH+W/O80hpSg9csFNDpSYFUwX5+2DyFqveyUOFxoFw4BNoRlUGJELusb5zvk3NDp4
	 YQoILQ6ctcrwpaM9emW5WeZCg6DHkQ3xSNFpZVsyJY2uWZe/GmLNcTOigLgzmK0YZG
	 cBHWhLrp/JCJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BE1CD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178138059367.31007.1936505016306151162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567d8beedf0cbc899a01c71cc56f4eb9b403a2802d9e6b6b5a88e18ddc7e5c65
Date: Sat, 13 Jun 2026 19:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781380593
