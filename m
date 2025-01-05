Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7AC10FD
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736087754; cv=none; b=MmIEa/whBt/P5RzY6cXnu6EZI8s0egAHntWJCW4YPEz0wBUDryJndfSkB+c4u5x6MWlye5snhZxIW+PQkrh3BuCRSWWuOszjqHDOD2sRyqn+uDkdO/jRp8toszaMnbe0llNKs1yIMNnBouo9Y//kCq2BfZEXmS2YAy3bgMxU6sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736087754; c=relaxed/simple;
	bh=zLPZYxA9DXdLgKnSZIsT4w1XCWjYiMQf/RXWb1cJLhk=;
	h=To:Subject:From:Message-Id:Date; b=o2v6Ej/j4KSrDIrhoHi68WV8bINoBwN4/zySsz+jCtEWG/bcX6UnBiYw+oXYCwuSTeQqnaadNeM/O8FB6NtsRNQDOK+dNyY8UZemhWFdUu9JI7TL4iefSsWwvozwynsDLvkP19KTI7kckxGyL6cbFnG5+dSAFOXs4zEH24MwQsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+VCW+cG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+VCW+cG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCCDC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736087753;
	bh=zLPZYxA9DXdLgKnSZIsT4w1XCWjYiMQf/RXWb1cJLhk=;
	h=To:Subject:From:Date:From;
	b=i+VCW+cGq72yNXH61r0bnjy+LSoy1O66lBrA6iSM8fsGjSrGj3thRI+YdDg1kpfjc
	 1YK9HY2S7x85Cbj1phPflbCogXrCb9uUVXRqeR4c3/5FVzMYCtJnDPA30Ks/Mko32c
	 EUNRNinqvCyRW5YFykOAC3HlgrpOOesKXI/RJX6xr1s9HC1njfj5uZpL+QYLNqRRnv
	 zsGACMUK2PoVTmGAYhugk0rDbphXXP+xl/H78bmGUwUdVR/rjqYoVx0x3vhV/OLpif
	 G68/2t6xlk4uEmz3en2a7ts4cCdGOZTffzt2DRuy1HDahlvhmV9NqHBBEqS5bdlb7Y
	 BTPbKUOzCtMyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968CAE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173608775359.9756.10940646055067701687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af71f4399c005257518e90ee7bc60b33c232667ac3ea0a6697d5d5d75fd153b
Date: Sun, 05 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736087753
