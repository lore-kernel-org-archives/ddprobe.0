Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD83B661
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752106794; cv=none; b=nV0YvAY2/WBlrQXfQVrkcffwrZjXN6sVvfZNOyoV36Bpe8gzsoDI9fb5pQdu8iwO5XOWrrkUsDYMqq0kQKmRXbrihWP8wjFxo8fXZjWq8n7IFIuljhEu7IpCxuiC8kU/0u2IXO5xtKTO7c8ECmYozZNJr3gE2JWGC/8Yrx1V23c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752106794; c=relaxed/simple;
	bh=F4HxkF/IDhweDfxz4o9BBmoxhfrATIE8xYgep6wx9C0=;
	h=To:Subject:From:Message-Id:Date; b=Z+EjqwVnTKSaCGr2GsiaExAu7syD8r6JsX5Mn9M29u1Ca3OeaiublohHO3caE8CGd7sJRI0Uliwx1yHTB7d+pjtO8FnCg8R0cSGP6i8jKVdjLNg7d6E8Oa7FO5OqaxGMuXFo5J3e8OhmShw7Z91IFKHQ1jG6GqtAmL48nWufBlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q79w1bRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q79w1bRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21ECC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752106793;
	bh=F4HxkF/IDhweDfxz4o9BBmoxhfrATIE8xYgep6wx9C0=;
	h=To:Subject:From:Date:From;
	b=q79w1bRtJ2Kgpvl0kWp1Ps6rCFZwSG9W6DImjpaNGI2RlOcsyrabPm58qjk7nLnP9
	 fDfPUypMWwroQ1GKTBMFXQ5JEUGsSRcVYWm+6oXRRKYsFQ3lddXUHOgtV5WIEewOy7
	 jEwyPW1jGcptJyjE2UHIhDrZmLXlDZKsRmq9l94tM9uDkPnqdVyNU9GAPp5T+M81En
	 NHyyVgdPKIWvs4AAF/FkLy92LX7PBiHKnaMjgOynBNH+9OOGW47pj//MtR4U/qTMnf
	 ZbFyp5oHrZU/NECcIvHba/6U+iZRXfFoNqdZUZlu53ruq5MNb9Dgi8jr5SHrg3tBWd
	 DpEYRqLpNsqsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ED9C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210679357.15463.785959131164680790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 951e438381450a39d318b9ecf5d23a8273e2e8157c11e0264b8e518e092ce34f
Date: Thu, 10 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752106793
