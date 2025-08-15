Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C36428C010
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755270594; cv=none; b=Gvy0EBXkiQk/cXkAaWWAq2gzjDzG3+TGPFouZdfbMoteK7qqEdimjhORgAnQYhs933Zw1dFpwhKUJRkiHdeR2Uv6KZLG1bN/2PiyKAnw5syj9qVG7MqQXtT69fVBsZyF+0CT8ShUMv2M10jvUy7+9DQBNkl6TPmjBULXc9HNoe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755270594; c=relaxed/simple;
	bh=nrwikbr92z4oOLFcKLnShFnUHE7/o63DmW5pxHMFA7k=;
	h=To:Subject:From:Message-Id:Date; b=X8O86UVY3S2T9nnDEbHjz65QlsP6FEzt2KX1wmYw2sH6iUciDeUy3kcOpl5qhxtaJ26iQcL/W+OEIUZGIHVyBFUoBwwtjn+RljgT9LWbV92VKROTUNdejttdKIT4lPDymgE1dfHK/6HifLM0LvCnFSxgLtdqnhg6L1rBJb4zM5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jnul6eCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jnul6eCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4276C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755270593;
	bh=nrwikbr92z4oOLFcKLnShFnUHE7/o63DmW5pxHMFA7k=;
	h=To:Subject:From:Date:From;
	b=Jnul6eCvWJk7AxsZZgZn1d0woilocAist5uGjBzLvSTzBMMSP9e1F/zw/IE+SFwxn
	 476f5zMLXbFAdrlEudba9wsNN0LJbOjliVC193kRugPVC2R6IWowQcn1QWPiIMMsF0
	 2qTWabXSV7oaje9cK86LZu5aeGmnyBXW6EcJcs81bB7C+Nkjx1N2+klLGC7USmnwrz
	 vm849ixgCqQKe5bLl6agGkPAwbABK2dJyNmiJ1mk7vOXt5l+rR801rFVNLt6L2jxZr
	 hgYM6grEi5Xoz6z0X7wR0z56egeyIf07EKHNGNFz/Hjf0zhyYswvfLCxWTRRf/G7Jc
	 0kvT7K1JFd8lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AEECA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175527059357.25184.7466246780490718164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac6c503466d79a8421bd720d09f31c8ff38a7aa007bfdc03f0d67cf40fbe36b
Date: Fri, 15 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755270593
