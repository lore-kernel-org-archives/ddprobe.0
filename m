Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258A442A9D
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755329994; cv=none; b=hg0wM1ASTs7BroOKP4UJq9mHXgAHhvi+toFCJASH5kAjiA937pxbs4cMZG8ou38YlsdmWnhR8LGIRs8F03L7Ym2gLV3QQrt1bgdsRConWo2X8Qfk80USlNNndUTbDfnN6/W2ohZrc8gO72TGUG3BZi3CsUDgP0LM1/mxaD8xfWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755329994; c=relaxed/simple;
	bh=MQiSxZ0QoUcuDdi/Ga3b/ZI4OIRJpCb451FbFlnGLpg=;
	h=To:Subject:From:Message-Id:Date; b=GUUogdMn5v9Izn4s1GXC54Uc9HRC4X53ciyb8Dujkl7Rlkv24wo/TXPBReZlTCfqXESHESP1VcD+idcsHguD/3c8DDu2ALKxe68j7mEtliFAhySU+HLXfKPQW8GLfM/Td7Zaz90MVruuRMLIgM0//bG8hEnwt/uZjwlc1uInD74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzBXVPw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzBXVPw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D8DC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755329993;
	bh=MQiSxZ0QoUcuDdi/Ga3b/ZI4OIRJpCb451FbFlnGLpg=;
	h=To:Subject:From:Date:From;
	b=hzBXVPw5HlYrw/EeBzC9yY++GlocqcVIiYTILJY+cQcuhUzpwVGG7nfN6Cl9ye38T
	 biOcxZLVup4zlecG9pH8cokSMHjs5ye7w46whZcETLLMjD4QOhnuyRmLvo+4VSY7uo
	 xdyeewZ5P0Ejy2F0G/Yjo31/ghHEwFa4/WVPJDeMejvYg0Wy/RvELsw+E0iGVcoVcV
	 j0Sea1+QQLCJ/fuC/DBIit5Oby9EME1vojwTK3fxf8ISUSo83xZmtIBxDOecHrPyVR
	 V7Ei8cwcXVjttHnc3q+vIF00hVfVPshqKSORYIt6FAFfyFySN29+MkDvVE9an4attm
	 u+6Jq/6ZV1wyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9162DCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532999357.20313.16308666451194234582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbef4f297d15ec6a4de7dbde4049c04a0e7889c311872360e2952f672c55329d
Date: Sat, 16 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755329993
