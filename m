Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E08F396599
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774481094; cv=none; b=s8Z9tLuX73eJjTSBIOCGiKHsCTxkBeulANQAT8bTckRfj4VL6RJEeHOHuIMG2lW8e2582CCXnlbgTJvN1GoxN5Jm1PGNnL2BC7or4cq5VyoVN9PS+VqUZ0ZKV7i84ahBYlOqZraFKYHC4x2oMzAWQ5c1hZAMWP3QKulR8dgxEIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774481094; c=relaxed/simple;
	bh=c20pd6ssK/q8Z9O6zVVENZ1T/IvpVtJp7r43qyZKkN8=;
	h=To:Subject:From:Message-Id:Date; b=nV71iz8PZDnt0GE4mzEFaqwJ8ACf6c5wZ2Xl69Zqjq3vAki1JDAy+TUaaddsA7GEeaJawuPVQIQh5wKwvUqZiYVpBchj3rYe7fUF/rsUSsX2jGH1fvOGtpSWp3bTWFIkUqwgitUVP9O490xB07wwVa6Q8gWQVKeb3ojESoAPeaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVHwJdE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVHwJdE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9CDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774481093;
	bh=c20pd6ssK/q8Z9O6zVVENZ1T/IvpVtJp7r43qyZKkN8=;
	h=To:Subject:From:Date:From;
	b=IVHwJdE+9Tml4O1qGxY8z5i2LswIH49cc+PY0SPb1VPE4PHqJwgpBc/M+Vqlar3KD
	 PsgUUWe9pSJkhoc7W7DifLjZ3NmTNQSu+0U6e4ZcVRpdl4aXjr9+gN8h2NcCAMHNbV
	 ddGuj0v2rEkkybEn7loYO6H/hA71slS7HGP2HmiAfN3oVT9YOyv8Xh9dS7P6y5SPbZ
	 +9ushEq2DJ7o3I33wH1o1vEPUszczLFu8mCR5AmlFEPTUcH1MC3bop3fVqkQNLo5Cc
	 J8wV6v8N7JlnRiuaAOiLdfU3WM1tNGODCVG0iSA7o6yX7+qro+2UMTUUeFdOO/jc17
	 Icddkp8LJhZEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA10109E522
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177448109359.2062.5080530959053098841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c155d322f06303bf7714b933ab469ff3d9373e0ee4bf441c6f142b1a4d106bed
Date: Wed, 25 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774481093
