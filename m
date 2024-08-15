Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F10A17C9BB
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723715754; cv=none; b=AP6q9rASf5/ys+w7JaB5XoAPhjPJ32o//t/L6o2/tZgoGLLC4ZY76AVW4dHDRKQweiZnzSt1iyhQOfPFLiokqqQUosK7t0S/QY7CAFDAGoXD5D4ohs0cvFxLYfPF1IRWmZspOq4jOJBCTgmiJ7acY/kH8B8K6ObGFa0NzwKymPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723715754; c=relaxed/simple;
	bh=fM2TVUvaBQBBUXBsoSgWDcQWW2tJruHJcA/j+q5E1DE=;
	h=To:Subject:From:Message-Id:Date; b=R0epeiiXXEO4waCn3PVoMQfMOv92eboM++7vUjq2UQIJr3psXnbtoxixk0dr6HxY3uZHgMSQJ4Or+oNxscNvQci5EaZv76OWvjvJa15S1dosW8Qd3r7aYcj5NM//YIcb6hqgiZIF/lvB4CX1OBgozq+kxXgebSSaLSfTJXIhqhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdI4NLtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdI4NLtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EACC32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723715753;
	bh=fM2TVUvaBQBBUXBsoSgWDcQWW2tJruHJcA/j+q5E1DE=;
	h=To:Subject:From:Date:From;
	b=UdI4NLtxcx4a3qZonJGyE9CKjyjUphWTnU00B1N2FeNJhphrBJbiY/N/HXzMr2bWH
	 omSXwCu6aJgQXc7dLtb7NBxJ0/dATBUIc/szmzQdjYFBmfrmBu14jxziOIjj97AgA4
	 F8/UV04kHoXMNW29W46SvMJ27mIimalp3n5j8HrZ7aUHYB+vwm0QzxCxEFLaPHo9vi
	 4lckH5v3ooTQGi4SoAOhBcF+vqUu1HfGJBtC/x20Zqq2Z7wUhVJTbaeoURXMOhwVHT
	 BnCJB6+ZKMs/oWfHj7ZgeLoKbngC9WVi2dMSLBlUsTAVagdzmFOKLlwYiVj7GJGKej
	 K6Dkqt1/YnqtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958B3C3DA7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172371575360.21944.1662747209130943259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4a64f3ed29dcc5a40f87bc898c448963fc8e90226e453bdec5156ac28246d3
Date: Thu, 15 Aug 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723715753
