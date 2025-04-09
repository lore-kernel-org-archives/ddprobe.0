Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269912147F1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744181994; cv=none; b=MARMBmOhk9m5xfiJSajUiCl9PYN4FaDA2ov5A0ZQit+do0OH1qWc+x8Kc5085yPmquaxYvUt0pbaeQO4RFiYE/9UP3Qnq3nRcuji7v4xIBxREPsdf4Eyi6ExFKnzo/mwmc+5TKS1QS0Thf5wjCHRJ9dhp8GdquAmiwScII7gxQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744181994; c=relaxed/simple;
	bh=k1NhtjSG4vmQ/WRYbz3A91jXb7VTGNBXRZYyJrRaTY4=;
	h=To:Subject:From:Message-Id:Date; b=OkugKqg8kEw2uAdkyhxZ/nxEQJHOoFoR/rvaQzGlYw7jyCoBgw40uXukUG9JwZpXSFm8CgkUFfTIZZUb3QUn9cN37whkMfCgp+OnKb517VU46aNQ4dvQk2s1TdBo0EMJOMTrU3IM2TUk2nckj4jUhL0k6WyBLvPbPpZUM/JJqa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gmj1V6mB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gmj1V6mB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A327AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744181993;
	bh=k1NhtjSG4vmQ/WRYbz3A91jXb7VTGNBXRZYyJrRaTY4=;
	h=To:Subject:From:Date:From;
	b=Gmj1V6mBds0RPWGpzJrsF/lx95kqg6XMrf+9vreGlOn39M0VI/ptf7eDLLqoLmt7O
	 d4Ve9jXW4eCIA6I22k8pJryZR8aOuK3JzNqwjKZfmgscZWSp1k9H4qnncIiDptlVJo
	 sGfjvsVlVZm+OnEtRpzwiFsdM8HD5g1iXd6zzpW6iu4EnSd9LfqP9GZ5Zt4t1qVRuu
	 xt6988fLxu7uxbVIA89wgzzaUfLthyf//6WpqqQpyYeotFFxO5oPMVBF6pHcmLdlUK
	 pqtg3bJGxCP6D9H8v+E8kRrcJygzMqga9vvalnv2wc7S63eOSbNlX04+YmHzDy5kao
	 F0kgU2PCvHIbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93814C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174418199359.2387.6592606520985354246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fac3e9a226f9370b289867407dd4ca7a88a09dece23ade6da6bda829c7489cd
Date: Wed, 09 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744181993
