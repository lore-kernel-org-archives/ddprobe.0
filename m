Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BE718DB0A
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748317194; cv=none; b=g+JxnmRKeNkkXxoszuicxbViH7EuXfwYpKVd/5A02M+8w0APY1RqaQ/1G1jZzBSSg6OJc2p0LgIcWZKGPQeIrTqxb/myg7Fuf9oskCE35nZK5qsu3kQZ2nIsecx5i5k2WmmJG2Ll/WK/1/xT/gr/2fxLsAYr7V0lvGDToHvVJ1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748317194; c=relaxed/simple;
	bh=OB3Zr65ur73Qxd4l44yNVaAymKwJb+30wer+iieA9vo=;
	h=To:Subject:From:Message-Id:Date; b=p0yS4qmHnbjNXrBBofTixi2kDzU9mjlbxvi/KbVeyu9m5/XabRtV+By773u3GUXhhTMtBqXUPWOxMZtSTmwJdt9q4es6hXcPETUZxZaMAN/xThZ6/Q0vu8Lf2E5JxGtVIpnye4+niNuZ1ZP1ptmUEhTabk8ll/RdmvMQ79tMMvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiw8zzsW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiw8zzsW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A57C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748317193;
	bh=OB3Zr65ur73Qxd4l44yNVaAymKwJb+30wer+iieA9vo=;
	h=To:Subject:From:Date:From;
	b=fiw8zzsWadDVhskpeDgeySlGPtLdifsk76LjihWfL3isVqZnEeF6YWi7kjV3pXQRd
	 7XvUKfzwM4PIV1VILBRyLz6/JeQBwgQ0QfAKDvjR8AqyuC82HMjTD7tkhvFGZocYOp
	 yL7bwefxtaCGQvafNpaUWYX6VNl7HGi0HBjfYvBV8V+U/zvSfTT1Mn0GJeNdpcer0i
	 XXXYX+oIO9JHyoxYWrESvmP9mqDbSDGqYfu2cjS9xt+iL5+VWftT6iyJPLHscN+tCb
	 MoFbvX2Zf//pWD7szAZtxX26TZbjzbPTWjhSlKUZLLLUSQ+/BYMMKtiR9dKnurPnwW
	 AVS8x5N0DWXig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE0CC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174831719357.7097.10023012455592118412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a05d7d057559ac6b2919197d6ae249d69f5b72f5163582ca76dff950e5d2043
Date: Tue, 27 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748317193
