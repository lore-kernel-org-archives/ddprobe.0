Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303041DED57
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769427234; cv=none; b=Hrgsi/73DFZ9lYgJOHA+6Q0wyoHdjIhcWVk3XpJojdEE5R67u8d28xGjH0X/uyQXeTmhBTUEecy1eGvqVRk+VkQFp7AE/3R2DnQEb1nF1GmaZy0bgx3xwKBOfb2ShQ/5SzDIfR7IjpfycfHFUlxhdRCZr8dNCKaSPc1qBh5VERE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769427234; c=relaxed/simple;
	bh=IHLNdyqtL/F0DVu6SnSojyV0QxqGA0Ksf1Xd3m+K0Eg=;
	h=To:Subject:From:Message-Id:Date; b=kHwemdEqCqy1YqyqHjMeDGLdAY2dCwgk522NKZDahJMVd1krnyyenj5uQe9/5fHT9e37YoE1BWr5K/d7eVniJ5qpSEiqxG4RYS4MXrFkbrSdoTWu/vM+iuwiLf/Z/xzn8M/8/3EjVBd8ncL8KbE7BFaI7yhR1CBPTgfx2nhLuqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1Y5vvIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1Y5vvIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0695C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769427233;
	bh=IHLNdyqtL/F0DVu6SnSojyV0QxqGA0Ksf1Xd3m+K0Eg=;
	h=To:Subject:From:Date:From;
	b=o1Y5vvIgN5nkTjWwydmwothWPmV6X/7MOGApqkjzwZaGKdcnKYm/QJVNhLbmt0RK4
	 zWC3xO4TTWI4a4rPYL9P2+ehsd3qXrm3APa9i1VYE/b7DzA/DIrcfeuGxIkYroimdI
	 EwoypXr1V+pHYzfK7qP5cTixWYE730Os6tX0HO5jnL3er1EUAa9JBIx0aj/cwK+u8g
	 ctuzHXY0eL8/sVXCc4nJXbpkMIGqrP3n0W981x+DKgt3vSAjpirjzc7URacF7GBKaM
	 DI48LcVESLKg+EIJNxlMqmomw3jgaHjARDtgVtQzf0KMWjnrVftq46cTKJKik4/sVz
	 H6w0IDT8eTiTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F34ECF65E1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176942723357.28394.7318327753782667617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a430b58e982fb700fd4eecb80a9ec28ef31451b0b1561cd4131c6a50551e196
Date: Mon, 26 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769427233
