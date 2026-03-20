Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EC330FC34
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773995694; cv=none; b=qa+sSXgeWbvJYHhwRzbVeIvbuD/5gP1zZyor35EdmCYLDfqsbHWB1c+hV4SD6eYkmXz/Jw+HjG1pRkTQaQGR1Bc9bkcGWAtpIBBCpDFYNcws0nbGYcmYeFjZCbsdpf31aWnS4EeD1uxx4JlOUORPrmP1aXMXRdzaEqNT+/gmJlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773995694; c=relaxed/simple;
	bh=ceh2VwDSyKVk5gLIKvxLno/u4c0LJobUWTvok5HsKW8=;
	h=To:Subject:From:Message-Id:Date; b=LiTdCiJrf8Jm2rHGjK14jGNyW1ms3pqTFB4YrDQfRop2C6mR0ALyIw6gaNNrbrZqmrAZAyDCmGd/XbYWAQ6ynt8R3qN8uJLdZQK+0d36fosQhqg0Jz3q2YEH/XSUzhTEz2ovMmqn060E8Et31pnEYNRusm47a4v4u27P4zUWnWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVOT5gzI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVOT5gzI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C5CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773995693;
	bh=ceh2VwDSyKVk5gLIKvxLno/u4c0LJobUWTvok5HsKW8=;
	h=To:Subject:From:Date:From;
	b=FVOT5gzIJWxQQZ7GLTPTpVncuC+8xLVd2uKx3og2BXryYDSWV0H6cWo8Q1/FUkM9x
	 2l/XV6B1t0EZ9p+qeqWLqz4iuGGQSThiujg9nLVFegQQHdcAsD82BTc28SAihaEVXQ
	 AvJSsRCvMA9OS4b8M5TeOciJdaIc3mK0uPAuToBxs3kLYiLqpy/ejrq6JiFErADUfJ
	 2AxR3BwKVByT9nILHO+jv/9cfzySWb1IOYoINkJMcjTngB2/jEsL7p8vzQAjQ1UZ6h
	 2xQmSlZq+ar7Hso2cm0jQfMB9Ar+uhGlxpINGItPPM/TswxZvkNtPeHjl/CIpMFmt+
	 rY/9X3t8RwbYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F553109318E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399569357.5887.16867808360829441649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a8f59e7775c7be9c1d05802361c3f7f215127fad5135c565ef448eccb46ed8
Date: Fri, 20 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773995693
