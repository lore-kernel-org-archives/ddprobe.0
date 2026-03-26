Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1C032D0DE
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774557294; cv=none; b=dYXC87MqedxFwjPiVIwy7/Au7OpQNc3dmEL53ttkNObAIV5lnvMuV00q0x05BPXVaSDGvduj6Kz7Qsn1/A3oc93St/qdgOBALXF+Ys/fEeco2qPy5bTQZwj0y+y1G5OcG2ir+gu8og1FRVZCyVb5/8DC53l2j1kogd3sXrZI54g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774557294; c=relaxed/simple;
	bh=A9xgBt77CIWUngGADQO9Pww+V8HJSarCWip7UbSLyfQ=;
	h=To:Subject:From:Message-Id:Date; b=bcvNLbXmsNCeOLNEcU9J4KftsDa3pOTiDkkeL6gX35+Fng+3UEi9Uf8omekkg2t3BKNnJZfnXRq55qgCwlJMgtlqjJ6UQK6/nwv2Gyv9CqublbH1TGmgUncLk1yIi2P+GVOGGpjByz+t01ON0FnxnC8jXm5plpvPTt5GW5xUAIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pG2ER6Et; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pG2ER6Et"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1BEC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774557293;
	bh=A9xgBt77CIWUngGADQO9Pww+V8HJSarCWip7UbSLyfQ=;
	h=To:Subject:From:Date:From;
	b=pG2ER6Et63HDEOLKdpCiGHKGJSqdJ5SHDw9pzzsLL4gq/eDER18xT4BgNofD3Ydy2
	 qniojZ5HbOO8bJIn401PhXmfDl/RyMejiOyzSKXKUq/EOn6aYrLmdToJvnD+wTgrCJ
	 ngfVlFTelqTfyeYVo8ZkfJrWnoOVyaRj4uICr3NTDBT6LzF8pzhheAAYA9Yslr0y09
	 M7q5M44NJnR6UjGDXOmKyiCGcZ7xEloV3eIpUTCELnmM+B/AgsilWWcnhz/dllcC1o
	 S1xm6I4n2smNFoOpal6dfq9zFPfU4rtYoLTIF42xkScyN8/Ew/eANo3itSk1rVKyiB
	 RVkcjChBYUs5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8F010AB81D
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455729360.29484.7514900933653592130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72ce22a822f24eec75cc8e5a3fb6030239a900750425c4831b07634dd03e3ed
Date: Thu, 26 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774557293
