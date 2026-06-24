Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3910C1F30A9
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782266794; cv=none; b=NymTZOce9RLWlUHfFU9rxYye3JqIM2KG96hbDHbayFV9GiaEposRklh3JJygBSCyxpRqb2TRAiNFUa6eb09wp02rCXVrjdlUCCh1ELVijUafv+d3DurGqN5TwTIlYhI8n8kcmnLgM5Ve1vZptXOziakF+B8BaCd+26hH8N/WWJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782266794; c=relaxed/simple;
	bh=jfAhANsYvZJbP00q8yWpw/px2u1cc+7rMc7knECKwRs=;
	h=To:Subject:From:Message-Id:Date; b=pRqPgmFMkN4JFxfU4ypA4EtU6lka2gbt0NiD28He/Zj6dQfYzFBkFSl5nig2R8h6dI9LX4CnAS/S+10A72Nj2lGpYQj1hk84Q9MMZc4v8+1UFnFwkIKQdE/308bnrubQ97U8oldE9k8FXOS6iOt4PpFUefn+qY2WaFm5CFJoBTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smCoJRnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smCoJRnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65DAC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782266793;
	bh=jfAhANsYvZJbP00q8yWpw/px2u1cc+7rMc7knECKwRs=;
	h=To:Subject:From:Date:From;
	b=smCoJRnPMxeuojYLRVUrG78P+545otwIqIf/dN+nGnMqxsqLoneRly21Xz7eKfTgU
	 E+LsAMrosh1G46kv8X0niaYI2ns5sCo/hsW6vGoX3j96RxJXKEAOexxSwfq2rZ61kp
	 T7toA++wAhrKZfDDu7futZdALlpSN/4VhS2Ifwli3De0Y/jMngJ8SwgAPeZ8vhkhsX
	 dTYwn3Hvh+n8Trbwwul9LFkSaXODoowHm00huAOYAyb1L8YxxyViUG57BSbwtrntt3
	 /C5C1bJSUL0PVaztAhEsZZypSQMF062Nt1vsNE1dCXWsX0NN2BEoLV71vm+1mjQt/e
	 4/3qYvo0hlkLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7EFCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226679369.6647.16680606266161528174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1272100bc25d3820034946f38cbe53f262324da8e9457b81fbd4ced7ba618c9
Date: Wed, 24 Jun 2026 02:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782266793
