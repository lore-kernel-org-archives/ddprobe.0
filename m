Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D93D530
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737077154; cv=none; b=HPxbFsZ8gtjN5Zotowjuqw9Jx7CcEO4j/gQX2V0USbosUh3kDz3AceK6FTIiBa61A9gJhlKm1VZ49A+W6OlNttMlbpY9u+0TD+/+t9wFKsc+9qBoSG9ePAM1vCdeFa/WU7Dh8z582e3sOSI5aiF1ljqi3GlwikSj488f5656dXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737077154; c=relaxed/simple;
	bh=0RZn1qHmVfUgs6xePc4ybixt8galzIYgEU2IAzcHgSk=;
	h=To:Subject:From:Message-Id:Date; b=ILCtsDpBaWCYl/XEIHAMsXJg++iEXRiiACpcf4R2siXc/dMYr8M7rJX435a72piP4Xpb1fP5FrgeH3dQJdHDArvYPrzSLoobDTYLyfkadoS/zl68eiXyiiU9dsVjK0q3Qr48sPcVysY5bu/GWC5828mfPWeZiY9LvVUgipJfMyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVLVeZwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVLVeZwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C65C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737077153;
	bh=0RZn1qHmVfUgs6xePc4ybixt8galzIYgEU2IAzcHgSk=;
	h=To:Subject:From:Date:From;
	b=CVLVeZwYSNDv9UEzOgCkR2j1o7vIVJ5jDz9f2RbDtdGXZlwC7aal+Y1wRRwiCZQ0Y
	 0VgzMo0JCtI7lOGCZatswMAG5a02s35UEYxGqQ5/gm3+p+G5G4Wfq8OuuOXCCB6A15
	 vDL1vCyW/4Gi48d05eItrAnsTTi5eBrLwfXYCaGujR37NMi/2xQnFXORGhUhIR27eZ
	 55naXNxRYguBGH3I9t+7p5FerSbYAIzB1iLh9WhNIPBj2wPvaHdWw5JpKQEDxS8WjJ
	 q1ZSweq6tuciEKgvs5dbdloLoC2yY5yN6JBia1+p8vmIyDuiGlDuk+YDouE7S61ci2
	 yZpaQKnHxBgrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CEC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173707715357.710.4961546161100565809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26937ebce935c890af3b1eb8534ca9319bf7ede4977a0e12d2f0856b75401a0
Date: Fri, 17 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737077153
