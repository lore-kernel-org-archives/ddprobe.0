Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7D818E1F
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753327194; cv=none; b=YrVF6qZ1nhNaJDx2JyfR1o6fwhJlXV7J+fA2TPECPTDDTFMn40EQbz/Yb1UOe3t3uy4OBogeTeNI4lJFlb9vx2v65FF40hrxcYEocoLcc+Qw0OJAezp2eOF38xqoUNYBvZELWgqW3ua6eE5KtoQ4X0VgbWu1iv2RQQu6QRFT2QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753327194; c=relaxed/simple;
	bh=kjt+9ooRojw+hTvYKcghjwyQ8d0cSwnLUCblOotHfbw=;
	h=To:Subject:From:Message-Id:Date; b=KClvFlTsg4xo8cvTfsK0e4OLbKwoTS/GByNS3FQ++mUGULtfVVwFfdKoBRAyFDiwFikczfwLt3bNeHtHkN1++kG3HzFE27bXmQj7mpz2XzzD8S9QG2QmvOSs9mUUxKTG6AZFxX/cA7fHWe0GCo0ko8qGLITv+ZrYexQaBHba9Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8uJNxIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8uJNxIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E141C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753327193;
	bh=kjt+9ooRojw+hTvYKcghjwyQ8d0cSwnLUCblOotHfbw=;
	h=To:Subject:From:Date:From;
	b=O8uJNxITQWfiTrR1gsZkZ6KNef/fxDBIJaXFQ055RBPGqKr0H9l/HbWYVkGeRxRvG
	 sGqFMf2X4rpuyXPMuREGcCH1b2QkufUy0oBuOXRRVzN9OdvxY3gNKuyxmfEJYriT3y
	 NcYel6WG1BOrK6/lxFoZHchwUPKNRV9WY+MNQ3T3qsXGApvr/0Qti3D1wL/YHoLcNF
	 8LhVtrFZbwuXON9jLilJRlekTDzuRYK6vSTb4VYJw71oGJFpWf28fJAZNwQJoviKAy
	 MJAWyyUYIakpooeNnQNA+W1NPdvdtpcY1xFzg85I9orQEgAO7VQAbNAKSXWLQzGWe7
	 vZ3Dbcgc0/01A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA4C83F17
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175332719357.31154.15643388991670188547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cdd1fac7b0471bf984b54470ddc4ab9aba8af9cbe89d6836fe433fe06839e3a
Date: Thu, 24 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753327193
