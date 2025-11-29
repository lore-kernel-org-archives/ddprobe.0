Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE2E261B6E
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764418974; cv=none; b=L+5TZmsW6VhRfKaxCQfypSShg2TdoyntpHYoQIO/KmjvjGL7Co9kytk7yq3RddhiRQpeoU3w+PqXFsH5y71WiK254zh3EX4XT9vDAwF4yXYx7lepwzhcNJowPE29MzBx4qGyxq64ELy8So1npQdUhHelgNh5YiA8hghj9qkR2V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764418974; c=relaxed/simple;
	bh=vU3pXjfhsffmryOhYucck3+tWuUYf/XRBzeEdzP5uyE=;
	h=To:Subject:From:Message-Id:Date; b=BERgdwrxUFTBb/k+pvd7RNFdClNMcu8LKVy6nC4AM+9gtVVSAme3pki753v0B8WgsOOltKbIT7V2jww8pUeQYc6OGQl8tTq39KPSEd5dF/imfdGa8fKyPO6iDemNHbuLbrNwLCZx7JgWEzF4zUe2arDSwEotghynG3DPnmPEAP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bK52hPOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bK52hPOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F30C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764418973;
	bh=vU3pXjfhsffmryOhYucck3+tWuUYf/XRBzeEdzP5uyE=;
	h=To:Subject:From:Date:From;
	b=bK52hPOGDLseMZAvZ+F4X0+171qcrwUYlvtdTIZQOZnQTPkrwR4dfKLTyMFVxXlmN
	 kTxjPkKMzSAUUgU0vvsCt+fS0OFTFc6U6Vg6UrRmAJq0f3C4noKjM31HzW1uKVQFL5
	 HV43aDnncO1RUJvDhuY8FdDsJXzHCWBQ0bTnoa5gwKfCD1vWAsXyRDPUp4BbNRDQZc
	 2oN8+MGqgpTOc+51ZM7/V8OvOhI7RoWBgYpGQ9UZeb7vQTso/WcTQp+hZXsiVizAAD
	 hD0H1sp6O61rlM1VrXLIkwMMZxM/eMcWQf76NGVwBaGGch6PvcMrsSWZ5l/uu1xBUM
	 HesFPe1GlOD1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951C5CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176441897358.12707.4081060269078450797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9f6cc687b3b162fd7937cb92c59637a4e6bfbfaa0f2fd78c5fb8b4bf59adbe
Date: Sat, 29 Nov 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764418973
