Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E3839021F
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787517034; cv=none; b=pONAk3HUYKMg6u/rt9Z/LXHDzYPsZ6U2SNV6eeM1uIrGTb1749RTZn8x+JH7GZJA8XNOknccqLNZOUsItNX34aXOm08S9C4G/hP7Ci3Dwu++ka/66AQ0YWzMdgrGvB6kOGppSXhkg+96hHg75EqpvyYClUvqucf6A37jmGh9BM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787517034; c=relaxed/simple;
	bh=eLnFLG3g3JwTLsyryRPYGTrtlzwkh6fNl0U+1q1ixQA=;
	h=To:Subject:From:Message-Id:Date; b=PBVyhno4rnK5vWc+gFLiSL8W8DjK1cWsPi66JuPBVnIZ1TlW5Hzmiau/Lyarn+8noQPnsiVusWnFY9XQwomdmPdJXkGnCfaSQJgNX1yalDwCXKoE5RRPeXyG88+iWrX+2UbTG1tunZfpX5cwruAeHjrBoyMcf/WJMVTVyfED45E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JANJuASC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JANJuASC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D568BC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787517033;
	bh=eLnFLG3g3JwTLsyryRPYGTrtlzwkh6fNl0U+1q1ixQA=;
	h=To:Subject:From:Date:From;
	b=JANJuASCLTTDYh2ffseIsQDKmDIB48c4N2MIo8yUQSaVWY50EvStHS/xdhcetdYNT
	 EdaP1Q/ExBhm8zZlbPFZEeeW2CIBqdRRSOIOSbsFlIgZV0vXdyPkIFqc3Cu76X3dro
	 JT799Fr3IVYybF43xUr4jBHa3L7R+I/GSAhUmkzRW17MPuXQMippsKSYIam8JSLK8j
	 ygNfne9oHBTGXCT4zpSCiWAHwue65S+oz/lsAhdr19Zb19W734Ahm8UR+gDQyr+ghF
	 MmrIrTqq/I97HHksz6OFGdG9o4kY0tCfu1hXgeDqPtFBDCulPHaaas9ntnwmIDCzl/
	 icY37IfK1/OIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE262C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178751703368.25542.6420703486081399866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93956aff3f1a395d83e81d65d3e3bb46d8fab3f56caf693f8724a73a25c07537
Date: Sun, 23 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787517033
