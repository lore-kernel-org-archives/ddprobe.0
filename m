Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CD3225779
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765542174; cv=none; b=RUaovuKS93nhTyTs8Kt3BnzsQdlUCpDrWURBv7I4Vy3KGV3JwIs2bgxRoskDJrwN81K1rUMxKtDX1BAwPec/ekYYlUmY6mK2E33lF01+wjuPy8caxSxQ3+ZhNpKN/C2Y0xYBxvezYwGvgVyR1xGvmlmiURFoPbqR7qp6brS0piE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765542174; c=relaxed/simple;
	bh=cBhBPU0WXGw7x9hRa8kv8+yZ81kYyj41+5R4+rONjvw=;
	h=To:Subject:From:Message-Id:Date; b=ShzZ7obMRyfyatvnDrAaQc5RpjOK3UA4oZYk+PAWvEzBS3mhQfuGVlDKRc6gflOFxh39FGVWduEYqxvMXafWgS4d5AkX6OdE94waoHNH7POAShbFBA4Zm4egzP9a/CYQC45fQfbKU187vpeiaOvifP/XXXP8K/4/e1oCFzzLlf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6kU7D20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6kU7D20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4514C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765542173;
	bh=cBhBPU0WXGw7x9hRa8kv8+yZ81kYyj41+5R4+rONjvw=;
	h=To:Subject:From:Date:From;
	b=Y6kU7D20CQoEeWE6aN1EW/7Rh0n1G3eHbh17U45Hx3MQgsXr6aYzMSxd7+wlPWca7
	 CAd3uJbhAvmaNEbiElDVo+rjfXX8KEo7nA5GTmlUK81i6AfT/34edh2JR5SpzzS19k
	 eKnLmO8WGSl+maLPHbwu6wB80fiFxHpZ0clSXrQicOVXEm4tPPPwP9jFz2x1O/jxYi
	 RsjH/VjD083wuBrthmAk21klHWJ6/qAISHfV6QDK3T5Sjp/EoC+mmlGatBZgIzyvM6
	 3QJ2e1A0elkSuonL9zRftbvBQcb2F+ogumPNyIUtdCL+/mR8hsr4sOT4PVtZ2W2FMq
	 gxiuNEmpUubEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96017D49220
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554217358.4644.10388541151551652047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbb465224a6d481bc6a1d7ff14e27995316d71df9a21b78781bc534d83b7ba1
Date: Fri, 12 Dec 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765542173
