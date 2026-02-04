Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3223E3B8D72
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770198834; cv=none; b=OdNcNkiK+T2ORjORokmVEAk/D1RcpRviWEAESewt9RaOSi47KJM7usU/dffpgLgCCiZWmx0Ua4uvfwks3uKHQAn6SpboAnX8XM4CU1Ju2sB+3IwcgkTK/U20LZz2DGSMIk7khbUGgxuoGO1qu0RVUNuaV8xEcAmupUiVLvnHJAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770198834; c=relaxed/simple;
	bh=Kj3IAdpiVb2eGg2LsMS0X7V7K0Ps4gJfoxMnkd9suRk=;
	h=To:Subject:From:Message-Id:Date; b=tLTf8Tfm1PhBUF4kwtEeUgN9VXqRgXrtvEk2x5UZSzuPT7M0l4tQbwER1HpvmNqQZKHKwwqnkyXeHCjUbqz1UdlHXqNWL2LBHeL3TOCgTBcSMxHpUcgJohGAs8QU4TJAdgVyTN7Dl5uiH1fhyPCZ+ukIK7L2Rk75JMMKlSiGJwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSQc24DV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSQc24DV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A0AC16AAE
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770198833;
	bh=Kj3IAdpiVb2eGg2LsMS0X7V7K0Ps4gJfoxMnkd9suRk=;
	h=To:Subject:From:Date:From;
	b=sSQc24DV6RPUpaa1zsFIeRkZJakQ7x67jQ56IfkpELS791ziJqpRcJB1dtga6thxM
	 se6DemUEYVQmtC6/baFvWt6Vufte0E7SjGX+Jb1DO7BTXwrpXG5hJSbO73Mst6P4Hv
	 jswSAk8EWWBHOa78VvofVDF9AcZUzVmvG8CDRIg9OjCbXJj7gEBveeV+kayAKcIRRb
	 bOuDaIoTVOm+bN0yZYGeKBGPi565cTZrpwNBVIDnnS4Ce/2WwFuLzkFj6P/TArl528
	 2mcMGWXkVlUQwqHXav2LzPHf6flruRAWH078vmjQnfKsbF0i8lLT9l77ID8sd/WRrd
	 fR63B7IAugCyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55AFE9536C
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177019883373.18325.2758744323071307640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d20e15eec58d0c2aaad17d532f17df8daf475e3a0e2b55534b0686924a9cbe
Date: Wed, 04 Feb 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770198833
