Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DF127EC80
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770854094; cv=none; b=jvLdqGZsYWjctIdeYAUFT+5kG3lHBQOP2uOXihTTIHCrD6BQnzuaPae/U3XrUNmUOvUGIRQWz3rOjkuEQmGfFYDfdNIopSDPFi1nUhXolOyFDKmU/BliqgmHid8r/C2tB1XUVGziE6R9zUNCo7xu7LVyRtDMiycIH+nZ+hZTMDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770854094; c=relaxed/simple;
	bh=yfwitaFg1RN5oxbyH6P38LypNgoODFLqc/9ydO38kVM=;
	h=To:Subject:From:Message-Id:Date; b=IOgW7E/3vjbJp8d0YZfC8e6RiE95DC2hq1hVlh5RbYu9J1a3iaXPG6KXiyiks2KYdSpKlTI3I+k8H+XoOpaYaEAv+haJSyWqPzK3z2k9HXpRTXcVONsox6t+8k/XZitljuhLz39zTYZZB5Ca3Y5LsMTbJ80i/8PCqRTBf+GkOxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4Ue9rQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4Ue9rQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA16CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770854093;
	bh=yfwitaFg1RN5oxbyH6P38LypNgoODFLqc/9ydO38kVM=;
	h=To:Subject:From:Date:From;
	b=G4Ue9rQ3JpqdH249LKezcY1uB5Syjm6z/GZBPeVxoSSBrekiIvbuQtSYGPwd9A/y8
	 QZoEBQYNfkJN4xtf4gmgM8S9eXuk4WSyB2IeFEoupaU8XUly3SYy7a3WQ+LhqoArsd
	 nyKs2YmW5P58UIwGkNY6UsOyLZmANZesRPpOqsMcD0MDe0Y9kct3kBp1JMlbR0nBwr
	 zamXppeaqVMq4odjDpqiPEmxFogN47SaYT4L8BbgMTjJsOXDISXX9Rl0fEhS3BWo8J
	 ofbz23bfZV9K2WRNPAdnxqv21TBnR7ST/aRJqsCUDJGjJslzFfGdw9AJfBTrMpFiIS
	 yi0IUMulneBRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9697CECD6F5
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177085409359.20659.2919989785747627699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1e8fa7131ff119be9f38147edd7b89544771389ea0290fe9975c800ab849d5
Date: Wed, 11 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770854093
