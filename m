Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBF522E3F0
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784631514; cv=none; b=bGuyoKB1yCd9jmgG1QIAgoEc1t+aJe//6KKesmz5z4lSR9+7R079zRJFkANY+CoRAunzH91+QHsFRBVyhwnVzz/g2s5u0VqVCc146ZOtR9j6Aka04uDI3rLrchXcNqHpl93CnVnUKj0PKViyEgcg3e03hgboEMELYBGl8QTk3wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784631514; c=relaxed/simple;
	bh=8wMgLEZjUdI4i8ddFoKfhLJwmSShAuRvPD9FxhGoTd0=;
	h=To:Subject:From:Message-Id:Date; b=lg5gM/hddhx12vP0eP2fxdG6p1m11KJCobhQmLqlUoAOAzC/r0Mync72wTboAXAH5nad+XsojizrHL42Of55ebnt63ghtDAgudylgLrrbZSl5YnUY4qKPPaJPhS1XARAvs65vnPwazaRSke009rBRQUtXjuFvdzg12WaqRoNu4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkSi7LpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkSi7LpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAACCC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784631513;
	bh=8wMgLEZjUdI4i8ddFoKfhLJwmSShAuRvPD9FxhGoTd0=;
	h=To:Subject:From:Date:From;
	b=pkSi7LpVGMrMu2jDCFXnPaqhdf8Ab17qk5sTr5eayiTo/k75i39UYhSdbA0qNBg04
	 TaE1fJXDzIw97jzVWKIpZ29VsB1Paz/JYyR84wJ0QsdN/pYjTitLgI0phcw5Q6G2Tq
	 hScZh8HiKwFOIKon1JcilCJ/ICdJOIc+n6zeuFlc8G0lzyNHdBypBdKcJNW3Ph0lmY
	 fCb6/5IBzbMHvKlC+/9HT7ultXJLQFUAGYTtukgyAqqYInXQWL39NM1ZckjGfWDokd
	 EI3kL7vTCufdcv3p7hQmrLdzkbIjkbpwNMcP4MDNT6cJgRcU6VzA42207qLHlha92g
	 uf1125tfOl/Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C68C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463151368.14249.8279635475831361403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df962aad3e46e6e26a3859a162e16d8fa2612f1373ec860e31d7dd220eab6358
Date: Tue, 21 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784631513
