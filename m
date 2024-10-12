Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A947316E
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728768354; cv=none; b=I+9G/6sJZN0Gffr68NMmr7Ipie+gvELhyBK9lJjrwj1M1/GhhhdOqYWB6Zj3pighKwdckmHeiVJF/rvKIYHEalELm+Fish43hHPlUi7R3cpHadw8yDtqKtN3lkaA8DbAoMCPFioB2D4cf51ruyaqr1GWowkwBzCXSS1BnJLIYe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728768354; c=relaxed/simple;
	bh=5pE++9B+zqe+DYmTS++K8dQ7u73aeZ2Aq8nauMjFW2c=;
	h=To:Subject:From:Message-Id:Date; b=RuXE+8OSu/+uSmsHH8c6cBxBWiWVfALoi7ZbzmQcHVHaMHFa2O8bjcvdSZlJo4YPT7WFRcBDJlPAwpasQHQAQl0Uxazt63A+IhIhFxv+z7hb7RNuqBnRFtbbIqnc0lBe2v+7gNRLYGn9oy+AkLr3mxwT2E9M2Xf6WlPRuOE+I6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXVvfTmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXVvfTmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15EBC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728768353;
	bh=5pE++9B+zqe+DYmTS++K8dQ7u73aeZ2Aq8nauMjFW2c=;
	h=To:Subject:From:Date:From;
	b=eXVvfTmcPtWywo5aC7jIS8HQt4Wi2SuSmBdSC4Bf0VGHtjD4MHBXigFX/LiMpFhVN
	 VNxfRmeBeJnsPvCGxJdp6kpjkp+NpZEw+bC5GK3KZY7JuafapwNn6Sv1sY7jp5IEPG
	 Rso1PLYOAQXsa9ZffHo1l5bAWScYywS0JnBkAjFq9FmKAC0wqvrpyZMsX54ERZJwt8
	 8+qVczj8pdnRPuISZqVyKdwyimpRK82+frh7Cz2QvALXofvNFeSuHn4WXGSF715g8e
	 ygzGpWKRhrsLYGk7KD40L8FlzZh/KBckL+whusvKLs1CY0ADemJay5Dl34htan6Mv3
	 UY7Q/ZPcVZeHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACA0CF2586
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172876835362.21934.11042593539078068013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a32f488f4d8d0296d5162e16de73e51a68c898bf5b74ee05827bdc7d5ab9c39
Date: Sat, 12 Oct 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728768353
