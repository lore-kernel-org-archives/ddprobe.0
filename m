Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1281127702D
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768670634; cv=none; b=aIYVZb1XsLIYvgfPJtGdzydHXzYfix2/Ram540qDDQ9IwXcXrwgGOMrv8MK0T3LZ5KdaNkjgH8uy1yLLDqZ2Eu63V5vNW4tZ5CbD2URI3TbXCkfgCpwn1hePfonEDaw73moEgd8x5YsETJjLYaqU03gb9gI8aL8xwrQ9DV298aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768670634; c=relaxed/simple;
	bh=dOaMP3kCVfOvgqm1e1wLYZM7IAzjHW2olEe/GW79ocU=;
	h=To:Subject:From:Message-Id:Date; b=YyJMKkswAkOl1QUsDm+4jt0uvNBGcYlJCXkzwLhm3h3sF8pc2ODlls+xlzeqMykb9RfMg0DPQYL3ThofED78MPEbVVS1O1/kQSovvfoD3SRcAnItplnDwH+NXDtoOiIfIevS+OhRmnyS7Nyd+HL35yZgqaBG8yxw4WcAreS6AQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1Pq30ns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1Pq30ns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A831FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768670633;
	bh=dOaMP3kCVfOvgqm1e1wLYZM7IAzjHW2olEe/GW79ocU=;
	h=To:Subject:From:Date:From;
	b=P1Pq30nsnf2WqnCNPWvj0ccAspIMMyVUQGUrSzhhv/OtUgm8xGc20j6h1SFFm1P/Q
	 pTd7oqXZ7sNncQCgn1KMMRpAOmMQN2aiRmsKTWSBHFuvRq19qRlTvQ5OuvUf/8a2zl
	 tgUIYofEnCBc4S+1HuvULy81irjlj0DHSKbiOqU+NUgfMQm0yGPKAMyepV2+DVeLm/
	 i8v5oXi/MU3G008NLYg1xAx4oZ4f0PhDIyR+zu6At1A+gVIw0ZYxmecq2qsnwZNQu8
	 IPBlHsDZA+TJNO7ng1TMrcU/XVNqXEqF3m/NKStz1UO4hAw6YCSFq3Ufs4EUCNLvEn
	 +8Zoo1WNy7RCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9530DC98315
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867063357.5411.2611740038620532014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8739eb38e51e6299ed5b167deca255846106f179b2f1821a3146651fe46233e0
Date: Sat, 17 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768670633
