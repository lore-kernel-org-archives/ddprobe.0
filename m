Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F05878F4C
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 06:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734588954; cv=none; b=Lug+ooLTLAoZsIq3Ou1xKTjaoanYxyYiyENDXz9G5CQooKpELssL1lenJllSShJFYtJgUST6PPrP5oK6O3z0PyQWQfcw2k4KAY48onvnARXxHnuakC/EGHUrEv5PzKwWjOUj+EPEl/rjXA0dQR7SdcbBUew9GUv5f7wN5zgHHXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734588954; c=relaxed/simple;
	bh=AWeZ38wZNMb2yTKHrI2xjd/pt7WhD5soe1ypzWGl644=;
	h=To:Subject:From:Message-Id:Date; b=dbrZV0BvS88zYbnFA7ewhdVtbtOn8JyEDJBRlWde1I7JgSUKnKiK5D0kue9JzuhQespcYdpVOrgaRRKYVZuchvZXvDAklfCJY/bHUDv/o2cn+79DatV8Edm6qegJyRWzA9Dno4frbMkFLD6YJdhI2D4wmcW9xub4hYJwMUmboYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVrSLbzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVrSLbzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03924C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734588954;
	bh=AWeZ38wZNMb2yTKHrI2xjd/pt7WhD5soe1ypzWGl644=;
	h=To:Subject:From:Date:From;
	b=dVrSLbzn04bOt4oQd3CZN+J+ymJIHhQcz64kHWPUh7E1KhbpTBODTz4/mhxB0L8sr
	 TkXPqC6jSoF/Ib0tUduyW0Up81Rp+3WYvj+vcn/CPIpdJB/DGLcia93sW/XgLkNLDz
	 yUW4pOHuZ/lPkJqeW+EGZAY9o+AZBAcwg1JdCeGlH0JKbEiF4muR963soRF2JqGw8P
	 IRIoE1zDAUl4QfyvVjIQBFy+44bw4lmzfAkQiqAk6rA3/bXZtsYNehxzmR/mqFL7iQ
	 ibrUEzDGhbKE4WbguBvXFeYMOQLpWbooiSIuFYunY4w1NGB6hr5Bzd5zsygTJYQcgO
	 xCSfyhTnj4wEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1ADBE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173458895365.5634.18032054269351662953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e10853e9f2f62d21003b6938ffeee6437f34b02c07d833441bc4056918c513
Date: Thu, 19 Dec 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734588953
