Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165592417F2
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770083034; cv=none; b=iA1R5JCxsy5O0tPRZKdxpA8FIQie0Tf1kthWnJcjclwvJEwhtB86ER9xIMFIXChyH4ow3Nr28+vA/NfO6AOAMSoP+QIj50Zm9lwVv/frIAIx2cn7S859B/CdpSomrWcQUMmRL9AbWPEJcNb+KDk0JyOg08BdNvFkAm3AndMIun0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770083034; c=relaxed/simple;
	bh=R/L9iiAj6PmqmF0UYtP5ZuSFAiP03VKE2fwxG1hppjw=;
	h=To:Subject:From:Message-Id:Date; b=vFSjyIOHBPkCHhfCZEeu421Wte5szTO82dWUuJO8OEkGeYKvZKPJyD1XB87pddI6ORwZFXPCqOM3dhRiv0gteTpn5I0Ory7CHNH4LZXx2c96VtPdZOfrS4B14vtwhl3zfgjvJ2fKGmTxDOEnlSF7dLNDBUeeBNrHmDInJ4ViQ+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCXSQx9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCXSQx9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A480EC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770083033;
	bh=R/L9iiAj6PmqmF0UYtP5ZuSFAiP03VKE2fwxG1hppjw=;
	h=To:Subject:From:Date:From;
	b=pCXSQx9XD/vuUqPaQm/oEH9SLsoY7yN+tcaoZHSCcXp7KaD0EMXV59Z8HmkyBsaMV
	 Gvl+43pRCZpVBXAV0pSwGuS3HJ89GzunNVkebmiBsJOiKr9crC+GjJSZGu+5Tvp53s
	 NndNzusZN7vwWlEgIOO647uzrFf9Cc+NfsDyXxAWYbREq+M5GCnu2VkdOc2N0/BBoq
	 QvM8AEn8PRjW5MqIl4Uh72CQyW5xxYuqGAtwSfdBLLybM18rjYLtZ+2VrZBPFLMTNk
	 CUqWiOYC49t2U3sYV85qjJO71i0Mi6FcmeiDzrpZ1RctnRALac1dA+gZZm4XhqZV6H
	 9dUMp04A/+AdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E28E73165
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008303359.17473.15256219444977015071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28d94f9119b1daca0ec8cdbee5da5137b9952be9a63691204402f1e3fbeef2c
Date: Tue, 03 Feb 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770083033
