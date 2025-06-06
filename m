Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B95487BE
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749220194; cv=none; b=FpEyfIFPcm24PfP7Lb9Qq6e53Q5bTD6VeJ38+ggbJPaUyglPKLzfiI1ISwkM2N4bVGI3e1tEjdOHst9nCJ+3NblqNUKLgheZDr2lGEdAo60gIK+R2AOl2J01ZeGIa/gfcQxxFDX6sz4e/JfzGK0GCF3qcEAaa+06KHqrjqh2NEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749220194; c=relaxed/simple;
	bh=nFe1ZhRXQPjoN2wmA+A/hvg/LofVU/k/mF6RZXAqhFA=;
	h=To:Subject:From:Message-Id:Date; b=ALXROnXvzIuTtxz5/9bPD7WKZSUefN7b2zFE9vtYes35LYLz7V/0lhC5O/YEQX4bxwhBhkJX0rc+XvAxrcms1W5m+nDKq+qeGqbSr6D034J8xrpNg+bl0jcmqlRO7AbFgEMrOHE7vzMDuOTOsGBT0J8EXlmwrx+wiVaLNmTMr+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upWY9g4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upWY9g4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EF4C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749220193;
	bh=nFe1ZhRXQPjoN2wmA+A/hvg/LofVU/k/mF6RZXAqhFA=;
	h=To:Subject:From:Date:From;
	b=upWY9g4WhVyaTFH3Mef8CRcQkDBu7lgS0midk61kjOI+NkomeyQsAy0wXPE/EmRhS
	 htBceQaCZypBXWNMnqUj4NmBbpI2tvRKkQmzZb3uBlMhPifJbu6Z5f9IAkkcD2vF0A
	 xt6k/+IoACFeHivXS9TXrStjsqrH6b3Y1zSN9JRAZqmXMkXVqn6hvL03KM0L+RYvOd
	 JdkaVQctcE+RuxAVAdWHnLL84WZ3HHNdQb2DFshiwtZs+5hUMFwOauH5OQtPI60eMP
	 B3i1oBibHSo2AEUUIPkZnFK6+lCTWR8p9Of3c64oyc+JQAOL93fbLhJwZIMxGDA8he
	 iCkRZFyuB15JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E441C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922019357.3099.4553173803826069304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be4b92ca5d7d682d1d32414e93d56f3ee4a2240d02f688d4fe510c663dce7e8
Date: Fri, 06 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749220193
