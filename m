Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE2E51AEF3
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790801434; cv=none; b=WT8ULv/jzfViab8kxIf9QXX2VJ8VvJGZmSNeiDMNL3o5gIJXUmec89Z3ZZYrrGMoO75RdqHawxCYTP3ZwmJwZrF0bkOFZ18OmodngjmQOKm4suZXC8ZwpcX/jYSJCkXnQRyLeL9jkyX2Td2WFlYGpKp4vTJdTpJ5qGZh1Nsqz/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790801434; c=relaxed/simple;
	bh=bdpCGaenuXny6J6SWuA2WYsGQaUxMJ8hYfcOq00/11E=;
	h=To:Subject:From:Message-Id:Date; b=YsTxkG6sK9wnA8z38Cto0X04EuDLQfF/ux5C1tgeIlft3qQDJMwSoWnROQB5cN1bXAM3A9H8m4Y0ulmDCXlzrhTBGppOdVSV2yes+rjaHuoTa+UzdGbnWXfgGi4KgZxMwTh7sjQk8CjrQddXZgVC1fEWdrsyxKr/0ViAHGerUnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoqMrBfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoqMrBfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8E3C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790801433;
	bh=bdpCGaenuXny6J6SWuA2WYsGQaUxMJ8hYfcOq00/11E=;
	h=To:Subject:From:Date:From;
	b=KoqMrBfN4dMFvYzAYBAhrq3tzT54QtZnYowr9qPgg4/BoR45pQRxDK61PYX6X5ato
	 uDhv9+sjy+3SmiaeSQpVTLqym9MspPuk9vGOGQoHeSGIawp9W8k/AnAtN1b2Vkx96L
	 bA713f8DkHygx+dxa4GVbv2fnGIbw2XeyIjeqFouVnp4XURghydbK5e34iUKPp7yWr
	 SBms1R/ybwDVzyPALPqff8rAN57rUuDZpIDVCI5295yNEBmfE0wBHRbijkiRSaA0N/
	 hRMkxdzaxaJbGLsrnqHK4RNB3ooSNiTRn3iWTRzCbgPaOGuaXnab+10Rk+0LCIlQHW
	 LTXqJWHRd75iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B3DCA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080143368.23368.4774596653677385994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5df87f919d160bdd620099a4fdab952e037cf7322e8179faf9e90a66843b81e
Date: Wed, 30 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790801433
