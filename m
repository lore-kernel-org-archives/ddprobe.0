Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4434433F588
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783441714; cv=none; b=iNOjQoXyyrtKotXtKAPLmEPSK0vn6qfrvabCEY5QyTxSIpZQdpXKT4cJV9o9fTznCfQ74BdLzJfFKND5QZcTCJiG+CTNB3ZNuIHhwqQfGziJtPmI8tZox1r0l+rAmOLPHC1gOInPTqjdePoDoQavim6OIOnIjF/LDfHzFXSzt04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783441714; c=relaxed/simple;
	bh=txG+y2a9L0WE/I2MVi1tR5oxNWSa043o6A1Bau6Up+0=;
	h=To:Subject:From:Message-Id:Date; b=GABb9lHcFppb3UlFBysQPyA1xoC+/jWc7AEbGipipSC6XKHvrkjW5y1Gt24jq2YBjfWLwJ/VCfQTlFnPCJF9wL3QyL5AAmLmjMLZjyTWmbYHb0FmwUGNdxqfHlcTptv7+oz1ZZv+C69E2HT7RsIaXILMhPMXeTo2B7psWKc2hmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idoBpELA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idoBpELA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C971EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783441713;
	bh=txG+y2a9L0WE/I2MVi1tR5oxNWSa043o6A1Bau6Up+0=;
	h=To:Subject:From:Date:From;
	b=idoBpELAsnfU9p/gq7tsU85LtM8nsRV7c9uEDCPJO+7KuaZGVUZywsUtGvNv5oHFU
	 D00zsJH3tg2gZfxQj3pf2XZB4bzyItAUhEeGU+va2ADxTU13CI7neaGTVlXU3J1MRS
	 YJ+SyWCNRpzS9BXEQHubiB2G6idbE9mi7I/vrTY7NNsHhAZFXOUT66R9CI0dI9b6BT
	 tB5QPC51iPmmzr7sfu/z9IjAPxnt/2meHfYCfhNFxwJom7ITz3RQ8gGAfsui5oZCVg
	 hTOlYl+3He0ayGWZk633kLLXXP71Si3Hkvk6xtVQ4YyTD88yRKy8yMQePbpKKGE1Zh
	 dCTTHhTE2BXqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85D6C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178344171368.9846.13159429155494573526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da6757f951a8b84bd6dcc5e0cf3f9ed6f415c4cb851230fb5a4d49aebfb26bc2
Date: Tue, 07 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783441713
