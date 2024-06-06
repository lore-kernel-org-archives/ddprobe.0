Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AC453A8C0
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 11:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717672643; cv=none; b=SpJq/KcAcWUPOiy9rAuOy/ItTBqmxdkbnvypZaQ54h8yrxZhKM9jY3RujP5PPVKI6FpnmokThzcAykJIzA1v3WVGCkAkWBBoSU2Eybz/MIoBjMG2svDc+GyXPQEhThEcKSm8X7hyImcN1MV1wJ7yi9uM2QVBhRbKcW/fiAi+Ttw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717672643; c=relaxed/simple;
	bh=Ga0NNgnfriaaSl1nGetH5r3FrkdFkQs84VsPUv61OSM=;
	h=To:Subject:From:Message-Id:Date; b=T4sYmoTpZyNBuzYYjJFyb00eDEZz5U3pNurpAXIx/TFwI4aQqEVCvKTI5im6CDdqSdda4mkxz9wYgj0qOlfJ6qOArdCEfRRvKQ9C7WSk3s4sfOe1nZvyvBqhxMgLNq0IeBErf34QLRIMQkjZMVxo5iLdCERhTWAU1bhVbP0cm2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qc/lDzyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qc/lDzyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F16DBC4AF07
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 11:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717672643;
	bh=Ga0NNgnfriaaSl1nGetH5r3FrkdFkQs84VsPUv61OSM=;
	h=To:Subject:From:Date:From;
	b=Qc/lDzyMOG9YJz+H2KcjfKXRGWhb9xUhQ0TOoG61qtsfnHzFhTwVQ2RAskbTZLTH+
	 rf7qJhjzkX83I/3feH2Z0+HuQs5c4P/x5pYyfczGwh81B+62t9wdIDv0fD92SXzrRc
	 BbsvgykRKur5SSBYkSM5GxY0Ue7XUMke9Pi2xlCNjW50oqWKveuZ8kEhpVeiLRF0YB
	 DZDMUAKtv7X/F9VXq9WGalMKrh/nuqPQrLlrclwmVocgKlnRHeMpWcPVW1+3LbxEk1
	 uHe9R9bMaphjA5vTcH1TBw/0rpq+/8WPxvnjTgEcntMzeGh5RDkHd5TbEuPzvrA+h8
	 px/DVkSbnus0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D05B2C27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 11:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171767264283.17572.4180333309948235808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992c72db957c70b8dedb653e0afc38897d6c1a8d4a6dcd5e9df72d0a91080261
Date: Thu, 06 Jun 2024 11:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717672642
