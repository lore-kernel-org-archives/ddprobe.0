Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BC746D091
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787245834; cv=none; b=T9xvSLf90fi0NG+au2FcHqoEK3aXSyW4wDIABaKMerU0Li94Z9VOm/WaPti70KsZyYelD2qVb/xIy6esMb/nySJQoVsgWriW8ngHtOfR1ihF93p9zWGlxkQEzNQUxvD57QlQmMgUeFbTCat3j71ZRN7VL2/IXjdTf/mfWchgj7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787245834; c=relaxed/simple;
	bh=PhR3yffOh8GT+9y//YLBJmJPvqYYhNpMZVlGEOeMNgc=;
	h=To:Subject:From:Message-Id:Date; b=L75T+cjNhWnEo6Uo4m61qe1D68UDeZFQ30EPEc3JSi2DLv8mqSAquzG7nk6Ow/5UKfCUU29cifxFX+wnEDs6jdtKYpLERfMh3hBGXB9Pu7voSnjwIwIKs0dLFwuJRF9p7jbRUE1KvXFh/hemtYG3AnGIecoiuB3xsQigchiUnwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sTlaTrH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sTlaTrH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE6FC2BCFA
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787245833;
	bh=PhR3yffOh8GT+9y//YLBJmJPvqYYhNpMZVlGEOeMNgc=;
	h=To:Subject:From:Date:From;
	b=sTlaTrH0H3+JRbA6DOH1B31kGc1/Dbg44Sieq4HGAkJu1Vkix+xaIQQIqSqdISpj1
	 BpZtJggCRpwrUrwg0yBr9KZnL7HIG6tzlW5ogs6IWhDd2vErNgh1rUX43pl1ltfLsb
	 SINobDIs/xvSQi3K5C3ctnCe6orQid1fn26CBkh1rM+7wyIhPmWEUFr8TOYHzOaS4S
	 khem4FWUOhlO1hngAVvogDxKNJfZBx+4wgRbMVU9LGdIgjEFzbousZYm+UcZWFXn2o
	 UxioI5qTO27Tdh6mNk9BCQUZ3F5+M49mV4/dfqGtKnSBXteGv7aP3tnFIrHVTGaq1X
	 bUvZpH1p9ceEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B761DC5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178724583374.2766.15422897665441919757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088f917d7d9fdfbaba839b7a5389bbf7b2aa1136b08e4fe324b1805e4e20ec1d
Date: Thu, 20 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787245833
