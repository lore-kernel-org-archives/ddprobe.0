Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13385188000
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753631394; cv=none; b=Nds+zDlL0oQoe9fY+I4VLvFrE7RSrgfho22wWg8fTaWofw5WAiQNaE/Xbscu32z17/QXeom0WcHSQx1ivq4ijwGwHVkE+ciN5I2TJU12DWBRdCjFPOepNvIGd9Kzzo9vgNyc7bjzU2ZCUWfE8Lm9Ok4UHxe4tMentXnOo/Fm4PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753631394; c=relaxed/simple;
	bh=2V5vRR6jsf6qwRTgw2FOProrWj4+kIVrDGbmer+KfyA=;
	h=To:Subject:From:Message-Id:Date; b=Oq34AXmAQzPJz/e/A4guM4OlL9BUhKFkxfXtZrza9E3000XxZb3LLNWt/jbzH6RDIGAnoLaszVgSOb3FoLPCZViVvlhIaE1tTpzKMMBGQu+2vso6b8st3/axjOrR7NYaBNwahjO5w6MvFj6CukD6jvQiaahYVmi6yjjUMs1CuK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cl7E8rpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cl7E8rpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5ACC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753631393;
	bh=2V5vRR6jsf6qwRTgw2FOProrWj4+kIVrDGbmer+KfyA=;
	h=To:Subject:From:Date:From;
	b=cl7E8rpCN2Hl4bn7rUh7QmBF0nToGF067Uouk4LG/9Fa4Ywf844rnspaD4AoOW5gF
	 Fcy86Ad5x9vhnzI6j++N2cDChAdfJtcM9P5p1wnDq+dLaI2kw1xW6BEfeBKONNDG2u
	 sj7f465z+btcibiQbu6A8no9fK+zF/sxrX+qBRo6fzlShsBDu+OrxcVqEWy2sbVcCZ
	 wZk99IusK7TNy1Ra6+2ktFsEs/wSHnC+51zqCI9ZS/gZg5DLCYfBOektYJmX2oVvNX
	 7u5MI98ABh5Ws0102Dv/xZLoXYsdkEwfv0KDckhQ7NR2+Yh0jFH+7Ps7HdmKrs/F1q
	 h9b5+LBkowWwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F366C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363139357.5430.4102555171730308551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e16531d9b8e2f0ecd6996c1d091301cf4087b5424f92499f8d03f8231fde49f0
Date: Sun, 27 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753631393
