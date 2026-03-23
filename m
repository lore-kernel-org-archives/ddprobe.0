Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2810937B032
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774304094; cv=none; b=tJ3XRge+3fm0/rbfDIOiGPVRyhaSAuH3GCL1wGAslxaWPxzSWdDGEWbOLbT/OIDDI2Ywvh1bp4i+a1AonwPq0iqxILnjVgpYIoAYKke55caS1uxvHBzys7o53zfGdBHhBQDgJEIlw//aEm/eDFZRngjGomwXIJzoezu1P80YVyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774304094; c=relaxed/simple;
	bh=n0nID8WfVQrexHmCrTmoLeSITaw5EDMYvQ9mh/kGYHA=;
	h=To:Subject:From:Message-Id:Date; b=hxmsTRdSxepX92W6VuWsmnOoaUlXb+0CMe7dwtOZ9jl45i/HJLlboQwYGzYJNyUhuXwxKmGRdliB/BlPZvxoK1O7b77xO15U06hag/LJKZqChZdDICChD/xIVjkjw8rqaQyA++3gvaAkIwLCzMXustJVTNq9uwprcxKBh3Y90V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dc1C3W2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dc1C3W2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9280C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774304093;
	bh=n0nID8WfVQrexHmCrTmoLeSITaw5EDMYvQ9mh/kGYHA=;
	h=To:Subject:From:Date:From;
	b=Dc1C3W2z17xTRItM97XkjeB40MwJx0GyZ6zbFNlCfqjeCXkcoKSNIuHFrjGIYF9Ec
	 K+JiakUspDbB2CAEHywwL6+rtpJYQAu+m2CyoWIi/eJhBlgs3uLxPNHBr2ZBmuaOYo
	 TjsaKj2kAvK76q05FPmQr3aIhpMYloerK45IvgNmS+6unEezxbvuX7AsdfNDi/us8F
	 dsXZgVrWcMwWrPcI3R9RYHws5FzBWj1qY92XDVbO5eiJNEFBBylRjC+zAW9vVHfkIg
	 I9EU8aNKjgF3CvZzJv3ds59NIOBq+5yyGaFGhjyZ6pbccqK/QRj2JMo+3t6CmvSLSb
	 XQgtq5uV8qY2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98987F4613E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177430409358.31403.17529369496560050929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bccdff54ff8595c339b399d6e3f7a4072e13000ee83b25d5cc8578faf897f430
Date: Mon, 23 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774304093
