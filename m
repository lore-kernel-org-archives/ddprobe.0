Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0781F1DA50
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705490297; cv=none; b=PxvOzO4XOjpWlLomEQmBG8K4E3TlMf5p3N6AKx4SXdOT0rgsTaz7DCqXdrsYBUJaw1leeakXUldRFDft0ut/LpQ5uoCTV0NAGKZ0wKaDnLR6pr3IvO3SwfFiH76V23jhIgFveIEPFa6J6R+qrYtLIVTaE9y/y5xQT3xBh+CU1Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705490297; c=relaxed/simple;
	bh=wxHS6BH6to/gL+WTKj+YNRijUgCc07Sb1d1KSBfrVwk=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=Oy+zst7ePhEuwkQ4qXe+u1X7umfchamqS6JQN1uWvYnxjaA3QIqUNgPbZQvyY11viIOX2tMgtS+nN0k3Pn5Rxg70CQBgG9c8T9aLhzwkcTtIcInjrNX8RLbLtkVeFtSaKLnU9GT+xGOiq7P0f9CPi8HejLL33oTv+B8cStn4jtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CA7msOA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CA7msOA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F53BC433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705490296;
	bh=wxHS6BH6to/gL+WTKj+YNRijUgCc07Sb1d1KSBfrVwk=;
	h=To:Subject:From:Date:From;
	b=CA7msOA24souFCzP0kxdCJk26u+XGFm7TNxnM7nwwg01pbaMacAej9WXQV6AKmdpR
	 FklDbhMb7bzcWcfLw6vfy+UNeVPbOkBSmsk6cipL17zHNs9d86cIyUCJd04TlJjp4J
	 MTA17HOF57ShXCxbO7A/dg5eJinc7rC4XFQP+5ivT8eAM9X03eZCY8/4+cfFd+rafG
	 SEbLCeF1K42FH+okJNuQNvAlUwKE9X4XVAcT/qZc7Opitz1poiRNXB89Z7tuoHLZSS
	 M1nWly54hVX+kItteSq42zYK0Mz6Qjz90kkJIX3grMmdd40DlNoILeGLduGYGzKRwy
	 lWezJzYDnn1Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B66C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170549029640.4162.15007003881589190124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9814edfd8ae58accebb77fd54759a13ee78a36cdd83f4faace12ae1b815087
Date: Wed, 17 Jan 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705490296
