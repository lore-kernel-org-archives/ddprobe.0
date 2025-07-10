Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBDA017BA5
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752134393; cv=none; b=KXZeAhEOnCF61EmaVGgYns/qCW6zoxNNFOseFyBlzmxM9CbzQCLw79qG9AHGa8UcWCkInVhEq4osrAlVxHSxSkJlMFqN6fCC2M/ZHqtG7ykeGOyGG0nICl2yABzxyPCH/NAChvDonXKjZJLM2PeGjqYZR2LEFSTorkegx/fsNL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752134393; c=relaxed/simple;
	bh=zigtej1nxAsnU+b0YoZh6B6bGX7oQDHpJN+yoFWzGIg=;
	h=To:Subject:From:Message-Id:Date; b=uBUejDXMneJPvzcvkPqA8QyR4ssWPjPiWMlnzoafxkzsWF3J4T54wa3cw3mB1IPEUM9Zm2SPG03ZBahfOU7FmSqT3V4WjN6Kic7zLqP1jeEXLrNrNxalRjvesPma73ODle8SwdRaUVZ+M+loLDm2Y+5UP1tKLvUdSheruwGsvj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfN3QWV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfN3QWV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1359C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752134393;
	bh=zigtej1nxAsnU+b0YoZh6B6bGX7oQDHpJN+yoFWzGIg=;
	h=To:Subject:From:Date:From;
	b=PfN3QWV34Yjr/fUNy+OwLo5cb8kpBSXgAVcIfMBpUP15DChqlcM5SSElMXHkHHR33
	 WzJRWatkPrv+90ciVPPFGJ/eUNpYjdz7ofrSHADA09gPmaJvLu0STIAm9x5PItpy2w
	 tQQ7ev7jnhkPLvGzd+9/iO3BLe54S11H3FLeTeUpMhjGOfLXtFSgmP789LaK7G5/Tj
	 k2TfBn79TtGwTzUoX/oRd+huEsz77dAK576+MYuSBPmkYkPkV4Qksm8P7dxwDa0zE9
	 m8hKcF4pK+o2HBi2bQYjq2glyxK6A4ekEqqIZhgS0MtOs8HkErbrnsggd288JKEWHQ
	 brGiln6m5+0Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7CCDC83F18
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175213439367.6739.8016610675052241171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc756407f707099051ae3e176591491dc6dd9db4857d6926082fca8857413ec
Date: Thu, 10 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752134393
