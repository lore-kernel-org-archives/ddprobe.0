Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A73A22A4F4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758957594; cv=none; b=u46uMsxbjHilEEctnmt5KqRtw9RtYobepIAJKowZKCqbK+OGm/hRd4r5lDJVBD2wMn21SSOP66hIAPV3ZO5ykQUf0Fd0+mfxBT9pb4zHGxDncci55nVJfFbns3udXE6snAcEUeyMxwR1WTUSBHm3JOXyP9NDz7hRmahCA5U/MVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758957594; c=relaxed/simple;
	bh=pzVSAGDjKlklugBQoFRqRcHDNPIj1NWrmLBNvcbs+f0=;
	h=To:Subject:From:Message-Id:Date; b=o3MrGqE7uGTNpsbw8OYUGwIomk4Kj+ASBjEwk5ND3zFE4DA1AyrKk6gc1UgprXhWhmFxRJJKnHe/8EzJwtiwX1kNQkhFoNNGM4c1Kv39hCTai9uKnBX4NHsnf/MPvFlkyFFgBXZWQYB9bgUP60a5O+9XXQgs4U9anToNWx5C21w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZQXBjOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZQXBjOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8208C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758957593;
	bh=pzVSAGDjKlklugBQoFRqRcHDNPIj1NWrmLBNvcbs+f0=;
	h=To:Subject:From:Date:From;
	b=nZQXBjOD7LRYOjAJYUq8svhsup5IW1KUcsneRJtfVvl9T1rRzlICKQoLAzdZLcIk2
	 brrh35bA8L09S+5l2uL1RnvuZrnxWc+axc0xby2a7QPhGYMzt33/+iD6qlUxhVVXTg
	 vtJq528lPrHo14JsB+sP6baOCwaAHAC0ZGiqgMGyHW06ma3FmYIJjcbIudoiVEiQnx
	 dF1yNVcxVC3k8gT9ShVZhWlZkLAghTQdNw5oRZhH2z9k+askG0Ay+Ip/MqfS8al/4R
	 yl+C95Z18vWDow4twOpTHeJ9AtG+x+gKWT7cux4PC6S+3jBXXOiUbrtz68D7nKl7i+
	 /WrTn/Iv/O1Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95158CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895759358.31547.17736023333548929251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1702cf2d8932a61a7d08f0f74863892a540affa5ef68edd8aa89691d4639dcd0
Date: Sat, 27 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758957593
