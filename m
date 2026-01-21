Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26255285CAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768956234; cv=none; b=Ol00Xr96T28nMaiolgyfltOfd/pMwhrSwz7TncjXGDSJjJbYu9VCvJKChFMoCSKp/Lu0b4PQZK7azvJAKgF4sfMMN8cMl66TFbaBlnLBjN+eaHxdVeTEPJJdCpJOn1EOzG6Ywsz18ZolD72ESZwm+a1/21JDA12RDjjcsoLtkM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768956234; c=relaxed/simple;
	bh=1TmUQgJMX+XXNO/NVMDW5ERUqFC5nksqzdTIFSh+L80=;
	h=To:Subject:From:Message-Id:Date; b=KclCMLjnY03nVcATa57PTAbW1n53J1jokNCODCUY/mVLTuO9mBABG5GEC27MDiFM7GwsLWGYiZL0xVfRG2esSsP+1fFQnNL+Gpv0UH50PSp24YUPryppoH4EoQrTzWbR61CkvIHRbuJITagHqoEElFgQDDSVZ3kOfULl0jAJMM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUa9LeJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUa9LeJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBCCC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768956233;
	bh=1TmUQgJMX+XXNO/NVMDW5ERUqFC5nksqzdTIFSh+L80=;
	h=To:Subject:From:Date:From;
	b=AUa9LeJ6lSWc1ZbUvADII73a1+UDz1h4RrxQ+FgCUUcba73mqVIGdRzm/eSYzyeIO
	 iF+cNTimY2Bf4oWxNbI8UKHiwOLiA1YDsFa2Yt12+k6Mgit9oU3CAH6WJvUjS8hmSb
	 fV1kFX+UdXWR5N/39NoK2+58s97hk7YvKbi+OUZDLISSDNeeu0KF7ttFO6VARhzYIP
	 9wvds2mhx0wl8seoO1ybeBZobj0Ypq7QWfDcIgw0HARipGpd4e3nG6o97TC235XqFq
	 0mWyAYezCsPAg+31WD/c7nARTTqXubDLpQ2eGaFDnNjDO7OXviP4EpsRGHBLF/FLwK
	 Cit+K+faXb4gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2F0D262AD
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895623362.6693.6066823256158814776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ea4644ab84d675ef34592a83eb7a06cded58f3f3e982fb1725b17e0a9ea9b1
Date: Wed, 21 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768956233
