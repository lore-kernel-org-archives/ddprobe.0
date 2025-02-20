Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7482AEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 03:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740022135; cv=none; b=gGZqB3f2I6yALjK3TzAEH8k/HrtSL3DIDMHumlR49ZhDb8wdSNgY1bPRsGA9jp2HsOC/e3dNsHQ5RCtkvQIjcmgB2szk5OlIkRlM8X9hA1HhC8ofyLk63Ul4rYrZGQLybtn0v4+Npuwiq3bNezrPyIXb9WhaCMAO/NNvru7WNm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740022135; c=relaxed/simple;
	bh=2ZN6y+a30c0BCPfWdUM65Ek0TJFLHEvrQm0HKOfHVz8=;
	h=To:Subject:From:Message-Id:Date; b=tqerKi7m6eqIickjRjqNxIB3Zl82zRxCHghI24xJQqlV9I2RugqeS7Y93RvZv6WCYrOJpg8ohxWbzXhsW+Z1FfNqMAC5p9xItWZihhDN/ZzBAhRr0qm0V7REE9uL9/cBVX8WCxq36pVKLSx8VkqK+oSNGrjsCWbyYEyGgb0FTdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dG2b90O6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dG2b90O6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD824C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 03:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740022133;
	bh=2ZN6y+a30c0BCPfWdUM65Ek0TJFLHEvrQm0HKOfHVz8=;
	h=To:Subject:From:Date:From;
	b=dG2b90O6NuUghp7TyRb8Je5WzWbqRGAUzxhX5NbpyI7kbkzuK7xOkb4VhXsTZd8BK
	 Yr1kVGoCn1ek7hDXFdgpPGdQCeaEtWj2gkwP+53AZXYh46CL6iXHe99/Cu1BljoHGb
	 ThzHHTFGr+SxLuPLj8WTS/PiKc+G4iTBDoZD4fcZGUycymfILRaZbScZQHfz7cxny/
	 LBOSGYySuNoENp4Kp85DPNwHAkFPw6l26G/0wY6CAIM2w569jTVlDiUaf4EgIF82wZ
	 uokVkdLGr3VH7q4dhl6BvFk6pzElOLFf2gNUCur1SZBPwOdBEx8D9V4isEIEdWsxAN
	 g7NEy6+CSSm9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97088C021AA
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 03:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174002213359.25583.16384360022304463104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88333b988d26b54221495ec5c1171025d35b4a1b11d19b507d0da9116b21f6d1
Date: Thu, 20 Feb 2025 03:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740022133
