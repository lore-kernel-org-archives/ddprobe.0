Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F20A18D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752445194; cv=none; b=CcToTVFeMzlV5a3haquN+L+TajJax7COhZlboKx+Pf3w6Vw/yjnMdNS56ktMdhAEziHp1vQo85eenVXSk91f5JPHaapWmIrb+XM4EBA4S2+uWyrWuExrrfextQ8n0OuCz/NkqRNtURKisUsebURjW6vM0jcFmpvZuUrUWTDFxSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752445194; c=relaxed/simple;
	bh=FIrYE01oHRH0ln/+NH3vsYh8ROLiVgpH6Tgk8AaexZg=;
	h=To:Subject:From:Message-Id:Date; b=fo0yrIqhIlSOPaDJiud1eKFLOGPxkcAZIYnQo0yxnvkIEPfM265DHsCTkHbtx1zbg+ZExejHBqdvoiBHSPImPO9GmXuitrzLvI8GXqv/4YxxE2+vG+4X+KSS374f46iElA9wFOA87FR+Yyv6lWVf6DhAgplmnqbODbHsyiph17w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSnFyyWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSnFyyWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3635C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752445193;
	bh=FIrYE01oHRH0ln/+NH3vsYh8ROLiVgpH6Tgk8AaexZg=;
	h=To:Subject:From:Date:From;
	b=jSnFyyWO3B5R3tniD+AOsJwCzhAPO5Jild+cGpAmmp+C9s5lE9IEGfZp6Ga0A8cPe
	 TsZmGn2KeYH7kTCtHisqGtbgvHByv54zfE2HDhBYUc6mVq7nrYUiAWvYS+bNcKmXIZ
	 aXKv1FlloJw4vMW+swuPGtOm6zQlHwuMrun0rpnyVN4QLQAlaltmvYUV69GjOH3RUe
	 l2ibcjjIpct8p2qMcDnEg9yJ0PCI7qp2BvIUUHEq8bGWaRDH/KLvNLzwmR3TdTFGlZ
	 vqWammlrff7k/TaeXd1vc5OEdInT3pUDdqoq7ljrTuBUt0iEnBOMSY8wce23JROBlY
	 eTFqOFq2fKOjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921B7C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244519357.29013.4568317628971372277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f757915cea0be2d150a036aa9c077e055003b2cbcf837c0d523239ddeca06631
Date: Sun, 13 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752445193
