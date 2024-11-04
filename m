Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D2818C926
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730745354; cv=none; b=R0s8kUsw5W9GkuVceeKN52vPdJKfRqg0Fj/uFTM0/ckrx9Glu2WkZ4p/urv9ZpH0GfEKn6V2rg3hs1tY759SAMnmy5tuTXF/5CmYKm94IGR3KL+a2cJz4d8AigNv1AS7SvYvQgzn7/rbo86oIzxg0yqCL8axyDi5SQ0wZ6WlgzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730745354; c=relaxed/simple;
	bh=Z73i+TiII0rSJTc/apq6QvmA9VCubWSyiYJplz5J80M=;
	h=To:Subject:From:Message-Id:Date; b=Amt7mG4m5JlCABFw7HKEs8zLpehrsyH15wsX1mWL3cYtdqKs4f/91DtVxPskgoULsBzDJfx+7RWWHvY7Kstj706FnrHkwkW6eygVL5R/r5EA3ASJowTKdKoDVNPXx8O9GRHc5RDDOnkFGwtihS/wXA43Ak/GKtc50XXcSNHNkUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fY3QOSXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fY3QOSXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7D0C4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730745353;
	bh=Z73i+TiII0rSJTc/apq6QvmA9VCubWSyiYJplz5J80M=;
	h=To:Subject:From:Date:From;
	b=fY3QOSXBjCgo4c563yK3Kgs+ze0lpHve2V7sBcYwWjr6kiDX5zOqK5uE+12iCzDOh
	 FwZ4kAzv83nrekSG18kIgzZTY0UVl55qRkiyqKcJaDyHhIql2ssbgmrSpnCWaNWmZ7
	 C7HcV2w/XAMm07zbgIuor7XDSDVOcWbglFwdP7MmiLpP16qQJuVRTg9T3P/IkPSjyy
	 vvEYZPkjhL96rrKqrRDq0lclFnHXAtLn1VJ1IV8ajDJWI5foi+ij5IPsZkOYaEqEJ7
	 zd24JJ1uHI53dkldaO9snLWxj+MoWiNKg6ZXpA7T4QuAoSxrWlI2uMyxdKhabnm82L
	 Pc+CiUBe+btRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF2DD1BDDF
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173074535362.32112.12948678389708648728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a00c8c103661a6733d2b2766c41f5a4217e4801bda97bb3a7305c5cceda1001a
Date: Mon, 04 Nov 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730745353
