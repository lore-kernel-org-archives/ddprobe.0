Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAAD31355A
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757588994; cv=none; b=Tc7NVSrspYNJt54avCfsF0C2YZkjecBG0LkqmzwAEMtAT+xjakNsxHhzTmxadINym07IO37BO0Zm9lTkc9y5l/R0CsS0JWokcZZ8a09WCaASenG97vjBtEDZaslaxm5a3LwywHEv0dnHDhGyN8+pvF1FY//Dkobz5+mwtMnSuoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757588994; c=relaxed/simple;
	bh=WxMy7KgtZdT75r22QZojrjXJmlfDx8QBYAB2APVhksI=;
	h=To:Subject:From:Message-Id:Date; b=XdUu18+z0V1FskNs8sHEe7v6oEE20uPr7bYhrmz0k2geRPykFGn4Xt+xyfUwG95W2WL+bJg5VwjdMHg1PZe91qW/vM4FLRdXTF4r0hvRFFXSQ4HGm3eavSJr1nuUY/9vhyvlhkEN8y/7UpRWncJHPLcI0Up/lQehe/wUK8YzVvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MixQqkc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MixQqkc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F963C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757588993;
	bh=WxMy7KgtZdT75r22QZojrjXJmlfDx8QBYAB2APVhksI=;
	h=To:Subject:From:Date:From;
	b=MixQqkc/724b8O1238Yo+0IaVbyDQL/q3x0XMWcnKBrpWG3y3xQzslT4cIohjWRbn
	 Rm6cxTlY76Ar40LbNGSwE7HBoonat0lVQ0n4kaPz5JyVI9kJQCGMe0FJhIu7iQZnwa
	 BilUlS638HQwXwBYCWlLMsWeUBf387xcguPV9XWwSxm+HsfDD0zx0u20fH/tI2oJhh
	 SiZ2kcmvPPkYihURz0yUj+LMoSbtQtDLtke5vOO8VzWrlXfVPY8qUA54XsN7d1KLNb
	 pzMNOaNOoAhBh6GNnO8khlueKDG76gAIP1R7Ta5jDjOOrfvqkPlVqvX12eVzM2Y1Ez
	 SRli6rLDW6MQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917DDCAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175758899358.21015.1518620105315969037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d7f7bef184080bb788cd3420ac8cd8877d10b22f8885d3336375bf66c8b65bf
Date: Thu, 11 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757588993
