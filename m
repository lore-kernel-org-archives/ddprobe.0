Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AEC32907
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716094343; cv=none; b=p//tFxaMPXBCrY3286uVKeq49ppOtT9hg9OdNtEsMaGavPsPo4ztVoOMkjF0+kfcOWD4nd3PGZuN+J2i9IrM58b4gLY2up7hKuaeTu7L2amjpB8NSgmko/wFUchtwD3/RakoZfTTI1S4Q1ey1W3TVDpIcPkkwqzGO1Dq5nkOBEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716094343; c=relaxed/simple;
	bh=v9IMtfn63edDNcxyAwnGvxBQz+Ca8OWwD1MFZtNErFI=;
	h=To:Subject:From:Message-Id:Date; b=mFe308b2N1uMIJm/kg755fJc0/z8BQgc48vgjD/Tqh4CxOxqyHZ234+3k0ygCPL037FWo2iuy7pUnD9XMatEOcVO6qZdsFZDU7rL0Ir7WLdhO79Na4GmZcnxevgitaFI+a8kUAApjTIokXTGsWFiOkJt5I1KyRqqGuTUc9TaVtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJV5Z1JP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJV5Z1JP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16552C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 04:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716094343;
	bh=v9IMtfn63edDNcxyAwnGvxBQz+Ca8OWwD1MFZtNErFI=;
	h=To:Subject:From:Date:From;
	b=kJV5Z1JP94GDuPw0UQmVSPv3KojTrJ/h52WFSkdvfYGvNmL0DevevAMYr6NEftpcP
	 +rwhEhYFmp6fgRubHo7TDfA/nV3qpp223OQhCQpANbXkT48Ge2eWo/UrUaBhTg7kaI
	 +1dA2EvAc8EaKqrcqbewZeR+xa08ti4J+0bihnSyY8erfxoaKCSozXsJdx5Vw52Qfy
	 4/gZrE/TJYFfxWIUEXASmIp7XWa9vqext661nVqIjF1RLrQVAfppGJoLb7wj4kOSlf
	 qVgOzxoC+3IrMXxwrr/MdaaqPgW7oX8yM6oMGULhg9KE2GQ0KIZUbbG4tw3eo6aqgh
	 xBwmEytLbFjFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC63CC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171609434284.13014.8178143404588484545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0592f92b9ef528bc9ed2108ee52f3c51db9fcce6a386878ca7cf83b0e6a8cdc
Date: Sun, 19 May 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716094342
