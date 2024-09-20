Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C6C18CC05
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726871754; cv=none; b=fvKLHNz8t0rO7cQo+2ZzFuhl8MXWKQVUmModoe/Cjtbvls3R7Q5duSw3JUkiDdQAwaOAfbjNEjWuPhAHviE+P1+YDbAv16vz9GkaEmPLgFTaxLURaB5hSEqJmZ33Vi6ZMJjcnUjs4gKHyoWtz9DjiHLIY9SM+qF7lrY1c0Vud1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726871754; c=relaxed/simple;
	bh=RFUBxasIkM1ULZRjkTGOpXPzDfuD5dL5rZpOAM5xH7g=;
	h=To:Subject:From:Message-Id:Date; b=b9JFvxncX5MuRtp8ln8IcB71VMTK/e81v1M+VQNSWd7ueE9nbhRdKAqqp+qvQeHCNL7ctXFv9hPrjj2WfBmjW4ex7VFz77ntmLp/uV/l/DRBKlrEls25HtFSaeS6Lbn0O/EG2UrdAB2bzgsMT7YwXvFPQ3qZ+auE/RwUeso3tI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sm4tX2jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sm4tX2jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AA3C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726871753;
	bh=RFUBxasIkM1ULZRjkTGOpXPzDfuD5dL5rZpOAM5xH7g=;
	h=To:Subject:From:Date:From;
	b=Sm4tX2jpweRhhtlwBfvJ2SdIe33zYpiSLRgREf+HIQcDx4jmBj+EiVJTVZt5qf0pJ
	 s/1wRX1uDHJj0mrAnvWYlrabGPClOeB6HMooI21SQarjOABEwatFvCWVRKhw25g1kl
	 WXTx7PQWEHDIJnNszh8gEm+SgkoaQzGpHTUV4qHOD0TDP9NlqXttYPg9M5/LS1/+f7
	 +uNPGzOTrWUyFSm4DIdTvrSYBC/PjRrZ9I9r0HhfdgMsAzNhcGNkSiTw4R7MQxiNXs
	 67GMmYZFQCz34q51tSkpA3NUMlOy1sexS1qFIgp6xLRcQ5E1KEit+vyFl41ipbgtE6
	 ymdBatbQPi2yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C30CF9C68
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172687175360.11939.2095165837596802681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1412b13199306dfb68587bd72cce3abf5f626aa7ac9e3573f3b59632c1f0d2fe
Date: Fri, 20 Sep 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726871753
