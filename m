Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43223396B9A
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787557234; cv=none; b=n4eEzztTVJNOpG8G7qbWXb5oleNOaI5ukEjXfMDmZBE71dK7NKKO13ppp/E22qOR6VEdpEqKNrJcljbVWQttASno3vquL2kUPe2J4z2eYQ225ukYQX4+tuvjJM4dzj8i6idSKev4qpubs71LTVatA3JPDCL5u7zs7r7crWkkcpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787557234; c=relaxed/simple;
	bh=EQTiAK0O9eSKipghkkQjEyA6QEvFD0ExWnsFZcFS1+Q=;
	h=To:Subject:From:Message-Id:Date; b=s+fEvo/oU+VrOkaWuwzZQBA3H8+njXqPUk/zDxHf4nDtF0Zut5kgYoV/KD6WjEXQPcJaheZJ0rgAqoZrEAGuekWA0Dceuk0oXwYfk1s7L4D1Z/jFTnqKFDKxMEySEPe1HzXBoMmh9pgdapofRHXp7cxCFrUO+QnXdvPxjRiax4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bo30/XSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bo30/XSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEB9C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787557233;
	bh=EQTiAK0O9eSKipghkkQjEyA6QEvFD0ExWnsFZcFS1+Q=;
	h=To:Subject:From:Date:From;
	b=bo30/XSe1pKsIWtVAkGbRJaXPoSMzwCwSPVb5sKZTXyHslb5qr7HBx9oORgp8Qz4B
	 G9E5Nnd3p2wJ12yK/4Q4qq9foZy6BcI6R8NiNl99v5RXNKDtHVojl+V+ossQXIba6G
	 9PN/vBP0FePLkPRtEjYRyWXOx9tus1Y5sceICim62CQtav078PtKP29fmiXFjr4uV0
	 2rEo2oVk64ifcuQQ9siWXAsi8TpGxERNhvJY2VvuacaPgsS/N7CjpHgGgOy2+2NFAC
	 RlDvcXzCkjvieWCeQ22RtZFAH1LajFlC6tE+m2txcrOGqCJ50/uXHQD7TqS38u34mO
	 RWkNCwdUu51Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3ADC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755723368.28044.7505220302476409973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b19e935837277d383a3ca40de64b4d75f9aee5d273dbabf5791bb31794403a5
Date: Mon, 24 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787557233
