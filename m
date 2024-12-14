Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B231990A2
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734212154; cv=none; b=f61P3Q2afw5f5jfHGWmczNL+HFgptV17ERy6md78fZ/USr/tRPr3MIKbEuZeHFhM5XmEmNNiqxOx4lu2BUqYnzpY9qpO9ZHsiHqyiJ69Oqq6bRDhKRnoW5y9U+KZ1fpQSovBmR65QC2yIzbE9Ool2PdhoB8wSgUB+EuxV+oGWfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734212154; c=relaxed/simple;
	bh=v0D23qZSKad3QJlYrGLC+IouKt2R6Ga9na430/am9Sk=;
	h=To:Subject:From:Message-Id:Date; b=tvNA03/GgfQPrj6iiS161qMhz3eezQqW9EiWCudrjFrW3r32uTWh/4giN4Ax0bxbIb9DcX58T2RVgE70TruriZ/YcMgF88uJYIt+Owjs6oFqi7GuctGLdrdiUV/aaVT3I0luDoEYvuPUoQKN55AR0LXPbX8DVs+fvXCs15bP9Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byjzNg8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byjzNg8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A6CC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734212153;
	bh=v0D23qZSKad3QJlYrGLC+IouKt2R6Ga9na430/am9Sk=;
	h=To:Subject:From:Date:From;
	b=byjzNg8t9TLMDSRnKvECcFP1wQ7h6UjHPuFsS1ZxIWTGJWh0y+9uJqKjGsMqh/+Xc
	 A4ZkC/PWGZD1Cv/bpGPOILlcV40Rj1HP/jsw0z1IHqZHqAOYIkucjjJeglo0nkv+Mg
	 BKzEuqdzwbU9bGnYu34OpYUPp89JP2riByBqGrRYIRzqi+v+bRp8zzy0ulDCpqcWKX
	 Q+N+TzS6WrkFFQSusxOBdX3d0q5ufmeUCv0hptuwyEvlOjDFcO8MhldoPAfoa19ARE
	 p18r6AWoBN6KlrAS8rlp2cCpkmPDCU7mfIhg5h69fYc2yhMu+CWY5EiBGFRaNbfV6l
	 uGi+HoO/8j0IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999FDE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173421215360.3662.17252054334703279516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbcb2a3517b65d73d0c3449eb7fc2c904b5348d3f074afc7db30f59c6397875f
Date: Sat, 14 Dec 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734212153
