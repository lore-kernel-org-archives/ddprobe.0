Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0872C21FC
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765804374; cv=none; b=GsxKdyGMDeJ6Lm0Zsk4YPO8h+4OfFjOO7AZvclcdBnM7zsFJaa8Rhl6XJZgvJhnpzQ6ENYR+muZBJTjDPhjWkpLzRHf/sBaty7nE4iYkYJmsiarqKL9uSbQ15ZKVV9Ck8YDuviNHAiK0GzJttGnzVb1Ktn+GwG+F4rC5ZsNM+Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765804374; c=relaxed/simple;
	bh=Jlr1O5AxfcNmh4HEda7EAI966aYp6qeIigmh8rJpoGw=;
	h=To:Subject:From:Message-Id:Date; b=avBmg6/KQz7slHfQM2OKUK2QGF8NSIMvYSpWSqBzBWkyAbTT2igE58jUuDeNy8Cnj81U/L/SHqjlcrODjp0Z/mKSTBpLujwytknS+2LLfvfBxtdeXiSRqCZUM5Lix2kycjaiBS4kmI3s8wNQzYp+f9CBCPrhO9BjxC9UDnWpgB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGcZcQfF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGcZcQfF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9411C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765804373;
	bh=Jlr1O5AxfcNmh4HEda7EAI966aYp6qeIigmh8rJpoGw=;
	h=To:Subject:From:Date:From;
	b=ZGcZcQfFsdFb/tCgnbfJHJYHYKZMOgW9QebAViraWLMpPWY2b+Qu0+8xvCq0Uzr18
	 p12icpEIbbe4xTyLIm/+YIB68n5uy9Ku1uArt3LaaHOlKn1kbksNt0RhTOEdlTfkkA
	 uceq8fq9hKEliSOh+gJfeTNJiNZQ4Ry47xRJ1nfUg2Q/bgsk1FiJDZWKtUdRt6mDK/
	 IR5NkOkbgu8n7agYjSGcPeEs2sd2y8P28KAoW0o/JsTE6Pv1VZJMCxVqlZ5d4lJeIw
	 l2gBCpBcyJyKDU4g+v9KMW7u0+JZtqPqRBDobkJFVuetfXK5B3Sv3toelC+5/Epzu+
	 hdoAB4jdH9TvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967B3D5B16E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580437358.19494.13816490501097706733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfe985dd85560f28402cc703c93589505e4fde4b9fbb8a03703debf2a7546155
Date: Mon, 15 Dec 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765804373
