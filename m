Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1355A296BA4
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773898494; cv=none; b=dgK64vOUR+Fu1s7Za9aCCxT/xUdQ2lRZhxcJlVqzxUS8Gsxoc19xQzePIiY60xuar+3JDKTFKvMqIMUFsyPtVjfDP58RlB8KW4DnI2uTF41lhe5b0KC3mdrL+oVtc8cGRGkN0yttM+XD8uP4q/M75hBRSFrAlZLnYDoImNSfQug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773898494; c=relaxed/simple;
	bh=Cy+P0oNtJSCmuut9jsGuiNbSoruihrod/caJp1TvNFQ=;
	h=To:Subject:From:Message-Id:Date; b=cKFnSEQqPSp03lJysCzH/W2r7zt5Eh69EzGB+cFZIo6uo3ay23iZrJCLfX0OFB5DBAcCwB4ndaZSe5JgcslP7LPqkkKXJWC7UDoTC/qhXoplplgiMw2HdMjNN2ulqkRlv4E09c6RaQaTNE7LUMc42CnaHZ9Vlv9CBTfe6BErSNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNg+vfgK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNg+vfgK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C7DC19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773898493;
	bh=Cy+P0oNtJSCmuut9jsGuiNbSoruihrod/caJp1TvNFQ=;
	h=To:Subject:From:Date:From;
	b=aNg+vfgKUeUgX1ONUxkGwKyHjg49wU5TphWaK5DdSrKZ185i97dZQwx4U33ibisUi
	 zKVaNYqKIyogEenhRI3Zaxj0D04hU88U6i2bO6ByzqlYKZrAznAuXsGNta3YBIRRoT
	 Qk57YtCyjyihIQ0gdEsvkY6fNBlLAztOrhxEaCfdr30y6zbzKvRF3pB95BYU0sef7K
	 O4HK5BGzoujnnpd1vQo01lbNh+axzXqjkMcZ3UWQo7YWls2SA4I4M/h8JD8BzwOUgL
	 +Fh1CIzz1E6CKvSuy+BIbOfHXHB/Ho0dHLQXK5sJsRLrc++eSy35gO+BTmAm1Fka2h
	 RKhGQEgpfTpdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92441103E185
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389849357.12801.8764495538153628312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98e307d730d6ceba684cbb0a116e57f1e572a61697d2f337abbdc0acea12b17
Date: Thu, 19 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773898493
