Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628A11094E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718467103; cv=none; b=LgxF01g/YmZMgdQ1NHtpLd8L+J80vnepGfC251AFZJdNxHX5w8olpqTpdVSeyHdY5/XZVDlahwfti/vTiqeOSY4VvG+3rRyZdfKWQdr1Cj3PWrIqdZrzkd8GhmyR6wZd28rKsDlYCR0SN+MepWdL7ijRhzmuxFNHGUHhzE2/N90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718467103; c=relaxed/simple;
	bh=AyEKK9YGngZ7krO7pOBw+bbutBl17XWIw7evoeFCgEU=;
	h=To:Subject:From:Message-Id:Date; b=qP/KAhIVTh+cKmoykmwZXapZY1kduAIPYyxa1Rik+pTmA5aXpboxwn9WhbVoDU3FtU5PBjdX1+IXDQxhMr11fdRll6HJAyIp/ZUG2wAiLIdyj9rIzldK6mYpN3B5Rx0ovQy0u8A8iC5YhUBodjWbj89KMmcx8QkJH9M3KUwmPV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9y5cxB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9y5cxB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5832C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718467102;
	bh=AyEKK9YGngZ7krO7pOBw+bbutBl17XWIw7evoeFCgEU=;
	h=To:Subject:From:Date:From;
	b=h9y5cxB233aNdsuPxncx7XmdFpHWXkkEZuSKd8urgicWJ+CBiXVuwFIc+BSD8T/s3
	 gz3d5FLd1G2e7jsS/X5l//0xyKdHUHQ94fJjHirjPeqHPTwvYBUZYVVYOSLLLcB7iQ
	 wTkP5L1qAjYcDnZX+liHepteqgq9jvq5KEDSgpSY7n+ZVUYQlenASDKWuFQL9gKf/0
	 ZAONPtQiLTDiLh11Feioa/g3zaLMglkR+kQdBOzirqKuGVNJM/bzSWXmrNSg654u93
	 0IVcpYbDVylaYrVzXdzyx5oDciOw1zRd/05ZYiM+46teiqt8f/25BSZQetXqrKmcFA
	 XEIUScH7dd5aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC4AC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171846710280.12440.13130135451336484735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d60e7a39da69c597f5528ea7cb789432244fc9cf36fae4d78b4f80a30ac496
Date: Sat, 15 Jun 2024 15:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718467102
