Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16581221D87
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758881995; cv=none; b=BqsHYTp8COdrMlN02K5HmJBTDGjAnztajnSF21SiwzYE/UtK5j6V2NHtrX6jEK0W11DQ3OGjoWSwVQRT1WfGsAEoPfskJxGglfz05Pt9TTzL8x613LEQzGB7jDqjSoNhs7VpQqRAJbF1YfFVP/CU1GsJPNUHYV6bOYVLGqvys3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758881995; c=relaxed/simple;
	bh=i3w7iptRs2SdwpwdhxJCM7BMQc1GFVHBPoBnsSqVTn0=;
	h=To:Subject:From:Message-Id:Date; b=ruOJut9OV4Txu4g0DZvQz0FxH61iS3qYnWCx8sL/5BRS0yqaiS+hoLEc8Ho/L9/m2xqxTb9Us20SD5GL8o/Fz8VxfdDNoJTBXKdPSyOnMXxxBJBXuVA05NzPs47Q8SiESH/+swJKyg0RJDojKVQTZPfzGZFhMu63ssf6yzaO2KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtYDhXry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtYDhXry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA3CC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758881994;
	bh=i3w7iptRs2SdwpwdhxJCM7BMQc1GFVHBPoBnsSqVTn0=;
	h=To:Subject:From:Date:From;
	b=PtYDhXryEvjUA+8m2+Cos9VEm3LTb/T6tBZsVdtGykOFfFT4MDTxPRwrHvJxzhkH/
	 2QW5ne+OGd+Yj/1/PrUrRQfHcOSIR/rlVGAODnR3kv+XqHAXOb902kEogFbU8YzAiY
	 AJjvYbyMFNBT1kmT8WR6z7PrO5K7kENgXXoUqg+1zRoYf1IApKIwyJEWu0gDagZ2kn
	 mx50AkmeUkYluL8OrbU7F8w+HxvwTcXQuGIYp0U4G8WJelvH5NWvT4D6j4U+gN2ysD
	 477MXokF5LCmwW3KJpvvg8aMlMA+InGGjHAj80Tq/LNUVb5jmOQavDlPCL6zXEozh7
	 PmS0o3g4Nzp5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F346CAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888199357.13820.7703208016607672016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8794405ffa5715e1c9c380ac779a76bd1fb415e9db994b509821b986284eba7
Date: Fri, 26 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758881993
