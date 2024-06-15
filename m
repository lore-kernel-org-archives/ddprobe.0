Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460EC173
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 00:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718410103; cv=none; b=PFN3GPdMl4WpqZFIN/YJUI2XXvr+PyaThXYbqqV8KQn70bfhav/KuV7YAbaeNnO1k/CAEcoId5QWdS6kn4eBxVxLoEC8N6ZzyKzUU+XszEwDIuX1sBnbv4lDHrvyrZafOHlbLToIh7AkgVzx1LVA2i/x9PL7ddpKag1nHvPjHjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718410103; c=relaxed/simple;
	bh=SIW0ruQ2EmzR9T+a6XZ8Q2bT6b2dWcquf2iQVGmoIpQ=;
	h=To:Subject:From:Message-Id:Date; b=Xr4L4DV36Vi/ReNZGsFRh/AF8BO4sl9KR3+XMKQcq/lMIsFBW8vkzaNAC2Tx3o76uys6pXR+3EHq2wy1PJa3j35W0Lsaw/sGsCDFyg43cH3kuqdw590+lahidc35KYWdJ/Dwqedapp/6i0qA4h4E3xHGZnBOxdE6Bn9NY+IkzeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Buv113Xl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Buv113Xl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95DCC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 00:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718410102;
	bh=SIW0ruQ2EmzR9T+a6XZ8Q2bT6b2dWcquf2iQVGmoIpQ=;
	h=To:Subject:From:Date:From;
	b=Buv113XliX5ybw85JgJqtPA197pAOP2hAWuqkb98Z/gtOl5dElSjc7MyntPC23DmT
	 5V2LKPoDJwg61lQqi2U5Ky8UR3VRthx7K6rk9hcnsigkWHpmgloZGomw3yxZGxdy4E
	 ULEISUkGIvmOBt5fjv/NF5bHH1jBCcGDEa8BMGnSyJbL9jyUrTLTklxkRRpexqKGfI
	 diLp6+rLyLNwdpKRUUNWl/kNSurXl/ZayrBsy5hrmodiGRZ0RekXwuQMCMgb8YSn5O
	 Xu3NbyWg5GvSfWBz/xfAtnpf4eyOD+IFoz8LN0sdTrwdRbODrAEspJNvNBGgdLGJLW
	 ZDZSxLuf7HgNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C50FBC27C7B
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 00:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171841010279.2773.721071321071038725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5928ed9269baeabb3059ac0f0bd49dbc545a223c1ce51e1a9f4e4a63546b169f
Date: Sat, 15 Jun 2024 00:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718410102
