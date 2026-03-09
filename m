Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0246E3A7F4C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773059694; cv=none; b=aDBtPC6JKQlJ6QmFuF1si5v127dkwLwsb0YzFgJv8Q810CVX0u3q0w6YFYdT0VxeC5nQXJnJwjICj0cAgAU8rDOjr9fwN6nbSN5qIqVPHNyZnvqLY9scuBO4LKFoO4LetApSutt98vJPhFC0Y68ciA282dVJQoffX71s2NmKbJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773059694; c=relaxed/simple;
	bh=DmRvr1ppeZq4b7Q5MXrlanwGWVCwE0asQmG8wq95zmA=;
	h=To:Subject:From:Message-Id:Date; b=PQaNyT4dahMubSiZ3h+Lv35k4ez5VgpHDwBKgYAO+XSREC8X0TviCv0MllioKvZj9qOKoA6uc7o5Hvov3pIUki6x/6/zvTydUoU1LeeDujaOCZPGVmRLfYfuFapXSj4KLtafe0UdgsJRgU6oHeaDDmb0II/N/e7U7O+lQjO5IPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IupJzWM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IupJzWM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6853C2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773059693;
	bh=DmRvr1ppeZq4b7Q5MXrlanwGWVCwE0asQmG8wq95zmA=;
	h=To:Subject:From:Date:From;
	b=IupJzWM2als4JP7PBOsvOZmrgnLrV3FMIBxP68sQKl1ClHIsb0QqvPu//aPN/4eZc
	 vqF3ibwwtyaxpc8vJhHONZK3eXBiyOU4SvfmAexuyPNoBYZ7DTlox0Zgy/6SPGWAPq
	 umFCxPwol8cYAt+YRMD1XB6uyH52dU7H3sLzr7f3dE4mmguQSHQtv29thcFQJG9e0w
	 uFHj203eHqnCDkpS2AF1avnYUawOxDyO7E2FP0blku/ecmuT50qZ1jql9Tampv4GB+
	 q25shehwZcwLHIiAihVx0T6Kt1Cl9PQjsSQVrexsL3BXe73NQrOSezn5je/ncbv3sz
	 FoT1uv4KGiNqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947BDF3C241
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305969357.26420.15974635902933670052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05712b76c9053bbafd09687ab7d9cc3f7657a157a00470b495b4e20ada3b01b0
Date: Mon, 09 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773059693
