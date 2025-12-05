Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B55B2D249B
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764936174; cv=none; b=Fl6uAoBDuPuKQnLJuimMqutKvIPbt63Jkh4aqHg309IQFOlhN97PRh+IDM//k97a4nqzKcrP1TdL1OyCBZWt0lno4DymUlo8GQVTjn1pcEClbGZQ6E/SJdBPSxGtQYBLYMIXP/J/JRvdnI8NPTUpmU7gQrRMAQ19oTI92AhmwBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764936174; c=relaxed/simple;
	bh=aczMveiJwZSvZ/JbcsTV+oJ0QWC3AJJbhLOJA12EARw=;
	h=To:Subject:From:Message-Id:Date; b=M910Jd5h2Rizf1IMXtMFrRb9GItI9k503fDZf3Jdaja/VaK1FT1+VrBxtQnp9GNQrAp1KznmDIY605tK5ogOh7H+0IlaQFTX8aS2DsdAYvjeqQ6kqc2mHnstJRfzqrxVU+4Zw6BMk9DcUJOxBjxVjVnUgsbS8AFrSNtbwMAr3/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sR/YAQNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sR/YAQNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D34C113D0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764936173;
	bh=aczMveiJwZSvZ/JbcsTV+oJ0QWC3AJJbhLOJA12EARw=;
	h=To:Subject:From:Date:From;
	b=sR/YAQNB1yolFfJK/P6+joATDN8bhn9df+Dnqq8T+img5BhAy1wYItjs1AdLnlR2M
	 QGxy+P1KC2qvIGn/4Dd9DTmxfk4ZKpIYb+IPaIg/vtmwuT41eef74waNyqx4rwlaUS
	 PUM09XiDk9XEsWXELQoK5lZCzAenRWadWswD6nszD3lERXzVlGqeVbOIifuM6HUKTw
	 h9mvTQuc9QWbAV+Lv3nPRm8xQaE2gvKA5TnDu2AKlLN7QIBaJAS1SUyA1kQkYF4iZm
	 EB2VdNf4rUNqLjAbrySOenI/piJmnILWIEPtCaZ8cQ41ZuhJVM3hqC3+b1wHSsE6fu
	 UwjkJuiQRpI/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AEDD2F7E3
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493617359.15776.15522440917978978995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754ef83afd8ae76e5d9f47d83ee9a0b7b22a9cb54d5cd0e161b1da0245cc17fd
Date: Fri, 05 Dec 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764936173
