Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B2C2853E9
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767003834; cv=none; b=L0AJ82R8dP7Xvi1UFz2mPl6oH54pC4okkngCqJo5853RbnGeCgYtlIzBAR1Io2dXjYg8v3dNr5b5NV4t+JCr6JldUem3Sp3mSj+IkUZWmImdDvsheZ3LnP2iAiE3J/M899WyzQyXtjRuYQz8pPIHejjUmgq1s7Q2dVsIchew5OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767003834; c=relaxed/simple;
	bh=GSj/OwkAj/mDwmm1vc/FyxSzuGyvNvUYQr1ygwxvyaQ=;
	h=To:Subject:From:Message-Id:Date; b=BJ/vccuQUqpwTwIIYyXI4EiwkZiRZRCV3erfZHrZ8euL5+89imezVvznBA8QFgBB9009wy/u25WwspwU/M423a3l5IFBjbNQUrzADNQc2XV/XbjXleA+NoOcLuwbYD+43TqFUAE1IZ11J+aWiydM4oWPMAyjgWqiS1ofhPHakXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eixNxKef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eixNxKef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BFBC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767003833;
	bh=GSj/OwkAj/mDwmm1vc/FyxSzuGyvNvUYQr1ygwxvyaQ=;
	h=To:Subject:From:Date:From;
	b=eixNxKefGxsHlcMFd2+b6NIjVei+HUDtadvp8hfI5TFjjvi5FZgsHIWcKni2kZoea
	 5v2yq0AgtdwnefDquLWf+o8iByyhp4w6MLVkspT7ObqaI+eBdYT0wCQKRqyIXmf6oJ
	 Wq6F63lQHGHaMYAdW3qrRNmLU9gDYLGqfIhD10TcJd9+h2uzAeyT9CdDC7FamID88k
	 Cd+B5Z0AGIGEUB5Itu7ZAkAlIXuK5L4xKDaNC43hQvKHZw6dQTHG35BZtFZVS7isVm
	 fySj3xc0fEdkKE9v4vZVnmMF6g642uT9jnyDOzlJ5IOg0BOss+4hdlYvSQzdDvjZ1I
	 O8Nznu1coCe3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96026E8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700383360.24480.4500143501757291588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2fb92a409373ca20471aa8116db8d341aa5aed42b8ffd726424dd55c3006f7
Date: Mon, 29 Dec 2025 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767003833
