Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C6B33E51FD
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778664036; cv=none; b=MsEAtFGTtnSgfMCEyXHTiqWow6w4y/6wjoDNUkFhgcIH93WMv0vk7l0jutxLxUTLZczNO8G3fvSR2qrXgpov63ucA1SXTt198XJS2rwWuelUA62PDdpg5lPNpu7YKNlKCsyUo8kGBO+4tIZNoD4UJGOEDcnn6gX5br3B871w3UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778664036; c=relaxed/simple;
	bh=FjnVv9709fW6kxxMsTPt0PyexB/42s2rISfcp6g70ts=;
	h=To:Subject:From:Message-Id:Date; b=V6sRbUi5B0W9PCFkeI8+zzb7tIKc//udQ9BbAOZKApp0MyNALuF1Wug0JKc5ekspKAS+R5Hd9usfZG6SmqY3Rxxiztco7PZjrwd1yO8tVrdFycGS/w2nMTQ5kqM5Q6+A1OqYOHmmUS/U9tjZgTzY6m5YaI3MbC/jIW/IWNVkuKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogh1hiHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogh1hiHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EDDC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778664033;
	bh=FjnVv9709fW6kxxMsTPt0PyexB/42s2rISfcp6g70ts=;
	h=To:Subject:From:Date:From;
	b=ogh1hiHVS2k6zSgpBqKthzKiNBwUPIYxI4aYZMy6QN+htXEnajQUCOoDUwsJtXmql
	 ycWYF/oN9nhnt8K+r58XQbv3uIEzPm0mDoGiBd+WAWy2GAniwNU+WBEckLI5WQmIkW
	 0cdQuQWaXb69azOtNlPxwrX4QFTDiROweeolbM6sSVHpJLII2l55/Iw87UbYJ1Hxzs
	 PHXfmHV4gOqplWTVBv5y3TH4iTPtn+tTwATPDBAxRIIQZpELWC6J3M0/rZjupa/BVj
	 aOvbtEzUvCBZV5VKZiaFYMLsqCHqW89hICxVuWsDpZ/kKhYQ4Q23ie46uIvSvtBDYO
	 JCkaby86uxr7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD71CD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177866403369.3710.8673277867339703084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78ed370046f32a9d708c042040b97f0ba90842a97ff9d23a31968b4b3a253096
Date: Wed, 13 May 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778664033
