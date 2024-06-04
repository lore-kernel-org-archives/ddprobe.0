Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1BAECC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 03:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717472123; cv=none; b=cZ3gmgZwntvsxfJKNTXiLW5IP7nejUF+fLtrj5/eVPGrdAhRpk562tnrdlxaeXVJvAI+/hUDnNPDOEUkdQR549mS+Hp+SFNIADgADtm/HrUw1e5Zctvx5bzz1vqxPW2WmsblbhsOX/E6CvExzoMWwAIGMPI39dw0YWhsKnYdToE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717472123; c=relaxed/simple;
	bh=64ga+Wpqci+KcelkgGwDfQuDeBsuJuMWpU1ZevfqaNc=;
	h=To:Subject:From:Message-Id:Date; b=X1HPx0AQrU7LszJVm7g8OvHV8oQHgPshFtfas/Tr0jQS0G8ZC4Oi4gpwK1Ds+y5QmK5dAywQTiKRTOeF6JCIKuP/Pl6wC8qO1Ok/K1qb94Px8efWigym2qYqlFdh3L723sME3yDOnDIqw3fVpSiSNJds8yguiUp46ZYy6InbTNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuT+uYtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuT+uYtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2C9DC32786
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 03:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717472123;
	bh=64ga+Wpqci+KcelkgGwDfQuDeBsuJuMWpU1ZevfqaNc=;
	h=To:Subject:From:Date:From;
	b=NuT+uYtHQHTq/hbcTo4Fa/7whzlueAQU6obE+kXHaisjKS9t0TC1nPGpoXQMzjq45
	 np6vwYT1Zcg2KKTf9mQMaXMlwRZk/qL6ef6nMqmKpg/x06NH/bb6xPsvzVKFwt2o8u
	 hZWLDaewuumUM/Ln8OTirnV2spUmqKsOfoI/dn6p5OoonWCkQXERetohCuQnWRSqdb
	 gyF7qpFxaw1/HNpBXuoIC6SvbdXuRK4Lh8AD6jTTME7EpBwrAtjV7K8zaYaPeu3KU8
	 5qeoGqX4RSo43rzXGbCikIpAjCdkF/NVpLJe87nr9ThxBdWiXkd0InmFj64kvyX3Gt
	 QYzQ8f4MqROTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D278FC25B7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 03:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171747212285.16428.6135622731084442253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed273a1e35434447a872d203036fdac387fba24d5ece90e6a583e9ce7a456751
Date: Tue, 04 Jun 2024 03:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717472122
