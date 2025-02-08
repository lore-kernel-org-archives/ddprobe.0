Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B5579CF
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739035554; cv=none; b=thZwG6M6L1q6FyDC7l5M15j/nlM1LSygzUpm06DspMSDnuUYopmuHNeHKAy8RjklIyxHfB4Su+KG0sK6nAxkq5Y2YaLXgLOnsoPZwxrkzJMbiVQaAdhDH/Aug6YYG62IC33u9IrokqeJ1amKFXo7QuDAZuNjbPMKoEhFYxmg8lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739035554; c=relaxed/simple;
	bh=sPkCTOZSJKEjBr7Jxy5ORKywndFWz6gEnOekCENRl1I=;
	h=To:Subject:From:Message-Id:Date; b=pM/3PuE83Rl0jR4bTTNIBHmK4T3qsXHh+g+zkgFQOOeLN1zGFUKTaMrc0FsHZQSbMu4AKP6zfguAygHJBA4khL0RetBuTzt9Tg6dvdmnF/EkpcP9zBet8tZN/FbSFj/cPD8Mv7PV7wT/wMyCptroY9k/g+NBjCcDpjj/QeV0tX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmWqNFNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmWqNFNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10E9C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739035553;
	bh=sPkCTOZSJKEjBr7Jxy5ORKywndFWz6gEnOekCENRl1I=;
	h=To:Subject:From:Date:From;
	b=BmWqNFNS74wc7aSDmLKRDLU2pEG7YQmevVvqHW+7BQtYcqkoH0a8VZ3wM6xjzr5/S
	 DvMyvNdqtxbpiwA34XlNS281BDrsyWj1SYQv5D30CTE+qpGck+weilaxSKkbFz8VdH
	 wLOe//ADyQV3LEkwBfp7EEFeaEbI7Y81dAMUPff5FFFeA7NdDQ12pe+JxVP6I/pVjZ
	 gvS1HuRtGl6l/qPWcV/2IFr/bQEuyos3+qaPt4CLYT9yhHq1JOao2dldu79w1eJU84
	 UIyhQfmVKWqa7oTHx3l2R8AU8hTHNYGN8jpGRYdKuQ5nIMAFgn4FR+QFa2idpse87J
	 NsFvkB+TgxGFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97167C0219E
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173903555360.22934.8355751473715081284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ad320c2fae5db4742f64f8494e1c9121b2207658b282d41d6408cd82c73a7a
Date: Sat, 08 Feb 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739035553
