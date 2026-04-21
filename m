Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 793F9347C6
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776734254; cv=none; b=Kt55Kox1c9T6olkXAI36RO1UQV/cKeLefwG8s4aY7HLPeXvGPDeCSlX66YfhYgb96VCT3jmHR1OmCcLh1t1KYBUutHPcTTzsHGgHuH7DKxepmIKqhhZTupXYq4nBVDjWx2Ry+Eznd5d6r3gN6Kg6znMvSXgT2yDWAfmY/MPn1/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776734254; c=relaxed/simple;
	bh=W0zqwicV/cWY/lvMIkdTESza6s38dEDFKj20l0Mwfos=;
	h=To:Subject:From:Message-Id:Date; b=QyAgTmyBzLPdAY4jlT8mZJgwINSWv8tqBvLlKQ3CLX91wMiM9psaG3UzIriztnJ+m6sNIfUpttnRDmXXkqTdKIqn6XU3YDUQDr1I9ZAXh/A/ah0YEBZBKQ+n5RcKoHWf26P0NBsQ//Ol6vhEm4OEV5j1OP8AwCOYbF7DZeYM7is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iz2H/No4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iz2H/No4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B6CC19425
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776734253;
	bh=W0zqwicV/cWY/lvMIkdTESza6s38dEDFKj20l0Mwfos=;
	h=To:Subject:From:Date:From;
	b=Iz2H/No41arurZsDHnbOJ3FqcU5/GIXtLE4mVv4qmu+Z1oxz6CyAMh3UVlD95npAU
	 dPm/1UE5zpLC/7wuXM9yjUBmHphNW3bklR1b++PrP5t2/4wVuk4ekbJildfOSlSeJX
	 eW/M2LX+dseFy45LzUsyyBwwFz2MRgK1h9ffbwbe5TvZx/O/pWIxvKTvNVXGHv4UAw
	 3fWE4UYmvx/lyQ4IaFk2n/OfsIGePmd6k8+oVhY7BNlYxHEsqWZCxlEJpDT6xInTxv
	 zcrycexqwpO00TxPGVACD0Fq4BNK1Zg3GNlbY0E3MJT2QTF8UuMrrpGz64mRexcFxW
	 q+xiR2j8QbU2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A88F5A8CA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673425370.16984.7654076338554468330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6613aba4d3ca1e66d35b7ba551dd22b44a55e1c222a6bd848ef51287d9ff8b2b
Date: Tue, 21 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776734253
