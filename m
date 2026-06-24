Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B77F336EC5
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782330454; cv=none; b=Gfk4JrV2BKQqVRRYgHmjCMAqUJ8yGCWohQET4y83BdIGyXvGoJ5grP67yXtJQ4pjIhUiYAl5JpAYJ+q+srJWfep9LHbdOmq2onWNgm6AYqLCXD3mXfIIRcwIikQ7hU1PMANDL1Ui+qlM92DchnpKIFWt+t1JQdVA/QRBeLuwuPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782330454; c=relaxed/simple;
	bh=leVGJygjB0sspPZi9Vz9eTs4RTZ75cjK7pKDLGb/ko0=;
	h=To:Subject:From:Message-Id:Date; b=W4LbkyBQnJ31KE2y9wwkHk3Ao6NBrshdLi4IdQ4PSkscdoovd63v9+Wqf9/u5p+Kb8O8EG9mYOjOx/kS2tMPZqFsABAnlMMQX5ZfBpKMM93oOJFnPOX32MuEgHlEi5U7yOiIPKBJWUfH4lGKLB9wcMvKgfndO79BDpDAg/d7pYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ca+Edihx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ca+Edihx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71D6C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782330453;
	bh=leVGJygjB0sspPZi9Vz9eTs4RTZ75cjK7pKDLGb/ko0=;
	h=To:Subject:From:Date:From;
	b=ca+Edihx57asU7lDkbs30onXulvEeMFAjCeBGHQqa75OAISRbDNPJH91arKJsuK+Q
	 AgrkO0VBK6XHd75RSVqWM3e4ZZUtzG9ko9ciuwlSf8QDtc5Z/gi8nq6MkCCrzenOC4
	 lru2uSAmwqJetb4JPaO89uAB/8s1RwQzHjvHjftwKJ5sLYCPXK0UKDEBDWx3ujwDTB
	 PWhap2mkUCnC9npSQP8smVVi2s8lc6t2kqYf6+HAl8C11IPIlDAuV6brbEGerIdpny
	 gbyUPnvaK/Iof9vzqTRzcLD0Wb3Xd+IRtTGS14ZMYaqb/6646IEgiyoauWkuGeCYHg
	 bIQWxOxXmxvgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B98CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178233045372.27836.8317349711927538323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e56eff8601cbab9c6a52bf304b32f9ff89e0306873c62c62cb6c4577b3f1280
Date: Wed, 24 Jun 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782330453
