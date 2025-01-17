Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4891B17555
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737093954; cv=none; b=KtjCYmFvsOjb4lJqjjXUaA1AgGAnv6BArsIDKNY6bQaVr7OwoiE2PbN1f2pizes8Oo6mZQJOXN4/1K25t3BSmW7jlbUqaDAcmAPQo9Dz98ceP4c1MkJXQHjm2RzHK2yzmGxYWNn0DtSbNwcfFX3AkkTo+Hwizu03FdB98zh5IMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737093954; c=relaxed/simple;
	bh=8m6hmaw2j5EyJEtt4xE0Ah9JwNhdVEyjGxPmjOFOu8Y=;
	h=To:Subject:From:Message-Id:Date; b=sUrTKEaOKYBK5JQL6AOm5h4QF68iUGiMjAJDWegQ0MgAVIWhC7RQWrza5YOSQY8d4TOcPrD5oOD7y/u1RKK0tAlkgi+nmecK04bBxljTFJ06j17HM72PLO1sEAus9dyBQtOkAgQH3mH0aaUAJBIKkXiiXhRHvNX7pnaaga0tTEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7cx6oFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7cx6oFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E6EC4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737093953;
	bh=8m6hmaw2j5EyJEtt4xE0Ah9JwNhdVEyjGxPmjOFOu8Y=;
	h=To:Subject:From:Date:From;
	b=p7cx6oFm/qHGAjSfd3BLSGWITKbsEYYwXxKkG3X3uHQa3Saw7pL1ijC8OtkVNvovR
	 k0mslcjrdtS1tu7as/auM+g5KY00puwAC3zrW2YZzFXXLC6zFI1rOEIIEvxk+UuQsL
	 u1R5CUAvCz327Rxh78ii4NshERM5ieFWzmkgbuk2v51xdcRvReiwBaPTKyTwltaNbM
	 PHb20oMw5OP88a0ObNmIJOMbCzveZDZnDi7dM5IjqaMRnHAreMu/CVbQjtI4lKEsTX
	 8xAHnw0265cFSzPb1O0st+IgICQzhYbe7KXrm7RHIwzRh1F+3zd9+izMfLDIhQlKoX
	 mMnFkZ6hGwqfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937ADC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173709395359.21272.1034910226156925740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b23fbbadec13ebd8dc74ebf51ee15fdbdef4935c5de9a4c363b0ec249863ff
Date: Fri, 17 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737093953
