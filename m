Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366226AB9
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721873154; cv=none; b=kyQcuc+hUtErUw4dLfcUB0OwL3BX7QJCeM6CdDKOPKkH9vKSTbo3h282siwwE4eimSWuMDc5t/KhXk2Ehn6lZ1RK2hk8rMQrFHWrTEbEXw4RlArdISrit56jH6Dgl2JacFPFP6CGHG6HF2GsFoKc8EYY8Q1Q58PvQC84v55BzuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721873154; c=relaxed/simple;
	bh=991fNAzNI+qbqZE+4NsZo+OaKbNqL2A8+OoHHnJZpEY=;
	h=To:Subject:From:Message-Id:Date; b=lmP3d9UF4rgIDP235BiVqBNzy7LgIA4P0IID3HkGv2ioL28ibiByCyPOdEnt8ilNa72Z2P0wSrubQNazPpDVD2Mu8IoPEixsDCtgf6qfP/Gnto8P4FOdkVKh2ToZd5qeXnZOAncWLNjuB1KFKQc9/72zcOldcHoWkv2bNa4P85c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJgsSn1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJgsSn1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF2FC32781
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721873153;
	bh=991fNAzNI+qbqZE+4NsZo+OaKbNqL2A8+OoHHnJZpEY=;
	h=To:Subject:From:Date:From;
	b=JJgsSn1vxsbQHnC7JZndgxRFjY9/bj6uC2VD+rJ116ih7h34ya8gyxCxuouPxYfJ/
	 xo72z3HZYHKmqxR3gFF27+Fd4FGnop1IfDd0xGxzQvsPZOjpoVmXxnk6oIO/pR9KjW
	 6yv5/F5rDog5KyokwSpXCGLg1dJ67YbBERMznaMO7eQduqteZ9UkT5eFhyOTra8Nkg
	 OXDBf65TFzAD1SNRaK3WDom/rpKYW0mr1qFD5x1Ty7tMpd3RwHcDM5CRgRl9mTW2OZ
	 52PKmYowHRLQzN+RXkXuEZGUB3ft+Kr1/T0Rbi9g2B1qmIKR/pxP7dt4n2R5Asu2UL
	 PcgE1QDqqz7uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C69C3DA63
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172187315360.5137.18091856641283188017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039309d8f373ff6714844ee401b96df965eec211b85b65d76420578c233b8220
Date: Thu, 25 Jul 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721873153
