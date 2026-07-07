Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C713D955B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783463314; cv=none; b=hkv6PVdIDtG1kkbdjclFNAYcHmR9cWRjISbeMlkudLmcw58b+wfqyLlkKMC5TTH/hZpQ/HmdcTNEPeVE5FOyqB9vM9fub8rs8J5zdFHEcepNy3b+5bAq4jK2U1OSig/fkZd6faHkcnZs1ARgtzLIF7aKWfn6x0lXnF3FAwjGivk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783463314; c=relaxed/simple;
	bh=FqO2abzQbrbHwP/kd2l3QWMPl71mxEf6qZ1TUGoqYfA=;
	h=To:Subject:From:Message-Id:Date; b=SPUF9kqokwyRDcM4nrf6uMeirEjNzdKdSQ9fwwgV8uYwyoJGrcnlP+VImUwdeL5pli8w3VvYc5hIoeYjak+wv9u0BQ4iEScKSJEonGAFYQWZLKKbKXrP7sZa154Tj5nA3hSAABHudCWyOfrllRCbVU08UhQj5Ym0sNQRmB3ZTUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQv6bVka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQv6bVka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEF5C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783463313;
	bh=FqO2abzQbrbHwP/kd2l3QWMPl71mxEf6qZ1TUGoqYfA=;
	h=To:Subject:From:Date:From;
	b=qQv6bVkai2RQ+5YCL/i4ItJm0pwFfk58SROEvlDhOTtQ/koZ1664Bo/jhzcVZx9bX
	 COc+yDDHrxMF3vsaUMzt6G51/SElewTSmIRqBK2/o4y38ykEkkKK8itYK/Qi8MIlJ3
	 eEtIBeu6mYofYb7eLaIEQhCp35ofdm1uP4KV1z35daRl5jkcahtQKrMftMecevzFL2
	 suAp+hIV9HvGdscm9FoEB14Z1OG37/ySc24MJe/uS8Ke6zkKHQMLe1gS3sf4GM5xSL
	 lHLsA8Yj93PXQvxyzm35JiGkZMtOLMA9HdE4rlQa3j/lBoRtni2YZJ5yS7SAaAEBLJ
	 ScBOIGLDMvW0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB97BC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346331368.1752.14309398994296633287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac7b30b1c1558fb373ef8ad146c062144bbabed98cb30d55043545726bc761d
Date: Tue, 07 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783463313
