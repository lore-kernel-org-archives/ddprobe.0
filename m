Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF723AEF3F
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782658714; cv=none; b=giq6zJktwF7H3TV6SxdkPndVRD3xfPM2Ab/pVVKdqk3qe0OH+upUWc5TVMc48rVSn4IfrWrwdIldykQ/dyRP/lR+4Ci3tf1qIHbHqzLB8hBKiGBeJoDv7kZvfXbKOyT1p23zGmHejFNS9Kv8x4wRee1FrcGloNzwYOleHUFW2Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782658714; c=relaxed/simple;
	bh=8IXUtvT4RKdPtsnDRDTDyOuJmJr6SyIVTfWzG1HUQ1s=;
	h=To:Subject:From:Message-Id:Date; b=eth3imRX6Tv4dq+GxskZSRoWlUXVL+ieOaajU5Tc6Hm646063y1pFpTiVWXVMdPuihpJUsmT5HtiLA0/TsUdHhS7t05bq9KG4LZH4rC2BXGuu2vB585k16u3mmro+nMwwXt/U1Qal1uXaVqUMkVsjflfY7I+vLrl2WrLt4DmxdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtxUutSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtxUutSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94A7C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782658713;
	bh=8IXUtvT4RKdPtsnDRDTDyOuJmJr6SyIVTfWzG1HUQ1s=;
	h=To:Subject:From:Date:From;
	b=jtxUutSNwTKkkCWn5dqMkqvXwbf1KF7TLB9A7JNsQ3mcQqJdeiGAxdBX9kIcDchy+
	 73SZR6MqZWFJ0wq/Gc4pmtMgDgOrtPSPJZf2+rqJTdFbL/COmymdNdJmNdr6V0wqR+
	 MoxHjC5bMROGQteX8HQXExUiz6DiIIsb390o4glh9/apLxMmCPr3nqIeZpJxXHKFGk
	 VCMY8XOg0o9nLKpNXagpT0HOYQVsWzKpQpOjcTvOxAVTQKDNVK1gqFmUL0ISb1T2f7
	 MfybiLNYYJAVftMtt2NNfEh7KElduWYaHvF34JH1YNJIcxD7kJPT06lXIhCLpeWReJ
	 ILp9FUmuzixOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED34C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265871370.13053.6981094117903126880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf202f551e2f247b88efd90beed2e056ac28d610f8cf5be0fef56d789b69602
Date: Sun, 28 Jun 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782658713
