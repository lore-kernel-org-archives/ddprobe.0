Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E53364D
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716771263; cv=none; b=CcqjaREZ00ndhQybrLY81Z4m7xEWL3FvESeH6hxfX/7FX8B1sFmOy1MtstMhco+MT+kimeEW95LZaRM0F3vTWWAiqy8HJ2plNdYsYhm/kUBQRaKwVDlnt6s7BdJfFGz7CiTZ33dC8ENx/RdRi9F5CAOoFgpVWI4pRL1Kz7Z1YoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716771263; c=relaxed/simple;
	bh=6AQ3gkgAZdRVK1DmHkrtoVBhxNkN+PBsHJ4pVEQAduc=;
	h=To:Subject:From:Message-Id:Date; b=HxULL2YAivTy72088wi5y2ytQPKljDIuZxekMBgagOdagfPLOCIe3d4K70vlQOKviE9wITQ0gISeednUCMYkKJi8X1vHZlwoWFFwoLNvlA+MObreQ3KY8rMoqH7gGkxxX96WAdAqqS6JtYGKTn6DnPkOyWkp//kgQZ0qm3eV240=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufZBDg8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufZBDg8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6DCAC32782
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716771262;
	bh=6AQ3gkgAZdRVK1DmHkrtoVBhxNkN+PBsHJ4pVEQAduc=;
	h=To:Subject:From:Date:From;
	b=ufZBDg8RyiwJ92dL2lKaEfy65suKMkA/xk+E91YIqeQhE3ptDBfO/YTKWO3xk3Jho
	 2Qq9q+fnSR83rvoyB7ICHEy584MFBrVGIIIu6T+teFIUJpaK2ZShQTsrthnyPdD8xT
	 aQ5AAPQxsejdKnjaS2f3ck0Ysmge0usZglCrP2A1jz9+aHdntw/H4ly6L/byvIK74h
	 K6WOsz3MJEAqmbl1GfAHhy1FLz+QmMXvvEVGrEY5zZ4bMdKzczqk6NXcCJGy1xE6BL
	 JXMslkxOaUh+w4vBBgSwSCl9ri9pCmknkqfSYpJDkRj7n4r1eb6MpLqeIVDrjkkyYo
	 UHaOFlLUHok+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2C31C25B75
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171677126285.20312.6614123491993110374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fbd1fea84fe619b29bb4980b2b153deef9f3f321284ac240b2f5abea02263b4
Date: Mon, 27 May 2024 00:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716771262
