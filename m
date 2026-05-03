Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318171A6830
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777802254; cv=none; b=gNkPCfPYQicVebO+0Jfqa51lRYoe4Ynj80s66G1gjK71PrIRsfE96OlIC8SnUNAijSUjzpY5rDIAAaXmyTwFSuEJBlc5j+srLS4hCvk4ZFB4Id0ChpeAMXNFfiqxfKPXNcS9rGBboiAfsWskP5+YOS8vNdym7/66LUwC40Pm74A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777802254; c=relaxed/simple;
	bh=lzf9+cRsKq22tY+UH5B4p2fb/HzJvXG6LGhYqfK3e0Q=;
	h=To:Subject:From:Message-Id:Date; b=jEaPjWIEAQs0Q+AQv4tcsCm5N9UhSdbM4Cd0QZTnLu8favsyhY1WiJ8ASzSDcQ0aJC8qdtmbtBp7PxMNkLxtposofIqBKfdUhFpD9AnvDURIR2ptlNlQxH8TzUkXcNt7pHBQbcrBhmKL3nYUEjbyRs3P216/tPYDwy9kZX0+V2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ep16U85B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ep16U85B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10ECC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777802253;
	bh=lzf9+cRsKq22tY+UH5B4p2fb/HzJvXG6LGhYqfK3e0Q=;
	h=To:Subject:From:Date:From;
	b=ep16U85BnK5cJQoau5Qkd839P7zDZl2B5kmq/IQhcHj9fEemX7gw1ZWgNdNV6n464
	 gxQySRzWTqF6cw0dHI95zqAiB84UqKsEXppidinp0+FSU3RDG9OHSSDrE6lTEbl4QM
	 JBj4hBQ7sB6wmwFvYFRENJ2EW8T+weWjSm+Fjqjzxh1s6aOwq05lY7dbouiUCVejY0
	 x2EsLQJX8rw3HSweqlNlNpiqRZ9dF571qsRFSG9bX/83hIahmvNncwBpcr6PrnUrEF
	 DSvajd8ERC6BnvvPwb2M3xDKp8BFE1kb1YDxsdBoV50EIPkpl7BnZghdTP/9yI0yia
	 0lb5pjB2RyWJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF617FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177780225368.8037.8123453204408175885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c52cb6cac0cf76a3c4f52195d7ee5a8a0d636114a6778fa5af793e21770d96
Date: Sun, 03 May 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777802253
