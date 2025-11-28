Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D17B2AEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764297174; cv=none; b=h6etGJB85TUz5qR2rIMO2amfXM/YvQieqjQSVVxmtrlkCEFpRmH0/mPITFtUMTqR4yUlp7Aost4mMi7p4L9vPd9HGi+H4J9rIEjkwwbngtv1iaO3EFQ+nZHaK9O/Mq+kOPd4jrqnwvuhR4SLMuNy+bmxfx7/bRpMXLOQH6e36s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764297174; c=relaxed/simple;
	bh=lHIgpAz2GJBU47fqIuZkgxorOLZ/t2rjYFozp+sB80g=;
	h=To:Subject:From:Message-Id:Date; b=W+E8unRB1cOGm7/RoHvnxP4Pp/Gjt2Vflvvoh36mJTn4Sx71pWvymPz6MbKeWhyQOw2TA0IskDLL8uq8A81F8DNlvw+4L7DuvqRk9FAYwBtV5qbiPKi80w4c/Kl5SbpsYgMt9xKjShB1JUvebaiIC7aV3jXN4z2C2b5N/QwJjJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjO3saf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjO3saf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47E3C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764297173;
	bh=lHIgpAz2GJBU47fqIuZkgxorOLZ/t2rjYFozp+sB80g=;
	h=To:Subject:From:Date:From;
	b=MjO3saf/qqlHfgMm1aQd/llw8YH/kbabzBdQuuNzVk50IS+Hv/hGQrQbgjl3WQ516
	 1AG8dUytrXkLF/QpkFIWMsiwBs5gwbMtG7rOaJ+oUeMU8dLDS+P5gmuOOQdY55BPKW
	 e+khTMhE8FJ8+SFfFx4sQxNlCJ1PYGx9ELGMt79/yTrQslzbnaTdoGaiL1pRF6LE5w
	 g026iGrxxGYvgS9rpwR5YkHEJRHdWl1xteDtdaCupFFMQBm7jB9SuOjyQASmD6cM+B
	 ODSYzmR7eD47QqBGwJM8ejuM1NfMB8c1OEjenaISddYGq31XYw7eElJOpbWZkpmAqv
	 bRU43UbzL9B/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE39D111A8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176429717358.871.11706249461265092780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec2b600f7799512d102438158bfb2f810bb78e78829b2cf6a3f9a1c612d69a5
Date: Fri, 28 Nov 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764297173
