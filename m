Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308DA4409
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751416194; cv=none; b=FTX0+h+hC4F8EgqKaOjzH1RnBe3qtzGoYaEYLlSujgBMttG5wqNVrHIUedi75FUlgY51HEJfbIFpA5g+Pxfsrh7BgVEcPrdn4XCGJBVhMDuZU5+JyD/1M7cIybgM7OP3mWrKko45ZbOpOJwqgEcJWZbAQMyJ+koXDLNQB6b9VbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751416194; c=relaxed/simple;
	bh=wgNaDsjjaqpkO+WTNIc+K9He17tZrBMrJx+yu3OZJ+g=;
	h=To:Subject:From:Message-Id:Date; b=jPl3B4iACcm/5bM5kcfDao9yFnMvM2yBg4d6kX1pqs2XBt9zXSLQSy9QUJVf5dzvJefGDyOzosCpUAufEB4FHgWBNMY/mzVQw3O5VvFMUed1mv4/9R+3phAcTYkebypAYWa6fnLw3E0gMpk0KT+76qSi7Xpc+DSioZ1icC767Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSVHh9b6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSVHh9b6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13D7C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751416193;
	bh=wgNaDsjjaqpkO+WTNIc+K9He17tZrBMrJx+yu3OZJ+g=;
	h=To:Subject:From:Date:From;
	b=sSVHh9b6RHJ1ERY+i7iuIJlpXQsbKhLRzKfZPRiW2oERx3N1Qz9rXdJ+FNXAR9QRO
	 W/vzWNpGFfeCHf+Ip7PYkDeNgaP3DzYRWaCSpu7HBr/J8R7qtlR3jgXydV3bbxA2nf
	 KBYWcRD5T8fJfFflf38IBE+mqp5r9aLupIBjMl77jMwpJq9MLHDUOy/ugSKvbAYcM0
	 zxmb7INJOhTFmjyWIvEy5gYd7GkF/qWUSqGXuP6cPfiEeOz6j/VarGo64mIEC8bp7u
	 TFuaEDl+z2QXoBIrg4ejraMrhAETS3n531MgJUIy+E0KQDvt1hB0e5qQjrXmgY+dE4
	 knD33abIjPTzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92508C7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141619357.8339.1131284676447533790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9eb801559d1354cfb80a0d42e3b2dbb677e4a48fbf08a5cd20f11852723d3d0
Date: Wed, 02 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751416193
