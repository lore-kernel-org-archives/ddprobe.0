Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DC557315
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707460097; cv=none; b=XGsXo42wAifJF0WgB01CyS8XsVZ2GKP+l2A40/ws1ty1ehvSXpcyIoka+6pgF/Ws5PUWOnpkJcArpjDPXU5UxOi62RV0bVX3qOWZODG2Kuaqrh79jQA9DDnoTnOnPCpwgBwyq6w8NpMT9fuyKzb2GqDW6DNlaA/54qGTVMq7l/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707460097; c=relaxed/simple;
	bh=TXbwaoicdx4XrYu4scgE6DvSz/mMVD2BJThdsu9Fujw=;
	h=To:Subject:From:Message-Id:Date; b=PXsbJpJkUGgQH4JoccQTypUk71yL0eJADXFZpiZl4FFrPdCtgQJvj0cQ9yFu/G+cdT0lkwc+WLKrnoO09RzNH89NyGPDQ7XWxFxlSVd4bQPey5HJePAOZygHasy7wwZVWRI3V5ObSiRKkFWWWt9wNRszWZHF8F02GwAIOPFxsvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+cqLe54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+cqLe54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8828AC433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707460096;
	bh=TXbwaoicdx4XrYu4scgE6DvSz/mMVD2BJThdsu9Fujw=;
	h=To:Subject:From:Date:From;
	b=G+cqLe54IYy+HMmJkfo+YI3fbJ/t0FOimK3TrxqAZsXoVmV4uQSOSGit/0NMgYwHI
	 wY73NBmZjizLSbLaowellD7L4Z3JJlaN6Dtrj2uIPH2xoM1GVBWyIa1p1QscWrfFfw
	 TTAQ4YC5I4AJXQDsJ8g6fziQruqn1XV855m6emt/nxz/v4k7d6fh934BFwiiOrnN6o
	 rEZ/Nu93k1eDvWIElbSz21yb4rz8pwuMYF4gAIaYAux7GVUtEZLjp/1YGpV5k31+w9
	 OYTTq5j1VEpr2OovCkXdTl+nO7nugcmTjOZRKA1QmxZ6OHHPSlgHSbslFhfjmrJII2
	 ytG0pB9KgnaDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69329C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170746009641.20893.17755983432900008997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34843b75f486d8152f5378438b23d63a036a62c39aa0a22478db7f71107e77da
Date: Fri, 09 Feb 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707460096
