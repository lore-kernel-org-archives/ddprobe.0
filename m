Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDE0433056
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784900434; cv=none; b=cz2d0yRtV738Gt7KtjGkQyEuoD2oAVBuUmqIC9nbFKF8yfLrbBmDNMNQJ1XLSWcnk9Nxnn6apK++BtfbWg9VrS42sWgkchYgZqMQtiqycePj4YtDM71n43p5KuvzbPmIpeuhi60ljoUNGnkOTjoD+wL8LZScdFXOyWe5cf8VDMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784900434; c=relaxed/simple;
	bh=M/iEVaCSW9mdqqBajDq3x7IubegESXlpg7bPz1PuIgI=;
	h=To:Subject:From:Message-Id:Date; b=Q/hMpkXmSTwAT00dCy7EF+dYR6aAaloxGOdNOHbPamrq1r6y2rfjqYlEb3U8FgEBkKQDlfzXkENYMe1+XFSBzJinYAwTnhC92gSrjJWLQhcyEdKS1JlGIEJFp7Hwg4FZy+iXYSkjuoReC8tu+BuCvyjydKpJPl97JxOf5vIWtlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVPR8KHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVPR8KHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10F3C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784900433;
	bh=M/iEVaCSW9mdqqBajDq3x7IubegESXlpg7bPz1PuIgI=;
	h=To:Subject:From:Date:From;
	b=VVPR8KHRmI5efIOQadgc94PGJQm5Gq+nrUTt/05fhpCuw23hDyFhrdKQPOXq+Nfb3
	 fjlf0yjcJAdrb1Lb4RzV7bJCRR+dch0+ehFK2HR6LFlmPtvbYFHjaSjHy0E8mQVgL5
	 swrd+ss+9yna4a86azX/O+EaDVJiZGyDJb1cFsDnAiUCvMIZzTpc/Var/7d3ZhceBi
	 OtDUdBbLlkjgnPdH6Ea3RaOTkqeIlf7GHKdplOM098AS1f7DmuI8VYkURUX29ZChOA
	 S8INTgGfc/WC1OfUD8vZTn7arxGi95cIVqi3+8FSgVGBNEmXskq+JIcPSUuTFZWVtL
	 OPjV3T2i0XIXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2E3C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178490043370.6853.16441968133727001194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f192006342616233aa70053858562a584b163cf8780a4481d64400d018e46d
Date: Fri, 24 Jul 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784900433
