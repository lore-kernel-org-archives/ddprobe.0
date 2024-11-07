Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B47821766E
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731018954; cv=none; b=rxxfgBix9H8Qtc2JRancrhu4ANYmGmKylJdS7/GmKfF4qNzBR7l6Lnmqs6l0yDf6RVE5p+/JHASFUwfM/e88MsmQmTqRULlVAY12l452LNuyeo1Xz1habTSyQaOXT3d/4aHcYpq7Lv/UEDvZqz3zmNIUjyTtZ1YTPdsxLXJeChw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731018954; c=relaxed/simple;
	bh=AyjA3acsl6UoxXgE6PJWS+Bbae3pjKN8GUQavZdZ4pI=;
	h=To:Subject:From:Message-Id:Date; b=aXxW02WxuLO6s7xyznjwF/vukyAYVNanN5pPfI2h5l6ss8yLri+nTTzeCE71vE9s7J7y4Kusdg1zmh2xzrK56dGMoJ2/n68FVrF4gamBkhl4HoBtjle2VVn2rDgRktswhvlR+31jQ9xAVN00tQNYGVjK50fdtwaxjrcblkacm+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuYYvd7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuYYvd7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA269C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731018953;
	bh=AyjA3acsl6UoxXgE6PJWS+Bbae3pjKN8GUQavZdZ4pI=;
	h=To:Subject:From:Date:From;
	b=HuYYvd7whcxVtsIEJVeSz6MCgv0M+NoT3mWlJn2OXkbUSARuP2UMz8aLUHfMzVvv/
	 Y3oFu0gqQ03xEIMhWhLx/nA2I+0es2dFgtE11Ic3/eL6hBc7RVnafeCN8s2Y/oEnTZ
	 kW57yCYrMJM1t4pN6XQTZfkQKSeqMWmHsw67qqxgLzi0PiZOnzDQ5PP/R52n/Sek55
	 UMmseycNWiMRmM045KssWCDh75qBZYfC72qEK5r03gVRAZgQqrRz+4u09hYUoR9FkM
	 FcelBoAGtzvnGjRQ93VPZt6JBhHrshPZvOEEUAeuSZ3EkaaFakcoWuC2YKyx7Z7tVP
	 bApTYE9PiQMpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEABD5D696
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173101895362.10969.16218821014746859119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22cb2277bdaccd4f6b26f15bf1f71fe350261dc6c61514ec9905e25f75b1b4e3
Date: Thu, 07 Nov 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731018953
