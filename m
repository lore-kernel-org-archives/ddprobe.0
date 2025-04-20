Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3581818DB2A
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745156395; cv=none; b=vAnk3690czAI/Ssqh1Yw4K7zOUTtBADYlUhIv9iZ6+MOo/++bI8AuadNokSCCoaYnRodoMAZV87Cv05L8dIOUTv1O/znGGKamLa3wrUTGHJbEa3bAY8tpFzocPGpXs4Zj/4K7Vkr1PJRSaEiDoUMZgQJ8TUwV5yX/tXcuK8hzbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745156395; c=relaxed/simple;
	bh=w7nNzjceqWJyJNGiqgR+8iLqWDhzF6JOkuhDpI4z6zQ=;
	h=To:Subject:From:Message-Id:Date; b=X+S0EmeACjb9mIxczPYZvd9oh61Xq3ehEP60SeFg+Q6zYpJq+20RpaqdTRFU5S/MRLYFlSa3jLhQQ7uN3zuYo0vdHgwmlNpAiDpl8YxUug14LWiKhYiDFn4+TGbzN5UYTHPrQO7kn2LYyVPj6gQgNZUAQt2xl8OWZOLyo8kYIBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUikykMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUikykMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E8EC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745156393;
	bh=w7nNzjceqWJyJNGiqgR+8iLqWDhzF6JOkuhDpI4z6zQ=;
	h=To:Subject:From:Date:From;
	b=sUikykMQpnsH1OjA5KZoQuJk6U11vswRFkzMdDKfcnsGiB5KvJ8N/aFMMxVPpNSCB
	 Vwp8iIfEuKNfhbHu7/9Q5PcKHVXJhOSA++OGiFnP7XwsB3T3Z7gcQQ5ZhXBKBJUMzb
	 9jRttHQFEXAsfjn8xGlgwRnJUxTJ2nNvuEk+Sb2PGkRxV/SY87bCPOK7UoVsHKlQD8
	 sYitzzfAdk9HkATPCG1lp/xvv3RSGD8rog/THt7T2g0ULAADhK28VUcM9g8eDwsJqt
	 96zDmEMEjkhxgFURAlpS7vxcQTd+7GBX7GcgdzIkROl9f0YEwg4S6RaEfuI3UOtGMU
	 1gY/KqMYruhzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948DFC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174515639358.12109.18056541720186648404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3285a5f18de60f4cf3509221e8edb84716000f6f9ea07d703bca2a9b95cda79c
Date: Sun, 20 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745156393
