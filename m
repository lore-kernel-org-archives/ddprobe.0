Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D81293B75
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766768034; cv=none; b=l/g/MSfqohfES9Oaa/U+crcrzfii9/POxLpsKJwY0gfN5s99jfiq/exFPspMfbQ7U0KnGpwO6+IjA3//c9Q9FS9LFW9Y9Wi0tr7otXxk6qEdrt5Q7Zz37fgVc7HQdmP2tu2ezHihDWu0i2i+Ix0fC7vnEmp17r385373gKsdWTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766768034; c=relaxed/simple;
	bh=mIVg3fyjjy4PjqhGPxEvGYRSqpK7spieXDQbfkuasoI=;
	h=To:Subject:From:Message-Id:Date; b=OwpAJT3ZnChnFlEqDyFbvYO8IuNzvMLKKeYQCHnHhCTwbB+Ru+OLfQHfKhryP8gfc04/aumChr8AbZEqS6tg1/bsyulHnnJ5ebVHl520mGJr4GouX4jKH0NG+WsOuSUP+2sRgWo7cb5qdBIdCktP/2CVLhq54MMvM2hHtOfcQWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLlD9VsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLlD9VsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31B5C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766768033;
	bh=mIVg3fyjjy4PjqhGPxEvGYRSqpK7spieXDQbfkuasoI=;
	h=To:Subject:From:Date:From;
	b=TLlD9VsOYw1heaCRIoDH72KAwp7MGK5w1uHq/+PH9SkooNUuAutlEJHWVxB+CcW2U
	 C8mzNBQBF0Wo6tVpGCab+yRTB2yDzkzdSb+Mxk19xyASJUK19Vd8poc1kuiJ0lMk95
	 uNs0SipDANgZIcJrOO3mWFq4IOaTGDwBtKIP82RGH7E4gGhBaIzEigY4+LKFRTEDkK
	 T/XnSNVcogyWOtnl3+3aEI/HigMQy+CAOgeU2Cm1EBvl2CVc3JG6WKW8R3Yh9AJRF0
	 pZOHVQUu/Hdk4fclE4D8XhEb7ObeeK4Ctuny8Xus4EW7A3g7t8RYDbzg+r8rVo9kDo
	 9faUiWfkw1H1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DBAE8FDAD
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676803358.3990.17243659019625753392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4f0eeb1d06a333678a5f3bdaebe4083bd9bf98b0abe6d3978e1e8a960e316c
Date: Fri, 26 Dec 2025 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766768033
