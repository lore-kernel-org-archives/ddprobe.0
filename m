Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E193DF011
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776351454; cv=none; b=WnJA+p6tmoXWytw2ogDJwtoVx8KRYbG8B7EKldeknZ0QzW3tqdYtp+OqY3oTeZODBed49KvVGw3Em+iwfmmDgu4fV1FItL3UpcjodNc89s5uO7OmDr4WaNvl9Se3A/cIazhRDyfLBewitq4G1EKwdfsbqJyvmJpPax6n5GVoEis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776351454; c=relaxed/simple;
	bh=HcTaTFZdsGbY8Wvpll5RRzR99vkUThqg0eGvj4ex/hE=;
	h=To:Subject:From:Message-Id:Date; b=NNI1F57JczqswM45zsuwmaR5Gd6/HSu+7XN7PReyLIiRsnb2fvyMh6NcrCe0FT/4rei+0rWRVpv56EQDeYMMM18DyyBjFpYnoYKuZ/K08lcPXuzyigp0yJ3xgEzACfrSr84t+DYvPGPK9W011QYvmbcPnRMeSKtIXh9rwky54HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcKgZMBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcKgZMBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B855FC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776351453;
	bh=HcTaTFZdsGbY8Wvpll5RRzR99vkUThqg0eGvj4ex/hE=;
	h=To:Subject:From:Date:From;
	b=rcKgZMBsMMF+lfUY+jcW0qjOyabcVyga70VaA8/Y8jqllTzPlfU7W8ld6mt5iNJDp
	 CS8C+eBYE+MDt9uGiqnbY/p4cNEr9XCrOx5i10BDUAFFMX6U2Q5L4tR42NcQVWbxyW
	 uJFGNor5YT7qY3GTtDn8MKKU4v8+Jfb08oZ43qnF37MSok+NoxZYaLDOKubJAGEDiO
	 SRjUIaZ04SpHEcfQrnJdpucfOSz+P4X+MGrddJGWRieDZFzF2peFuUCGOmemJd21LC
	 2+oWyaxMaergsb60x2xJDQ6oBeY5E6KsYxdE9GC/VbYdAhG6OdAOAIon6+RqHPwbSZ
	 gYmWlrzh4Vihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FBBF8D753
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635145368.16370.2044882211065835393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6169599d07c4e9a5881f749b68f1c2ff7b6d7279ba4d56cefa4dcf005bbecb
Date: Thu, 16 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776351453
