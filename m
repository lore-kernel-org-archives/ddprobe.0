Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4545D21105
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726805154; cv=none; b=k9zFJr+gFFsGK8+Q8shur8t/XCZuuxvhraIKWLa2bJ33T6YbwbL4pB/W8LdgKE0Rm47c5uuiudDmLS2yTqDdlDX6BDbbbnA2MXLa0R65V9cA6oM0Tu9VHmrpBvd3qoeBQe53AYDIxk4CMD6pfIHHpH6jU57cfQdKyQ0I9YednAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726805154; c=relaxed/simple;
	bh=7k3fo6HxgXdTcvacZawyJh9JnHbpG2zTEKFudWVANDQ=;
	h=To:Subject:From:Message-Id:Date; b=mhBeHuhOeex8/BRRgPSC6E+CysE7mW++vn6f/RGsu+ByAWsZvje8TUQoVBZgUAeLExuk9GuhRO9NARSMrWDCqQeqGZNHRrMcyqLIk4gAtq3+ouVnkIP8wqToySHVWb9jNOAleKDtsNAbklN1icVhm83ALBQdQlgvVE8GQNdT/8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2dJQnv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2dJQnv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1BDC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726805153;
	bh=7k3fo6HxgXdTcvacZawyJh9JnHbpG2zTEKFudWVANDQ=;
	h=To:Subject:From:Date:From;
	b=h2dJQnv1rEZ9YzwPBKK41M85FDvAOoGDYhyn8WKdaR/5amb9CiVB5Z0SUuKgtFqpB
	 wYKx/MZ0I6GgDQKVRFP0QRzLpz9hvxjyM82ovuJuIK8M9FR1EueWg7K36mTd8mEn07
	 5pI6GDL7CX/oV91YyGk68lySY28pIQp2y1hNhCdlbh+4CZ5rw2tdWgSTTMq/xFcSD5
	 vsu+5JdJIOm7KaHInUgVGYM8DzOE6MIPuJb3lsVkDebsErwhLTV3O+bliIQKw2yvxO
	 pL12eoXM5uHvhMrFLh/6qh+yxZCuv8AI3TepE2lT10PXK5uvsJZA5reqEyAvC2FRpf
	 rdU6CqQKKPuNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926FDCF58C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172680515359.23007.1099343259015374100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7dc393053a0357bc4687ccf3bcc76915e5ed6a249e1084773bdbfd52237afa0
Date: Fri, 20 Sep 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726805153
