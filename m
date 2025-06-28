Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392851AA1F4
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751115594; cv=none; b=AIuEYfysnOnyzfvxlDd8snjM//2qlSgLadHiGHn9v0b+War0Wx78eoFFBVvz34ICpeN1afQIXeH9ZU2bKm21mU9EnevOLJEfSoCnr4o6NPLvi/RuZhr6pCrRcxQpme3nd2VJT+dtZTt6gK7OoErW46N6vizxX2ckWMdcvl4DNZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751115594; c=relaxed/simple;
	bh=XJ3XE75ZS9argQZnrZWHHFxa6twsKjf6hplOcWo7mG0=;
	h=To:Subject:From:Message-Id:Date; b=mWlFdvYJhYS381yKqCl9EoCUIoET7HQ17RmHJ/QPzVWJfxhBy7RmywLzLDRh80k06NHMJRnljTaB++IzVAoh0j5dpil8+aeAWzoYE+7XLuLUOp8PHaD9WfJMDwNG0v/DFksT9v/sAmm9Yxss8bqLXQiMn+6S/fqr8cBi/h5SDF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnAVL0LW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnAVL0LW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9473C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751115593;
	bh=XJ3XE75ZS9argQZnrZWHHFxa6twsKjf6hplOcWo7mG0=;
	h=To:Subject:From:Date:From;
	b=GnAVL0LW7iOPKWK61r4junVqvofqHffg7fkMFZ2Dl0uKqhy61M5/glAOIWMTwoI3S
	 ounvCeMjYFWwEZBa6siPe6LrOI8C0AJ59KO5lKULLEI3z5be1OIlBsElsYwtnt3L4M
	 LPh8NCP8BOsTB2g89NbtWWZvYLRfieCAYHrKgROt5NMW4zdbP3p0GSas7+B7gK4Li3
	 MasZOz6D2N9I96zRBFQEYsgqBN8efGaBmc8mXc8C9VygXQ9PvSLLPifOS+JIj0vQnc
	 10EWn0Kj9oiHycEUeZxeW2qq6/1lQESeYcC+T7fljO2RlRWPuHqti24flfcg5F2jON
	 78Rh5EdXf58VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939D0C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111559358.26649.10452741485801584702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 186961effedd96ee7ec9755384a0f40912bdb566a61af186b4a59b6e902ece2d
Date: Sat, 28 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751115593
