Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4CD1DDC35
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781471194; cv=none; b=gJSGrWdB0doxGSkO7gZxFXiZ3mNZGQsUu2N66/wee7dgKOtt7XGGyuX0m8tQW5jW8XO4kw9FOw0ZuYsuw1Cvbb0dEWI451eu5enWNG6h64BRFPnij4z1VVw7CcEPid+x2ninKumUQPEgRcgSFUyy4NlNZt4hSugrw5yTSsnJ3X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781471194; c=relaxed/simple;
	bh=ujDG+juNH2BWVo+ghPmny/TQF7vpesLV66ZzqjWUJU4=;
	h=To:Subject:From:Message-Id:Date; b=qerVmLNlJoDUNmRrXyerrBXXAQC7poHzWTYSDj+opHDv8Wri3MTOifx9rZAggT7It6Yf8MuW2m25j6M5lbvgYEa5CuH4m5pyjz3HCwKUKyB6CyxoaDEnWmXrE+poEoGpUxslWxmJUM+5a7nupgMs5vaEnAXU40CfykFEXze7Aqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2wI5RzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2wI5RzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B71C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781471193;
	bh=ujDG+juNH2BWVo+ghPmny/TQF7vpesLV66ZzqjWUJU4=;
	h=To:Subject:From:Date:From;
	b=a2wI5RzJirZINcvUAGavEg9nNZpXBlydZHBaBi8akJez00ZhjE98Yi6k00qLOvn6Q
	 IXj2eOvWCmmfsGCa9zw0IiiXmDO9AiLWFgD1Remh/resDG89SiDJvkspPFdIgATG0m
	 78G4u6T1KpswXGKMH3dQwyZeKfFEjhDY8IFpqHxSZgkhTPapOXHNaG21lhQN/sXuPy
	 lJ1aERYL7nUJZYqf3UREPFzBUmAfpu0jHW4wEFhctj5RiaLb9fXC+lq85A5HxoYGyS
	 EBqvy5g9jw//oPv2JDFgpXm1y7dg3vvVEg7sDr7l/wCVIVpqYdOl5+lXm1paJP4neu
	 6WdS+dpEgXDWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF8FCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178147119371.7494.11251405734779700236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0eab014e0b98ea1dbb02df143d00e8fb600dfb01446fc64cf76996fdf61ca5
Date: Sun, 14 Jun 2026 21:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781471193
