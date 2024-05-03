Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFC5156241
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 17:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714755743; cv=none; b=jl19i/tH7IhKlmzUpDgTtgRUhlsTj/mptrrFlySw/uFJnqThDggbUPCQrNz5cM/Rj4Cb6q84pzrbWg9f/9lzifugTnNLk5qScj0xFPkj19mDMA7toIqHfGv/ls+D7qQgJ+K5/xmA/3LBwpkOTQS02tOjrEg7HVvEaBIPoiJKE/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714755743; c=relaxed/simple;
	bh=YRWho5LmgBOkXXeUnVXZdhonGIoOvUtEhg+9rbcfQJA=;
	h=To:Subject:From:Message-Id:Date; b=sXUVii9vQzRXfA7DHbKj1XtFEONvaYW3r293yG8FyQ9V5qBkMGLiH6jjlV6HSYnQ1Rt/pRRWXkJApTNQumWk14G7pXuEGta8M/MwIdpqdjrq06ewtMAw3SJbMR4reQ4Rm6D685QnKh6qZzJkKMacv7Vru1JVxZpE4ikBPjzT3ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPgVgmdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPgVgmdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC97EC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714755742;
	bh=YRWho5LmgBOkXXeUnVXZdhonGIoOvUtEhg+9rbcfQJA=;
	h=To:Subject:From:Date:From;
	b=mPgVgmdksjHsFbVh2j4JEBmhCWvoDYoDdf0jbM58WmYhT0yhZtz2g8uY6bi7kBJ66
	 cMSMV/KJ65tXbr7/nERqqdRk8ZwnY3YsGJwAvCW+9swPFG2FcDa5epUFM3OAwVt1pK
	 g8r4EI7a2Br1bhd6dx78VjWrrAsTv/BVtD7NZZh69exR4OqimuiQzl0i1f0rU8U+Oi
	 SxcfWcSZcS4hkzuk7MI6KaLAU5leBfJGzfg0Q/DDr079zpPltSRwgDXlK4aEFzESrC
	 +rcTWkx7eQtIXWI40AITNVERPG/akn0dqaguXHx9D3dY+Lyi+wucH8xZCcOWaxbRj7
	 nt7O1gUAHKWIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB89C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171475574276.10419.9032747873329099479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935af33f9a9573795286b5deed0d1af07f69f1fb95eafdaa81312f8f6b28cbea
Date: Fri, 03 May 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714755742
