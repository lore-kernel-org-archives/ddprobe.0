Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69302329E4B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763481114; cv=none; b=C8E0l6SPVZNEu2xFT9+rVmXUbWJr8KFAaci0vdoIVAlEzsJaZdu5pZ+aUTfWwHG3rCop1FyG7ZsomzlhkMfaCINuQHPAAic2YkZRzG+SIWOnb5xh9DuL5G4w2v90F8K23svcz3DWFKebpIvGh8KgCI2C2GjFRbhY9xdiX+MrqmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763481114; c=relaxed/simple;
	bh=1VyPngQqgVzMi1mw0B49yBo2/aDRsMRQ0QbxZJ73yis=;
	h=To:Subject:From:Message-Id:Date; b=gn4OZXqBd8PMhIZY+d/FJpyWUffUDz4T04x5+MiPV/4HsiLkteQMV/SLSzKKE/AizX81Cu3vu1HfJt+goJSe2BvTgmbyAXDv/Zr4yPGkfzZnMci6Oi/kZb6NMdbdZoob82d3OraX/RTGI/mZGZheJ9aszZ+Ee2EQjyecFOmiBGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1L6j19r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1L6j19r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A7BC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763481113;
	bh=1VyPngQqgVzMi1mw0B49yBo2/aDRsMRQ0QbxZJ73yis=;
	h=To:Subject:From:Date:From;
	b=n1L6j19rML5W01XB1ZZqXPzdBPHtYhq0vVKm2WRtOzXdJtX20uveKKe9GM+cJp973
	 qet56Euc9YyEM3gl5UxSuCDhZoNFJm+kZ73ttnBX2t8EUH9014JBB8FCEG3Jtnf/dI
	 wtQd9XDll9knp3SQqrvNqDgYjaKd6HLcILWIgHzTw6hdlFW0mNh+Y7RuKqw0DBhZvq
	 BM+UUGdiaiATNBGVA4GU40vvlxPlumDTXs7A0btWDTifrPLzP/ETK3lwkicvui+bdN
	 FKB4+3QBwU3i0SibiqKozvGGZhpDKIwqvRE2L7C0D1LdIv8AvnJHqGPQ8oe7bw4sIH
	 JHqURjdcyVL0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9215DCEE327
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176348111358.11993.12998125096716778243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e501af11298f835c1fc4871585beab01c16cf7eb1c0cd1c57f0a0e68f474d89
Date: Tue, 18 Nov 2025 15:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763481113
