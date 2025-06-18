Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294C43085A6
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750285794; cv=none; b=EDPNERL+dMniTQhi8NnMPCmT5LVhz9GhtaXeQC+XJyFiqMsTP+axVxdj2eUq7DJptraMILzkW3+gu5SKC6q421alY8dbaCD1qUSSIB2DAARPsKJ8LNKMsNwIAS0uAmsTvyfApEh0R6fZDAseuyhmnBQeqbUJNDqBLDMsWIvHgNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750285794; c=relaxed/simple;
	bh=1FyjodePa22UdM/6/8c6KDWZkCBKvA8djSrFIFlgBe8=;
	h=To:Subject:From:Message-Id:Date; b=rX9J9qPEylmannIhy43PbQtIaR9z59+c0Q20md9G2hckLO3Dz6Bp9sSV/3y43s9dK3nID7RpGSagI1dEoxxNmbo9twR101WT/WjA0bQ9BZb0odQtzU1gk7FNJDCk/56LHbu9ykrZbVFYL2wAYsFmhswJMEMk+Y4dky2AP/6FWf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmMqC5az; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmMqC5az"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDC9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750285793;
	bh=1FyjodePa22UdM/6/8c6KDWZkCBKvA8djSrFIFlgBe8=;
	h=To:Subject:From:Date:From;
	b=EmMqC5azgteAYqdhzG+oV/RtI/sYZUOnAa6kAPQ36475qcm+mGZaS+uxdoBN1Wud3
	 80KFkEySAexWCanMrcceS7UFmD/5cjiZ6V1FG7tnKlpzM3ydT8JPQV/RC7vIakO8as
	 rCttjXPA6H+cV+vmivt9NSTYkTCuyBx3gdcGA6OF2d5FKJQ2t7FLHBDe0TO3AEnyfx
	 VWZrjzE+BiJ9FIXnvbwLuWIvScROo8e0UHBSjEtxSgoxzOMjHLZkiD5mFmraFv8HcN
	 GQvqDq0ghFmZG/FO+ucLnMJGtRLUdsaZ92W4QaGucVmG22SeZtPHwMesPmWf6xlsh0
	 uLarbs0eCl8uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962BFC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028579360.22390.17597965692087847732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ff8153cdbe7a85482783658d70daeb0a202b2f8ba4c49d98133a99a04e5940
Date: Wed, 18 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750285793
