Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123AF224CF
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729362354; cv=none; b=gTwRDpNELP7JH0DC1NbuRaqlLAGndIyKniYQGq6I80hJacoRen0A0HwdQIm7vo5jySSbpvHIvPV0Q5CL2UuFafoqOIR9KEsm+z6jlqFwGM1nOipdBDTgBnHQecGj9eYB+o2F5IJRQuMf5FVfRQMfEWcrjW+36SV4Ow7koxWMxqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729362354; c=relaxed/simple;
	bh=QTQK5I1wnbmnjTMrB0ODCPwR3/xM0XMIu+uNDa0yudo=;
	h=To:Subject:From:Message-Id:Date; b=lJ+As7tMD/29zL1yPOMg3ou9zIR9uZDH43oe4IiAUKJ1tA7Y3AzV5pd5nia0sh202+vUidg8AWM5apHKNeA7uz9vx8+pCQpjTAxs8NkA4r1e0hkvwuXXd52+RYM88MK9En6WQybxevTeYh38q/4KgGd3drw81zB90UViRHMyz0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nh2QEpXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nh2QEpXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF0BC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729362353;
	bh=QTQK5I1wnbmnjTMrB0ODCPwR3/xM0XMIu+uNDa0yudo=;
	h=To:Subject:From:Date:From;
	b=nh2QEpXE7a+06IA4KH513xVfAqGQuKCytXOm7Il2UBv7F8z4otzqy6qUwhpp09Us6
	 JxirB0ThZEdSwLKtn9SuQ+P2SLKasTmvL9JiHP1Xl6O7Fs0wdoqYfLLcyGXIpPEnt5
	 Ft0E2SNSxOetDA4JRZyaMQwYc488feccBs5UrkR/NZmvmTy7jOMYgvVDoxWHfuYzsy
	 y9VTMfpd78b1ZP58NgrNniCnlzC+YS2ErfnmXYVNbDOyQSr8R4bYzVj9bv0sNeGR2c
	 +Snu1GxWZKCWImFDKVyE0AihXTAO5o3xl+0KTcazmB+udE4TfI7RFSdrK8ET3CPVKW
	 lmorUeyrZo3DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964EBD3C926
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172936235359.26365.1875374995075082621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8cfa01e92a2239ee9e1fe552a03f0ab63cac36edaa79e962842b099fec3db59
Date: Sat, 19 Oct 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729362353
