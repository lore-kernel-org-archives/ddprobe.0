Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333563769FC
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788473434; cv=none; b=bKWkonBbASd2Qqq9WxGf1CfG1eymxnfpH4pYAigBcYUEWWbIUFNEyhjYLILAf/U18Rn1rW//dWZXswYL7rAKkPN6sdN6MIZKX5FdR3j3Ual535LlauA1Ucxts7z2tyPngleEBtXhf4d5FNs80YH4tcaB5mxHtoN1t/w8w/yhu/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788473434; c=relaxed/simple;
	bh=yso57zliB+L+GjvjLDIXhrl1K18wV1YLzkHN8Ed4/s8=;
	h=To:Subject:From:Message-Id:Date; b=T9FnOzFYP192zdQfFzXF/mcEhsApWnO+NLAAO/TlMhvWE5k0CxEPJK7g6l5XPp7zPhMq5DrlvmaTGamsiXWKWhZ6rsbbXYMjgxuTTDyxVJCd1ycJLXLhytB9ltwBOxSIoZz4ePuV5X3D69UlbITAQQn7V2tdLOzE6+a1xljNQi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fS9vVq54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fS9vVq54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF2EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788473433;
	bh=yso57zliB+L+GjvjLDIXhrl1K18wV1YLzkHN8Ed4/s8=;
	h=To:Subject:From:Date:From;
	b=fS9vVq54cPFI5vrr9idYQc2tn6ex7o2B9IbtXnoErO1PcMGsuR4qTIsWS0SMeIasj
	 peu5coBen/+zdlxrE4Vv62rGyZml8JC/TLLrZgmJonSObgMEIw8cItC8ckNcRVHpQo
	 Z2yTVaX0fT4wa5wZJZinr0I5j7XEaDaSji5WemlI93In5oB+PIm4feAq8lHCKRz3Ip
	 C2mmJ8JYYIooQHpXt2Ye2b9X88SgPbhQ8icSJzrzqNs2nPtMK3NGTBKUIyDQcL93xM
	 M1OcxOIhIv9+gqlFA0MUmsoZudrHrXE9ANHcrzCuP8lkxamk+Uv4evKwy81Z30aSSs
	 T6lCMjw0q/SuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4CEC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178847343369.5974.8344473207126588238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c0b473b1616d7afe685aac0702da5a07e2fad63c620323c3823dca02b59a3c
Date: Thu, 03 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788473433
