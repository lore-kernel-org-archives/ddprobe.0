Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4073B1C862E
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761152994; cv=none; b=epDqAPCnaTIzAG6oC4/GTxxx1ybWj4xKZ1sikyvU7MqXneTFkvAs1D9A3zFsFO4jT77WmFutHH8aTDLi+/WjQ7M22QqVwEoe8Z/FeKPiuyk8AqA1m7C7QjS+QuMdjcrU7mf/6LL2KxL7Eh3bAVcylE43aPcGMwbtokVY5NgNa4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761152994; c=relaxed/simple;
	bh=sJzSPtzlqdFOmU3a5hFrvdXeMgNQSvejlXR3YdKG238=;
	h=To:Subject:From:Message-Id:Date; b=ErcnRNXv3927hCtnyr12QY3cUUoXRCHyeB4Edh/ALxuDon1Dlb8qniSh0lImUrQ6NIFgcT4LdnnXMSmPt/HQ2WozDEts/bscmWZgWTkPG+YjqAmBHcj1jizuBUNBxAfgxqLOTt2s22mMWtT6wnGPeTM3w2SFeANMSG5B0TvyaVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=leeEvwNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="leeEvwNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0148C4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761152993;
	bh=sJzSPtzlqdFOmU3a5hFrvdXeMgNQSvejlXR3YdKG238=;
	h=To:Subject:From:Date:From;
	b=leeEvwNUBt2ckABijUbXl2L942n5Zczm/XvmabeKSfonKYLXGjQh71g5S6KAQuW7z
	 uXkf2zQUga41wlIyMQq2EI6blf5tfrPLD8TPMkwtIdyNjckVRGHe2GblNfKDILaG08
	 N2vxF6gGIwXHR3ChKG3sYgOEjJPV0J0q8paJ34xzxhwAQyD/SSGTEAp95nD5BLNUSQ
	 MTbdBAgjI1MWXITEdjOWz+3GD4xJ4TSiXGYahIqUAnjCuDya2js8pz9yj9u3LA2+zX
	 +0V0UteyzCNn533NLmZGHhHXaZxCTQur9AC7VRpFwpY9bwauePCgIU7Q2I4G1742KI
	 hQb9NK2nn94vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0715CCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176115299363.30429.2583249300231279605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 541b2653a17ef79b8e34cabbae94a0ea8d2400dcefb6fc99221da478fbdccd69
Date: Wed, 22 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761152993
