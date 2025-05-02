Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5B38828
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746175194; cv=none; b=KRucu/zuA33kPfrb3PGe2hdI1zFQJP21MU52SO79uPv4GKScMSZ9h7/IuJDhyqnJRBo0nFfrQJDwh0jYQFKgziUEQubm+n33K5wxxXVhlqOgMSBXs6zxHvfeKHhwxpTY62hYrG99AOl7gKiIb0y8sls1I0cnuykqufhKx1tPwNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746175194; c=relaxed/simple;
	bh=UfOX8YYYqceOcrOfftLAC2Zq8kT7IBzFxRCmkAMGLyM=;
	h=To:Subject:From:Message-Id:Date; b=sAIDbjrT0xfLB1u7o7+Q7H7jYg61Lo3deT/uwBwd506CiBfZa4t6hUmCyeh3ZLWgjXWP0kYPS4mUfDsLmKhfSUjtqoXV9SbmMqf/YDvUKzye/0XxKZNxr/f3Es6OuNRr2v2S8rgFh7LLp2Smba0Zhb8os3gcyJV4lFnwmfHVj7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoRyeA4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoRyeA4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4CFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746175193;
	bh=UfOX8YYYqceOcrOfftLAC2Zq8kT7IBzFxRCmkAMGLyM=;
	h=To:Subject:From:Date:From;
	b=hoRyeA4iUuloqT0niZ1+kvQcHo7Frk4NineX2RIlEHUV7zlRp36TQ1B1PwHaJz1S5
	 KfKIMW7g3RR7BIK/2yBRJV8vFxAcyslc57iZjAajvlXcnjzL+sBNcAP/6t1vMLIHEG
	 QTb8nyMCOVf/0+clXX4111wHG0aB0WAtK5RNyCD+LR1uOfkjrs2kcnTIcYPZBD95oI
	 VdOJiwqTkGB8mOX2Uw3kgwt/sDyN6BRa38fu912o0QRPk1yq9YVv2bWUpVBi9kP/ba
	 evbExs7gqNC19aOK/LLI2zsK3slwu2Sgi98BbLwXRQwG3V5PeGSyU+kw700udvcYUF
	 6mcg6vLSuTIwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BAC3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617519357.956.3598037458105967664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2d8f316e6b92e21801ffc474378f8b31a6833da81bbdd3cafb43620b6b0f7fd
Date: Fri, 02 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746175193
