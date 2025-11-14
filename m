Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D6422B5A5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763126994; cv=none; b=EFvm5IdXAzdsbYFSut+qibs03eAr2Lt7I3R/x/BC/kuqJnO9jTZk8JKUuBzJmRibhIIurSY3Zu1A0YOFMZlbm+X3/5mrK0WVGUx+INTbxbn+YFPDGyY1HJvNKW0Ylkvg8dGT44blp36r08PJouHNfQ490P1b7ZZkYKi61YMa4R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763126994; c=relaxed/simple;
	bh=9Ac53t7Bsf0cBkGexFUtCMcE/gLxiOEQiO2EWMWc97o=;
	h=To:Subject:From:Message-Id:Date; b=uR+NXNu2v30UVxzzNlrfCmw5nqA0GgAloD0LqioTxnzZMT7ak9FeZszrWyQte2wJNJlQ1hfzlKOnih3zD4JVVi5KLFdEg0nw6ovhkcNaA7QZDOazC/WFAZbe5kRogwjPI1hE7A9ViayW8QSwUP83SoAu0fX/FphVzI0xmadJ2y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXuD//v6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXuD//v6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D40DC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763126993;
	bh=9Ac53t7Bsf0cBkGexFUtCMcE/gLxiOEQiO2EWMWc97o=;
	h=To:Subject:From:Date:From;
	b=VXuD//v6ZC8Ick6WKezUjENqpx17ly9OuF9/Czkwa4+jpIy0YLCUH5ifGkChBYOcm
	 W7uvxp514lK1YggkaMYis0/GDf0vm5PpKk+AmhFjbUfPqkB/o5zv5zu18fd0/IfpEL
	 ckPTjzos8zF2FYC43+iAXSIC4o5hKW/ZfXNTsKhACu+gmDdTQgerOL6kx8hJLkLweK
	 PhpAseU4xTTNN2t7Z5hjPrZQBCG3HUMfG4mOSdC0GmLCE6Kdc4wZumdVyetOrWJuOR
	 FfGoIxDezMh3XmoETrQVrMpM0TVtZ3DNWWMfedzd/aIEZ2mjdXFs/l8C3OQw4T4hB3
	 nrbFJqbR2/tDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC61CE7B08
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312699358.1801.15854703053641275057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d866d63b133d21e601722af22fc2439c988330936a0f6a6190ca6ea8fa3bec2
Date: Fri, 14 Nov 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763126993
