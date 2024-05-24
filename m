Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F57E82487
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 21:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716587603; cv=none; b=lWpoAMxWj1SOLM/Fxlih8qYBFvpSXA0ZRGhNLFtco327momFYLlF9ClV5kA6HrH3eBHyKxHEeFqNkxpvXefFBNtdNshvrpy/S9AHuqxtfIqYojm5fIXjggDmdMNBULHCxXFd4ifGr8EyxFkEmVu3DqcYLM49IwVBq7BHMf2FSWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716587603; c=relaxed/simple;
	bh=W1qgH3qoBoXpV6isvE+sBm79FmlOjAaZ8xH0k//WUQw=;
	h=To:Subject:From:Message-Id:Date; b=I9ZDd8Iuq3ypLXR6t6B4sY564096Peo7dXMJQGfAfOnNT67iTrpJhawuYk9MoGnWpFztfXGHKZhgKWKyWzy6hq7IaEIOt4bTA7pZG0AMjmmOyDUnxNoAUBXZNR9zqGOursj0xjx3K6Mhu9RxV/sLvgaDwBAGdOofHZr/3Fb4Ac4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktbzM/Uz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktbzM/Uz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD85CC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 21:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716587602;
	bh=W1qgH3qoBoXpV6isvE+sBm79FmlOjAaZ8xH0k//WUQw=;
	h=To:Subject:From:Date:From;
	b=ktbzM/Uzfwixf4gZ+K4uekQd38tmP02FXh9D0Up5G/heMxSnOXr1y+IfR7xcaT8or
	 J4DmV4nBUMkeiS9a1suIhM6qskqqe9HygwYqZqU15hyqvhOOMyB8IrBfpFTX7SJDtz
	 oUaZrEvCu2YFSzld2QhmoEIcJfnJ6904oaWTh9sxv+eqFvURicHhql3Q4ePPN7CPfR
	 Fa86u3DNVaDeFSfGM3NH3dLKHfKyWxyzyivhwMnNbUiwCr4I8r27dMqmMeE6r7F5Gs
	 jROe+RHYJyXwDOTbluMI/70/+RNFwrDVgGcNNipi9g4YA1rPH7gJ633mP5kXDMOZk6
	 x7y5M6/I951kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEF0C25B7D
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 21:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171658760276.2669.17341197378672623151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a413d9d4ffa149bc5db3eefb5a0ea9257648bc235f2e5bf7000a9babdf7a42f6
Date: Fri, 24 May 2024 21:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716587602
