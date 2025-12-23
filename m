Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE922737FC
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766501634; cv=none; b=Nz9RMqWnb0+tFLSYeeR5PGoygfpkQyHjDM+pqvnm4lK7VmKjla0yZ1KeB1jtr0ibdpedwUilbauYMdUgr1IDXESHdecMQVNDKB+3AYfsLWg5f36bE+IhEL9bLQndDM290QzefgqitqX+U5AqZ0KJwMVBHSlnRwnimJjeL7T27Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766501634; c=relaxed/simple;
	bh=c81fx9KLG580s68KmoC278pvWclTyuC4HPwZjHvbwxs=;
	h=To:Subject:From:Message-Id:Date; b=KrCZWAdfxbk4U+D3dg0ojybqCnXIUZ8WfI1HF4Xk6ieZ0ORT9Di/P63ig/j3DN2bDCSLQ2gbNo78Da0ot2xGlAT2Xc0fVBRhzz3xq73ivWJlfoWa9NKYCqljZu6bsgbQyL3INBMOoYliamtUaLNitdx3EcqaA59ReU7A0Et327U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EARjLepS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EARjLepS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7418C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766501633;
	bh=c81fx9KLG580s68KmoC278pvWclTyuC4HPwZjHvbwxs=;
	h=To:Subject:From:Date:From;
	b=EARjLepSFyhQqvCqo5j95Hoe6cQvB8bsoEQ46MitTrTyuwTYFjfjdtL38OXUp/tH0
	 aVtbwiEGeQKShJQv+atWeK93YHloTW6Gw8pFv8VddxLgkqUNqC12wZDMcBS2yNgMZk
	 m78xDv6WsMwMLP+5BRggi2dZuILuIqNyR4ForRx8fYcpyA9Ztxx1GFKpF0tAF4H74C
	 5kzYRSN3au8Ckcxu+zX6//ji3mHm7urjC3XtM1Z6OKU81M8S0kyDZ7FmYPmxH+AUbp
	 81dTmt08QGmOqONWO5Pj3eVW4Y72AQSejXkbg5Y+alIx4LNXsDChA54Bfo1HNrJM+8
	 0autFq4DVoZCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C19E6F093
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176650163357.23951.14036573005628309426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a42bfd204f502c34237947e8b3258d56fdf7d76f4f19729ac0cc4e503416d323
Date: Tue, 23 Dec 2025 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766501633
