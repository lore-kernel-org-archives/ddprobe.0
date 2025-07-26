Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACE61DE3AC
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753519794; cv=none; b=uHbB+69hdalylivuH/JWrn1SHaQcyqFvBmLq+0YO1EadSIiua5G3FtoSzHZ5n0G3sgIiieHND0Qui7iNGyuHtWktEVQDOywUiIfZrskxEshBqDz5dmyzphWjsx9FhU8TeEqTF7DrtA9pmhjb/RN7Tj/h9h0F7mBhKY3+gLLyZGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753519794; c=relaxed/simple;
	bh=BSpaYmUVqowHN+czhETPdrUvdbBvfhPmORumzx6xwY0=;
	h=To:Subject:From:Message-Id:Date; b=b7B/j2u9VhTALLxhMTW4RMu+rpcP4J+3ojjdRUg3QJrFOXRXPklWsF9txRSIcdjRnOJPIkLwWvudRCI/KoUmehyno6DZpI2cvhQ1jOZVc2VZLsIEIjkhexJ5kkz2p1yCFoMW/onnhQh2nTKACrQGbUSf9lyaqJPDZ/TlIGjuXT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWjoDytH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWjoDytH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19E5C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753519793;
	bh=BSpaYmUVqowHN+czhETPdrUvdbBvfhPmORumzx6xwY0=;
	h=To:Subject:From:Date:From;
	b=uWjoDytHS5eGpgUFyvS0JkGGVHiN+OUcEb3TVCEIxBqGbhOOOL1ZsIQI1oONrA0Em
	 6SUOkRioJXIPQ1cdDhA3gjK5cY+aXt+17WNnVInP19gOaQ9hf5EIXO4s7zg6mBcAFX
	 X12XYr54sE4SGjbK+K1V9iNbVmZXtxv9V3KMRSZcJxltBn9Hgjz8DJPMoawx00VcRS
	 Vz4u7AAMTfYLAj0hl5qTyCzTAfU2H0spIwqqd6E6tJZztvsOIzymPa9qTnpXbRXm1B
	 /juoApNIvwWhASBMOQkzfrZEWovqic0/UQiOBtlPKQtk731xcQ96bvKv9ImEBhcPEy
	 0gK3cWuLB8oHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4B5C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351979361.17817.17453263811247054157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4fb328cc0b698bb57490d1117c5d8f9103aa83134f627ef1b077f738dea08d8
Date: Sat, 26 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753519793
