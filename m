Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B3AA32
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746372594; cv=none; b=CK/7QMo73tosF169754wZNVs7Bkb+YQa9Nc6V3ndDKWmLVL+ZhH6jrjVju2IfFtawGGa36Xw2/h/bwDzwLa6p+JNd1RK9s47L4s7hrl2Hum0ZVXPSNf0n+T4w4XWCMqrOpADRto3sDIHkqnHOWZXD1HbhJ+xGVp/NIHX7y7hIag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746372594; c=relaxed/simple;
	bh=C+fQxiqCW4f1tnXsurEn+VyAYudREOsHs/gj3Kyvhdk=;
	h=To:Subject:From:Message-Id:Date; b=BU7lrBdTzj+86QW3iHhLO3GJJ0tHXCMh3odDPCnkv540CoP+OjfQEf5tx5211b7/WhKQ1S9VoGNZwhijlB15BR7DD0u56NHhqXPTb978XytCM4Z/RfUvkdmPMVZWijA9/Yu7me2BC1tbaGpjVBDerGyzWNdrg2L3ptN4nGcgfw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lv5szFsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lv5szFsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4AFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746372593;
	bh=C+fQxiqCW4f1tnXsurEn+VyAYudREOsHs/gj3Kyvhdk=;
	h=To:Subject:From:Date:From;
	b=lv5szFsxCDiovrTKk8nCgyd8QKE+5by551AI0XkFtD03be8FAL5H5jccynXlt8n1U
	 6io85V9GZwK+2CdCPJZos/HRIjvaf2zPpJKoEpMSfmkGFVDrN+Qb8WG53VzOJqbrm2
	 RWZUt/vH9g2tOhR2gcAcZO0CmhnEmGrTMBFlKdubmaKUDvaPBPSRXLZ6iPDQy19ixZ
	 eR3pTtLvZE7Bn2ryxBl6FNPOtENHrpuy7RFV5FmR81Yi1LbnxG+RFdtcaGaFoESQAk
	 vrw6DVxV+UCqbknRLhyaS6NsNhkR10uqX+V7H8Z6tzNEdGczzN011TPggghXRf/DkH
	 +NK2AYVWlkKLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF6DC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637259357.17381.379724875629174256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8642ef99eb9985961bad7f925db5405a887bac6d378db233b5c9208510f11a8f
Date: Sun, 04 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746372593
