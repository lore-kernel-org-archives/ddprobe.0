Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E64D6398FAE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764905574; cv=none; b=c3LZX0p9BfIxNBC8J3xJKUwZXu4d78XDQTci6a7yWopLhmZIz2cfcaXGsRXxtiCpC2eVvfrGSm79Tr8NndZ+YuzznE/cfUkprVoosrB56Cpdr8szV5i1CazFLyB5R++ejrXlMKFPyn4Ot8JBO1kkAEGMomJxrSQvFyx/JsawGfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764905574; c=relaxed/simple;
	bh=ZTO968o6V/2aJEnz4AyihRPB8htJ9kJ9i7RFjUHteug=;
	h=To:Subject:From:Message-Id:Date; b=kdz/9KSE2itkIZzkgQlxW6rYR0z1l929aDfd1Ga2TVNZy4/YT6m3ysyIlPhrnaZMpvGtejU7Ra/AkdOZwe1aSCAPrB83cZ3flL0ZK2Rna+sAFNpFFhaLVhyheBNF7410X9bU2WbhR0zsx42+3HPoP1NxJlH6O02CeVNTmNvdURU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bws+afB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bws+afB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A497EC4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764905573;
	bh=ZTO968o6V/2aJEnz4AyihRPB8htJ9kJ9i7RFjUHteug=;
	h=To:Subject:From:Date:From;
	b=bws+afB8PzSVnenq9vsg+GvRbm2GSsxN7Vpm8wIMjctAz8H6/eWGYEReB/4+zWSXt
	 oGoj2YqFh8zQqYdpLU66Po+OK39JSR0LadQDxOQlCewrKBrTgXmaISlSi7agETwSON
	 c8dTTcakbhNOemM37nB5hX9kg777p3DqmibVicpwHDJLRhj/oiKd6zLpky1PVEAIEe
	 7DQQwxI/TyYabiFKMi440uxE2ye3HFcPHu2PzjCis/8o4wfMHNTtdAVJOc7RO7T0TB
	 S4kkRrPxO31V30vMlIZQJr+0WpiXWYDV8WJA4+ZSG1CwL28ghpnhaPzT54MMiWI5/f
	 c+wz2ARn89Z8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EF6D2CE13
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490557359.31557.13805192273231360837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921a751afdafe7caedd89fa353e7d07639fb2e3c9144fbc9704985447a834dfe
Date: Fri, 05 Dec 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764905573
