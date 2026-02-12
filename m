Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090552566E9
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770878094; cv=none; b=b3FuXQZYIG7/L2JIdVGrati5ZBmSc1XrXvI962weCGKCC2G/yy3BP+V10PmennSpCYYTWekCcyqIZ55gKxrZjb63VJZPkpe0OKQ40W/BwsoUTMelppHTzOkXewG04G+i+X7SN38X/jVEJpu6nv8UzXn8nZJUqsvv1hLtczwHeYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770878094; c=relaxed/simple;
	bh=aeksXg7in7VP/FqD2DvbNqqabZXA5pfP1FLmbEXw8TI=;
	h=To:Subject:From:Message-Id:Date; b=kFY1e9kvoimHLyis+9u0hFYa8CZV3+X5QcVVIXPKluXDqPx52IMw8pEA9cS6kFdl0kIkNyhsGSoVQ9uJjODhYkivIF42CEJI1aAFGLeEnw8Qwb6VR32vI/WcSB4fuEjrTPf6wTPlw4YslLJAgKXCiSPhIu41R91gIPpZiwEfAgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyCBs3/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyCBs3/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B145DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770878093;
	bh=aeksXg7in7VP/FqD2DvbNqqabZXA5pfP1FLmbEXw8TI=;
	h=To:Subject:From:Date:From;
	b=JyCBs3/8w0Tu2H21D3hLuuCIubUZ08nAgzni8O7Vyuzk/0Leqn/Zs0kJTno0ZWHY9
	 m/t0l50rg1VKjIZiw7dzxPxUjDewyLEGxPdQH8OHvS+DZAcvwKoOYwF7uVBCPUvXlv
	 8BnOMN2kV7+B4/wUgKWiNxaTvjsVzkSm15vwGayzSfqkMUAjl2m+QFQBfHGLGI2YNO
	 g28sKmX24cnka5dN2IYumi8vrRTKsKAfP+YUpwDrnbkHyvvY9I11pKSpf3If5cQXN2
	 Jl51tkqgd8E8l8MAvZn9h9imV/e8FjLi9W/jnloxKT9nPqeFxZ/BnrhwWiry0zzY1a
	 fjKsttB/Ql5UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B244EDF045
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087809360.27112.6542605079584542977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab241def16fe2afef0ff4dc476ce3190949cb0f1ca69c50182531c5746a631c
Date: Thu, 12 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770878093
