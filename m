Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9079241EB
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705580897; cv=none; b=LHsUgYCzXrVX9VfIPrB/SCo5hfGuvF/Wtos6uV+QAjjIuu6KbTrekJGNaXF0wEi0DoPqHNHYMhZYbC667enGXNYqYsBpcjd6sVcfnvsKxgSPe3gg4ah1WkyBOziCxtB3Fqp2GYQVo4zJDoTJrolz245xI4pLB7qrZgDDh1One7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705580897; c=relaxed/simple;
	bh=CI+BBpeoHWX0WIpHnyDoym3ZzHXJfdum1APAIquWxGE=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=RdDwqS2QZIhZGccroFMKSvNUvKZY87AfONLZ+6WY1BPXd3FVvP/UGY2N0kbNUWFJbfhwLaC+eoUYVF6Sd8YrBR43DCZWoyIiAaWyWK1pLgI4SE4d3SEZFx0EuTUVJrLu9Jqsq80+5E3c36QCVmv86JgAsH/FsJVGlCPngmzEx5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBGzdm4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBGzdm4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75037C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705580896;
	bh=CI+BBpeoHWX0WIpHnyDoym3ZzHXJfdum1APAIquWxGE=;
	h=To:Subject:From:Date:From;
	b=JBGzdm4fsE+as1c2QUxibBhbBPCVzODSx1WtdYKC6j/b8me5GsW6WlsNmAqXhurcs
	 dxolCodVbAi1RnTZG+uoBeG/SH0FypOLWdWTCxYWtfr/Co83vPhRTaC9cirKRNtZI+
	 M+FShslUkT/pVa62xEvobIMkug0z5WqkQmQEdqShdHjDxmXy3Zs9kz9dexs41ti0y9
	 GCMTf/G5K5kdqE3tc7aHY08+MbOTavJMbEXEKOCdAtTvzkJ0GwH8JhRbYJlZOPpOEP
	 0RyxBJzKtQLD6IWpFiqtL9pfH6YwVa8Xn+48zBIQwkhZBfbCC+HIirIP8ESqELZcq+
	 TO3da8l7wFRwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B31FC4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170558089636.17172.8796082742887270785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0a11adeebf6d228dee13fd32732f09df889ae8b0bacad10a05bd8a5f5513c2
Date: Thu, 18 Jan 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705580896
