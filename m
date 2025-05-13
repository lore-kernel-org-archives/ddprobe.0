Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C01D2BE0F3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747168194; cv=none; b=bIqXdtUW46+CMF0nljzEob9fu48QbJX9FBpMnw0XXOtrE5sF5Nu8HSMewPPIg3RXxKcq0jjOAW4CUvkLLA1ucqN9dp+wB1kQYZMmammUCuMybaa0dYElBdtqwEm5K75Yl9U5rPSCYFToRbv2wrAtvqF76HUQxoOBF1SFQMuUcx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747168194; c=relaxed/simple;
	bh=a8f0WTd7cwrHNfo25CcolkbyLhO4n6gDOsxokMnug5Q=;
	h=To:Subject:From:Message-Id:Date; b=Nz7dH//sA58k31XtEAmgNPgjM6x+5bqA75JCVEzQVRoEDfxS043UxpwkBjyCA30hOoAuvi1hE5krXvn5GGGZph2GqFq5ZxzaEYHl298CpRz6LyhOpSO0PkG2neFqncJWHjQpsUsGKSqmVcr/Plu/mQtZDcoLQVONQHi3083M+MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b58v9Sz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b58v9Sz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AF3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747168193;
	bh=a8f0WTd7cwrHNfo25CcolkbyLhO4n6gDOsxokMnug5Q=;
	h=To:Subject:From:Date:From;
	b=b58v9Sz8KC54Ku4U8Ff/tnEkucsVsfBw5i+C0feOt2FG98S5eOzma5q2bx9XJUdON
	 4d81AvEkfU2i1bWyRw8OC9NRWdszvBhW59vYJ5MHiJmKRy7n6kd/JKBThIdaW057yG
	 Bbl7Y0wvYPug7wAErROeG/rBbBXMfFfTi+WNWb3ZY9MHhXmLP8kJNTWJzf//LN7+uM
	 4yWsJBbbl+3qKUIOKtp3XUhGIqncAJ1zX1MaC9P7Y0xXdVtO1OQUudk0lWE5dMSUIC
	 eX7vSrhyt5oMfUtMzs+jlepL1hPrR0vqhdh+XXBr/Ww7mBlcaO6rUZ0mP6r7BOxmHX
	 XgJ9jr5KKfGqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB25C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716819357.4598.7440650752386528410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be690edd471ff90bed1ca4d472cea729bd1ae972094a34df711c9c4f06a300e
Date: Tue, 13 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747168193
