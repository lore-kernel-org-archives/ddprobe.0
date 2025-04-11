Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3937626AD9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744381794; cv=none; b=lcPlN98IZ+6yzFPMacEeMy+EZismP61NEWdhJYigFxR9gyospxQAP3BMpNg0ZjlANx+sLkbi1EWGRUqA7ZzkC97UXQDxLEVZxn8Vzmk3p55nkOsAJxhzmKsIZGnGOUc9Ufl6bFbjAtjH+vLLg92Opc1f3wSqkCnbsn76pOHaJpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744381794; c=relaxed/simple;
	bh=oJGvTUelaOTX9AyQmLdGpAbOuU3HPP+/kYnigkzUXKY=;
	h=To:Subject:From:Message-Id:Date; b=WLtpRw5dVIf9ZWrsdWCrnNePHD+Ajx+Spz07/KRBJVzzcaUOUmvm45XaUKpIvVy686ngTpyrd6uHLG4Xwo21pTm5068nx9QifF4ZmH7S+zypsZnuvOGJmdKfViIt/Vk5ikfb+4vOAsavqAXWhPawj6/O/f3zsDMpkWwrWgaRu+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAUO0OUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAUO0OUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61E5C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744381793;
	bh=oJGvTUelaOTX9AyQmLdGpAbOuU3HPP+/kYnigkzUXKY=;
	h=To:Subject:From:Date:From;
	b=CAUO0OUaAUnKXovXcwhRLD5AFTjUl+D6nlL+V8a+Qz/cED5immtMqkgwlIWW/VPDf
	 XwY6Sm/Y8Kjix+fpb/nmTFk3Vn5H++LHC02c2jjKhGZSH/N725tLjMgaUfT7Addyc2
	 ejE4frPOcLL1/xv5trKNQTO9RiM8lVqRoU3ear8U+spyLVZkTc9m7pNc2lVEX5zAaI
	 sjG+U/UfGk0z0YTMh9wVJW+nANsac0K9sR1XOdmDmTpcbyLoxzQ86kWnqoHNmnne5F
	 Jzb3DQ/hnnGJbID0oYEktVr8jxLIHngUulu/6wLzRTQsBWhqzkNaxi2VQDz/DbcvR8
	 lu0nNffvZuObw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94062C369AE
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174438179359.7647.16225972759649263576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376cb0701460e1c02f285bf1f4a592fd12274a33876f2de680add33988d0565e
Date: Fri, 11 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744381793
