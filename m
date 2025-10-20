Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FC32E03E6
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760946594; cv=none; b=OaoUK3Tq1We8703WUqWxZtEGr7xuGyQcW6vaCLrHBsR3e2k9EAx9DiMZwzeCKTJU2/wVVIgkr/XUjsRja4sRvTX6ocQcgMPcnW8TdaY12UWqCrcC2K3eB4wU2ICugqozQurt6gK0Fluy/jk0WZIWcywxTXOu084puuiP2YuGwBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760946594; c=relaxed/simple;
	bh=qeGE2SPSbSYf4PA7x0pqx9ZbE/664OI3qPhJOXNjSy8=;
	h=To:Subject:From:Message-Id:Date; b=ibyjXuXv1gloPnm1lT3fqIrTQI3+JVgthvpAIXCvyo+tiKG5fUPsmm4paITTFRHystO8MeO/WiyDdBRSXFOzSLSWGDEIS/cnOP0R8orgixbBsV/iEttdAfKIMmoThoo4O2i+pYHo+83+YhvxUaz8GlzS48kkeZgNucBACk8UNTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoAG9kCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoAG9kCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50B2C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760946593;
	bh=qeGE2SPSbSYf4PA7x0pqx9ZbE/664OI3qPhJOXNjSy8=;
	h=To:Subject:From:Date:From;
	b=NoAG9kCN4Bnufpc07BAptNtp+6eALIuc8aDMpMBZ0v0tQPyQvaaO0zQKxeQk6q83Y
	 /9ZLcSxiyk2AMP5Loj3hl7F1tCA7rIMbab8v0cX23THdZvA909hRKwQA+45G4DMwzA
	 4xC84sIfn6nBfJRTGsjIJLM8h6ICG7kIvx/W7cNvRpeypS5+7tiP29408tNMCcjmC9
	 fhm6EQrxrcUybpIc+Z/B0jLCZWNOng/ARIZaI9mn9nn12wLbZnNLA25g1UDy8CxIZH
	 AR/5hjfJwGkK0caq2/MJT1aa23wD1NrSWKzdoStIpf27KGSta2Tn3VPp/jk95HC9aR
	 21tLRpS4Eqihg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92452CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176094659357.461.169961683679693408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f4386871846731664f3b5666ce2f658b3555b3fc85f5de1e85f2dc6c9fa936
Date: Mon, 20 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760946593
