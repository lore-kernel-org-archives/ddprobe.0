Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6D02E3361
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742924394; cv=none; b=HLbxNsG4iwWRA1Vs5opQfc3U3YjzlVo/jOqn0Z2AyXFfdzvlny4LUS8S5vWlSlzNdafiGT2ZT2b9NOCXQZCJfJgmLJgL+qcrZIyQZqz6/pM2sdgKsh06oGq0q1VpEamH8C3dX+EUud4+cLWpl/6xiRbr9KQHrLO7YUEHbp0ni2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742924394; c=relaxed/simple;
	bh=4JtxhsvcgrfHnR64o/VqA2N/ITr2zHVmGZ+4vuzA7Ck=;
	h=To:Subject:From:Message-Id:Date; b=WFmkGn46TgaoclKMiU/1GJ9vp1Chll17ovtdX0iOJI0LbKnK4q0gPdNpAvNDLXF9TCTuF8rbRpU9yAR2UHml/+blL8VXbh++C6U/4bSfPhx6hxm6JGYtGHKzmHaRd7SYZgabNsEpnNIX/NKA8abk8tAnDrp+1LOY4Ew8kFd3/TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozenGDX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozenGDX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF40DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742924393;
	bh=4JtxhsvcgrfHnR64o/VqA2N/ITr2zHVmGZ+4vuzA7Ck=;
	h=To:Subject:From:Date:From;
	b=ozenGDX8KZmrOQ1IGlbGGTSyQqcQuQvZD/Wty61TrDLOcxjB43s8TKBP8A/VKtVAF
	 JDXckQ7ulyUyEazJCB9WeDVQ7EYWBXnfYZljo3s7NT2a5X9ftC55K8a75Cn3x5vXXl
	 9f88D1nnnGLvVQZjIaE/gxw45fiZXWBBE4ofHZgew+6YEouCHP7PH7J19QtsaN1hiL
	 a3fOyQACXfJJVYHyOX3I5BU3MAHxbKWdAqEH4wRxDLlP1gJ6ZTngwOGOKi2y9F6i7X
	 qiY5F7w8A8myLn56aqcR6QF5eLmzWnEugzGBWMGh28uaPhMDjaVHV9Nsr1DlfZcH+k
	 Z6dQf1VIiQ8Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7B8C3600B
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174292439363.10400.18413459309808841349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ce5d4fe58c1608e75144c361cafef58dca87cb2ba4c26a0aff720554074809
Date: Tue, 25 Mar 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742924393
