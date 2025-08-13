Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FAA84E07
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755114594; cv=none; b=uQJ8xen1dZ0yuzlC1SDd+Oe20zcuDHIMO3/PjDyer1aIAVYUh4FumZjv730sB5HfqkIWl1YTHjmyjqn45g9O33kPyebW60C+0oHT+YUBZr7caRihWYyogQI92dEkSefc3VQALGQpuvZC9whk7BOXriSN4NLciSaioldXVgbmsIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755114594; c=relaxed/simple;
	bh=J7bAoZXVVDPOLr4UuQNx9EuOE19UwYyD9XYAreyl5vk=;
	h=To:Subject:From:Message-Id:Date; b=iHQw3lBzG31ZpDYUcM5Nfv45yA2Ex4BH3U5FE8UmcuMPPI23wY8MfqYQuQR4/OLoiW2EBxRsj/0tnD/OQqm5L6bCNqJ3XNPtiRwTdjiuvWZmBepjzrs1iwBc3hFF8SEfK58moVbx6NDS2UzY2AVvZOlf19XHdljcUBJBuxoLFJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcI85v41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcI85v41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A212BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755114593;
	bh=J7bAoZXVVDPOLr4UuQNx9EuOE19UwYyD9XYAreyl5vk=;
	h=To:Subject:From:Date:From;
	b=hcI85v41wneTe+b0yk4GiUlVOG+GduzNAThi/TllQDV6tB2zLocWD/MUQx30KxlpJ
	 aJGLhO9Ew+XLLNoydQD2q4NKpV3E8M7oyk0UQojcW+zBoPA2/yx6CUl4IYkOo6y9qQ
	 VI5O8pFqnki1x+aqISO4bK6IzpqBeBRIi7RHAEdQdpxPbMJxebYNxSuBYGKB+1iWim
	 2sPwyjFC9E3scOE62QzMZAYMkitt5XVc6Qs780gphGwjXhBU3Eprf4BjNlNvjjhySK
	 N+jkFQLBtAHj+8Z9o8JT8cORgkXDaoJAX04032m0hoNJ1WAC1Z5v4Oj15Y2hFwP+4X
	 3IZ25kblp9cBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90097C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511459358.24243.14627092851581389176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e35c65f69e363f6b351a89c94c1c585e3ee66bbbc6a212f10109c2f6c85ee39
Date: Wed, 13 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755114593
