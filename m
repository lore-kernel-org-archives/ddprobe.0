Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FD22F691D
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782270394; cv=none; b=DDd+UjL88PJK5TiwoGG7vcGUy0ZVbIb7+TMkFWPLj+/p7hIuQmhJV6frF8kRPc+7khGK6Uyhcf1mcN/FlV282LuRKMw85C8yfIAholO/iy3+Y6SaOBe7fTkjrbj3MpQil2Dc7u5FHp+H2dj3lUMj8ywcU4RNquYTP9CqySnli0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782270394; c=relaxed/simple;
	bh=/ryTh1c0+b2BHrfa+yTHovJr2EiUq1KYQPOSaNFDUug=;
	h=To:Subject:From:Message-Id:Date; b=NSOj7HtNo2ubNS2vZitnDz7jDVXF8Bu4aaF1CK7gqX2zM0+upcsYOlNGszdUNPXs5bPl0dJymYjNR0Eawhb8VvdnLD6uoQzgjGhwbc3q6J7/+CVsUHcR8s549eds1RTp8yGPVfb96AhflY8mDYrY7cczXXZHBy8SIpXa8ylwt2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmNepj1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmNepj1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F56C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782270393;
	bh=/ryTh1c0+b2BHrfa+yTHovJr2EiUq1KYQPOSaNFDUug=;
	h=To:Subject:From:Date:From;
	b=LmNepj1j+QDZA40U8dhykLXd3jErXryOg28Zl5I7vnTumpCCuGc0VtQxwXlKfBaVP
	 OwCBkE/HHaJwUk12EuUlj3OACgo3+ZTLg8TgI0aktnK6agimnL3JM+HZTw7hdzT1BR
	 hjagPJaKf0m/rYqxYrUjEi4zZiC6rtsovFL7pFaOJV3datKS73IYQz9edDKEJcsNOL
	 rPloJUdmiS/McEyD9rGsfvfC53MFsK+7iPb41p5O83MCWLaIRbYxI9txHCqcuqOODB
	 3DwgrH+HshXnTTj+BTZrFJA29wDSjrHYrP6rzgJIKWA1Iw2JxSoLlzt9RfWK5jLzNR
	 1/iiKXW+yZrZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD331CD4F26
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227039370.31791.8041235592268929987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b39ecde7e0d5602570f25442b08f0975b76ecbb147790a39aca368827bac380
Date: Wed, 24 Jun 2026 03:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782270393
