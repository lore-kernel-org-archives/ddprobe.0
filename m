Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325241DD525
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753501794; cv=none; b=Zz5/ahy5S4bqlRm4jWD709Xu7h2DHCA4gojKWQu9jp5ST+44KqWQs7NG5w5xcCo3lDSjvzgv86njKg97HYQzfgx+3j7o8m8t6Fl4KE6pfQp1XfT1N0bhJp60Oanhs6Ng90cY8F1UYICEgj90ltl0ne8KVu2w1QxCjggcpm8hjgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753501794; c=relaxed/simple;
	bh=396ez/vrOOisGLkpwtJj8eKfXtR/Ui7q4xvsNsjQgYY=;
	h=To:Subject:From:Message-Id:Date; b=OZ/k2VFJ0D/S02T1zgeChuS1EIdRv5NWmtvVoobN4G5xxwx04TW0YyBk3GSl/Innpb2CJu9vpX/DVz8KgPCyj8GiNv93O69YvO0qHifVU3zWKIgmaU+uIzjhY9ShZazQe5aeq071hCpcToxZiZPbarkkf2JT5h7yGSg9zTw6c7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rESc4Jwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rESc4Jwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74DDC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753501793;
	bh=396ez/vrOOisGLkpwtJj8eKfXtR/Ui7q4xvsNsjQgYY=;
	h=To:Subject:From:Date:From;
	b=rESc4Jwc05zbFzMhaCLBScoPcsQXZIRti2SePQo7s11DdnAQ7fGorXW3ksbGjym2N
	 m1dc6IDMx172dX2N/VLwPLjSUigiOEXDl+1/+W/TzTkKTG3Fxl4hBe8kvCOk89N/1O
	 eMs3ZwfMxIx9WBlz+8v2+q1BMyuCnCMUQeA8NdUmA138vAlfU3IpQhGTI50KForOJY
	 B4i6De9oW8I7oCCyPNftYLD5HhcFS1lUNA9Jwk4tUF5mvBFqoN7EGjU2h0LrGgSgl/
	 nYrEe9n47mUKkFN3Dky29ytCcnaMmLye3LS2EO8qOfAY7wZc1NkYAXYPBaPr1+2JY5
	 gwURPWkKbjLWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318DC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175350179358.8793.14179108965451962208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347d1fc5faea3e389a726e560878830b7029db0c79f2a8af4f094e420f14160b
Date: Sat, 26 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753501793
