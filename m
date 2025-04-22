Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41946212B04
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745364594; cv=none; b=jSorB99clFaoYrMxXTHtWy3mxeNAzqrDK0psh9r6CtEH8KrVCi8Wd6Q+v3fl67QyQY5LNR+y1os0YcWRHe3lE5BAPwjFjRbFzJJI9VkSLCrgapMUSFamZr669uzk/ZM81qfTgEzBxsIRiBrOnDy3UGWos5DFjUBJVM8glTVPGLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745364594; c=relaxed/simple;
	bh=2ijHneWYCZF0gQgbVMCVxm+tRU61O7mEaN/g0dyvqC4=;
	h=To:Subject:From:Message-Id:Date; b=Z15WSP2kji8Tffasvcs+4J3TVttq6VxoUmCd7OwOM4yBz45Um0043jbz4lS5k6yaQyAqeiKYXeOSvMzpE7E5ak+RgS+qWLihlEN/wpow2OU2lFxkZhaP3a0cv7j5sDScKvafI1fBHCrEEUg3b6sC4JZ5yDvCAKlS/BMVUuVLBZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtFEhMQu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtFEhMQu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A591AC4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745364593;
	bh=2ijHneWYCZF0gQgbVMCVxm+tRU61O7mEaN/g0dyvqC4=;
	h=To:Subject:From:Date:From;
	b=RtFEhMQuTgX8/CXNg+KpqW7lPunUzPx+gQ54G9TA6HUnxOteYV8RPoWSW9mdoz5fj
	 na3hIQpLnCHS7XIhgYbmSLdS2cRzSpszAwBXPyeCRKurZfqqfy7ArextBdtiqbuBLq
	 lME+TW4zDBkgrYpaXqjCpa0NK3YezkRQ5qDWxrhWnu/6cYkc7lvA6x1RcFNrmx2eGK
	 EAnnKffTF/Q+AGn22IyDgOmN/vFicnfpCTCFtTWzVrRvORc44Wq0WDE/0B7H/csPzd
	 YjFUPUtoP+9t33sfbfbLnUkYEJUgaiM2Cs1s70OnenYD7bAWhXWaNIqx4eRmzlxGwD
	 N9ZnrbvVQksaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9506EC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174536459357.4573.8895854415559261551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726c0c5210cc2bb36257d112cf6aaa8a9f38d16e64a2ebd4366257ad4e1be573
Date: Tue, 22 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745364593
