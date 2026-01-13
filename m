Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBFB30C616
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768335234; cv=none; b=JQpCT5XgUxX7gbgRX2Xbjfnedo7kmzEkSrEtq0Bf+ek1qQcYKu36Kk7WDL+RHAkMfRaOClEMiTqRWSuNyrhYOWl7Jlf7/oKJgQODeeJBgS6hVbc5T/RgT0saeKrygb1pzqFTmrNhdH8eJzDxrzBSoHfj7VUptBKEIqdAeOwjz4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768335234; c=relaxed/simple;
	bh=f0r0V7eTlfe895hoX9X//ZjWt60YWoKj1Hc+qdTQw2I=;
	h=To:Subject:From:Message-Id:Date; b=se5mkwyF5uOxYq+2AadmVMnZ5W53FyblyhjW5nobERj5waobTQrbe8A3tgSZTQ1b18zuegUdSLYPiTq3Y+PGi/7WKtfSkghFiKu8k0oeaPfo9TD4K8J9xpGYEsXUikWzuM+XuOkBlaQ4lWNN5qhcmoPSn6IillzTEZ64OdgMY18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QODFM/nC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QODFM/nC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B42C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768335233;
	bh=f0r0V7eTlfe895hoX9X//ZjWt60YWoKj1Hc+qdTQw2I=;
	h=To:Subject:From:Date:From;
	b=QODFM/nCqIDSagVwL6X7qhFJHnlH8s603QfGzPXgng4lMDgb+flHqMHAtD+praG8f
	 KzN86uNewKVE+4pReHy8aD09ryh77EJ4a2S5YRLVLLergnm+NhH4hZUX67BPtYMEYO
	 n7vgekFnle155yNSACD96cgfvVq+kTegDmrhlZTpKY2IZF4F2OagHBVECGdxFcg6d1
	 no99EzsabQzOM3Axo/S6qNHfkWeuw6bzVG9W5IzmOGeD/S/hoWOetHyVE0ehh78v1k
	 VDWbGr0a9T5CI7dYlQ54gORlrk+h2EeqXWMpwprAbD4CE67+JXwC59RsVAkFCH12xy
	 26xg40bjb9Y9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9296CD30CC1
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176833523357.19008.1946650607149517096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd8801b5e9d16642563dfffb725416c5d40b923a99717946a69b05b75c5a781
Date: Tue, 13 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768335233
