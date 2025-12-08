Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0093D76
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765161173; cv=none; b=ZARq9wC4VOdsO/T52Jm3WorFI2CH1mK4CL+Em8B8aiSfWREINbEEUNu1mcJbXkjju1mLYYW+dWh6hKW6rpxfgQVclx59y2CsMSU6qGXOaG5nOqx966WCDwPWgqzoe5ExhZEoibxMja9ctxgH4hvcMoQgYhO0eEBhqslaWa2jGVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765161173; c=relaxed/simple;
	bh=T1N57gEQqIFoZfgzB/ir2VQ1dcZ90FNCnJYitz0b3U8=;
	h=To:Subject:From:Message-Id:Date; b=O7q6v5HloUm+P0MdiXQuqo7/f0+qvZzJbzl/Z7yo5dPnUN7mym3NQnJF84sbGJQGsj3TdxH6Gra9WX/P9q8SmkVU+RSz22YAhRYszu2MM7THK7nlgRq/gojNIk3i8/ul0kwg0hTLfsxV3dLRPUcVIBXDhA8TTg2Gw/CAm2WSmik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwOQBZzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwOQBZzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2746C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765161173;
	bh=T1N57gEQqIFoZfgzB/ir2VQ1dcZ90FNCnJYitz0b3U8=;
	h=To:Subject:From:Date:From;
	b=dwOQBZzvDEAidDbItSeIA+0ziGO1j5T95t1xL6mneXslsf9/iccMaHIX5Z0s0PfbW
	 g/huoFrSswgY/g9jMCaYRWSIOhdf4arGV0h+ZSV9a4fkZNMX5oHXUQlww7lmoAATLA
	 ZwtS/cb+Yp7/FbHcx1aY9OjHKL818ouB6vKJ25WAkLvJRfRqNS34Kl411rspllY0x6
	 TG9MKI3VSXrtd0Idw4EdcB6aFm8PcJ2kED/46IEXJ3XumXP+iKbRi17qepEEzMqoGo
	 UcEPS2W48Mnlrz0MQjOFNwzKEt62gU6h20RNsgWQ8/EfY7LfSZcIekEL/VsvYLKwRg
	 h5dq6XPCW/lkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C90D2CE17
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176516117358.20447.2374567994498371937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47b9901cdd4a833a120d750db45238e303ad280f28f67973fc20a0731c57a48
Date: Mon, 08 Dec 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765161173
