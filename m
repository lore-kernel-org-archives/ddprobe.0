Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21CD2C842
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707144497; cv=none; b=tKJATwILPCCdggCV1F6rZ7eTfClH1Iw2653f/M1k3mh//Gi7TARIjBxGM9HmpM/K45+aCYMteTrlrgaOPxjgCNzEYCdLB4lF3M2JagTKMyFrVXZo4sirGdI8DjS5Ct1PlNz0xsVNRpGkp5XDHLuPqFD+5g53L/s3CA+OLKJnFDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707144497; c=relaxed/simple;
	bh=atScljs4/7rtLzSkSsb3j1yhGmp8rb2kZuCaNF/X07s=;
	h=To:Subject:From:Message-Id:Date; b=LITCniDOhMiTCfN26jmCPu/zjccqng2/JO6Pqj2urTVUSUnIE8L1Rn+c+M1aIRh6WTrnzNV53V6Wev6+FfS6CzYu5FcydiPe/94J2ayS+6ONM5i0d2IPXY1btwdKkEg4QbIWPxgrcx90QBd4PSy7jwzZkx1aFQ4QsPZfSbfwOLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQf/WwLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQf/WwLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79669C433F1
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707144496;
	bh=atScljs4/7rtLzSkSsb3j1yhGmp8rb2kZuCaNF/X07s=;
	h=To:Subject:From:Date:From;
	b=OQf/WwLuVggrEHf8bbL90ggscrrm0KMmm4FcKSCpHcuByvoJrRVI5Kt+PdWoggT+Q
	 ZjzuEDXWQnp4SK0S/hvR4EA/sjMalsV7pP/4uMpEZlyBMHcRjLXhwE3WfyXezx4Twp
	 1TAXa4/cNhhwj6aF6mF8xssQlsstFoxl+RWu1XImeSd5mbKdHtZWfGfoExuyo9Pwm3
	 mC3gig5R6OeCP458qAh92DJocUzTEwIlhsLCEqc/Ap9q+x9vGq5WuTc2V9LqbJgg7s
	 r2bfjexgW7KrSbFTLyp98DvTdTUi28rhEMx8qvmlUBe5b6r0KbuJ4KOJpcoGbetbNq
	 DVrvGb3kQ+K8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608CBC48295
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170714449638.4476.10155244007744799506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67da01c259208035889d16f6da732654822b02e8399f5fb0b0826033378d4bac
Date: Mon, 05 Feb 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707144496
