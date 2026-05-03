Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4C41A2C04
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777832854; cv=none; b=Ae0qgb9i4YS9BwGw5/F9y9uceUK//6XA+UDkAEXddgWKYvjpPRuscmf13n+EifMe6QNh+2LSgPC8BYRhDm7Grd9cyRWiXu1w541M2RP0fnqHniGiuc/F8Ni65iMovVKrj8WIwwpc6EDGnl5Qlb3g0vfAidZiBDyY6oS6/2iJZhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777832854; c=relaxed/simple;
	bh=Yz1URZTphMRraqV9MKOCL4T6Yd+m2NfBhI0AizlLK+0=;
	h=To:Subject:From:Message-Id:Date; b=FmnrbvLfvEMAfVO9RIJzwaQR6eXoDKZ7I31cCOI8ee/ERYMcTuLUuo6qh1Wj/5zDsm0TwJbEHpkd0I9rVfiDhI1I4hO3B6bIBSeOnjtRc6GTVvjMPDZ2AvhBiEJjom/S/F9vrRngELd+BqxqzuDrhMOFE8a1WDXXo6DsmIX0Ueg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/LpUbi4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/LpUbi4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA80C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777832853;
	bh=Yz1URZTphMRraqV9MKOCL4T6Yd+m2NfBhI0AizlLK+0=;
	h=To:Subject:From:Date:From;
	b=g/LpUbi497OxvC/jVaUq0rS6pLCsHNRf6ZTN73gK8vsWprQ69w8PXQ+zc4OU4nGql
	 UPz9JVE3VDSyYmkbeJnd/rD1o9yhdMtvUWHerMr5YDmfGGAb11br7/ccvPhGECV/Pg
	 s7tISY552+kfWyeXrPowuJfGw9jiYYOSTq1WfDPlpG5z90ZrTp9QAcqCN45ITqBDN9
	 bbJ2cSmOsqRo4vbv7d6hwi0hHeX5xBfwnM7wZhw3GeUEs/GGQmUSPFUcSUiXR4UL3A
	 VE8HBJ/W/sHkPiw+vikSfbsYi9GZH6YLleTEFKmlu7kTeS1l5hp64qY6Poudytx6XL
	 ZHBhkoSKlbArQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A923FFF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177783285368.2862.6795636744306937434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ca365891bd93fe1c82b909befbec14ec11ff2653618477ce089386db406616
Date: Sun, 03 May 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777832853
