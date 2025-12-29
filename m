Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1097832E155
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767024234; cv=none; b=sx2j7TOse3IK+axEGKsKbitey+BkOuu2X/6/9EmCiJQgOB/vcUu5KG/EqYkREZy+cY8HpxCbKUmSxPCSTU9qYu2VWlxHmhohMpV+wrZOeY6cV9WA2GxmcqkRrdTyFV4SSq8rCNYy67ErqGRuAArErXb2xzUHbE1WE9ituvisb3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767024234; c=relaxed/simple;
	bh=r96tjpH4DAR+oN240iEA9e6WyU/LdoDXRUVSjH0nocI=;
	h=To:Subject:From:Message-Id:Date; b=gqmK+6AKCMP8VB47YPcOGhdmRscJtdMNPQoCB79Gc+pqttXwUrQbru4dLu4jUv7esMr/hKXVoEof8dmIfmZbqLpxFz+PWGcvgZrFMtCLJzjdOU2c9zWZIjBCbwDIKyZIa+QV5TuwNYWRX9xMtcEj68sa0qlsnZN4MgJig2sTWxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E24+rRHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E24+rRHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4EFC19421
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767024233;
	bh=r96tjpH4DAR+oN240iEA9e6WyU/LdoDXRUVSjH0nocI=;
	h=To:Subject:From:Date:From;
	b=E24+rRHusjJIGCyyihdfEcc+MzUc4VofD0/TaTpxVmX0vTnsI5HKQEiNugdaqUu6s
	 SPQ+72xciPGN0DA5nvE5ysPMKEnUWNrJJmfPi8bqfbXE2uJJ26fz5btouPdkeukhoB
	 /2vIEAlnEMOweYjd1elVAODl/zwZJWv6ZgWF8HtyRQzSuYw17DZtjhq2BYMVWWYBIK
	 dRcKru4csZYzArO12vJlIaAwACUnB+AaLOsIONn90A9o5sRVz23hu4adCx96HNA0rI
	 KocZ9TT//zjwd/Zdv8QW++DSweeYntQIIiS1wV82T8XxWxkXoArRKIlUbk5sVFTHyM
	 m5Bvrs/dR/D9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC49E9273D
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702423363.26101.16945671030180309174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8dec523ebe2a3b06b015a46cd84b769933da69062614ad6dae9bbc5905443d5
Date: Mon, 29 Dec 2025 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767024233
