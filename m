Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516322DC32A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780116214; cv=none; b=uZyqrS0xeJlV15evK9m3RYAjzzVGb3KMEGyuEhnbt0qY27MWXk5TiTyV8i/ZfvEikHXopZs2eNdRSsj40CAGLV4A0qiRkUICiGPu614MOcK13iNBCnIZPsudTvqYimJYyP37n7BFHAYy/82SXEhRM5W2bhaB7GYualriB4vaK40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780116214; c=relaxed/simple;
	bh=/gi+GT+24o576UgPgcrpbye0SObJs0ZNYS5whi6urdQ=;
	h=To:Subject:From:Message-Id:Date; b=TAqJGbDjIp10gfuhx5BjtTiQf7AjW/7xQa4vPge/1PFRGsbGZM8c+hfch57p0r34ZZEzcmFP0dBpr2OL3SjEzxLRZMmu7FNOQixCGUcjHPnfmLek2Nm6yasVK8w9XEKknWRRecVY/hQ1xKxMSuF4JQIBSbbi1wT3CW3/bev8KaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFuKHMEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFuKHMEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D577DC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780116213;
	bh=/gi+GT+24o576UgPgcrpbye0SObJs0ZNYS5whi6urdQ=;
	h=To:Subject:From:Date:From;
	b=YFuKHMENucIcz2YQh4CCwoRIVr5ufoYttiFbuIvxI7dJGLh3X86I7tb+A05MI3ACC
	 giE5HCfdfj7t/3Jhe/3gRs5E1ai5VjSDuuxWsPEDOjRJbt8xDqtj2U5EiBlosYtK+C
	 Ku7lY2WmkVwvtqTxjV6vtXZrvJGg9ZJeiFIBpUOrHVP1ISgK6+fiLONshGmmi0JkY4
	 6c3NSpXZJaDyBvD7XC6MkyX3qvE60NwtdnRs/bWWf/2j/4H39oSy/VYNPD6unODt49
	 pv4jB5W807AvBrbkAnG6x17Ys48zgt8vu47NrNDfuj5dyaxy0U1lqpOuqbRWE/4JCK
	 zpDAkQHbNeGIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B905BCD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011621371.4015.14486813561009635289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e1d5d7f5254d4bcabca2c80fe181398227a86f56fd887b4fd6754884bdb552
Date: Sat, 30 May 2026 04:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780116213
