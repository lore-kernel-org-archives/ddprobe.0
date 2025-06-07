Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A140EEDE
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749305994; cv=none; b=LXdcLcL8UtpIzx1jVQoz/cRAVg5Sp0kBsugnrSYQPCFJ2d6mxOk8mxK+ATgmGVpFfI6gZsS4M29CsvmiBC557W5FDu0TxkefHWVofqjJaKEEWejjlST8uZcuVZhsZ+PESlMrPTzfaAlEhVNUeZmG7yg3rxRrFKZ6OG+GjG0bK5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749305994; c=relaxed/simple;
	bh=TPcROiKbBu2WZ7DzntZa+atyTKzevdOHK9+ES9LIVLw=;
	h=To:Subject:From:Message-Id:Date; b=dgwDVFoPPMmVJUViNJggdj7PuY9rlIRmTz9nAa2rjAcUHqIH9meq3QEpXC3O9IqqpjYcpySC/+sHxTgv83OAJY97VmxHLUVncV/t5LUFCH6dvvrEjUcTLlTkulLmayjSFlFIOsBIuYUSfrQkGr7zvz5bd7fXuteDXbxM3b23l10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ii5jub6H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ii5jub6H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C87C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749305993;
	bh=TPcROiKbBu2WZ7DzntZa+atyTKzevdOHK9+ES9LIVLw=;
	h=To:Subject:From:Date:From;
	b=ii5jub6HdSqi86/nqAZJDozIcYUb7Zt+Ngc0+fKEGktUFnQkEZ8ml9sZHUMIFauVt
	 /K3sviqhyQl40f6+Z6Z4TDNGixp0Kbc8+o5OT2DbjRY7kGA8xrGYWrZNVn2bZE9JyS
	 hM8JLbV9ODOOIrHX9eAHk36+OpUBEtIO+lxmwP/vVZVXqAcMl3urhC5ci+STgtRf2Q
	 1TXsdhbAlwf12UDk4g512cww+87wdY+OPHd7DJYAdLJtXJWEzgFl4p/8j5Fkv1YWKs
	 MLVXkztZz2XqOhn3K+IXmbrHxriCyPZGsRlRHG6ji5SSO8//H6x6aj//2sYWRz7Haq
	 d6Qc0OEeTlBYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A60C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174930599357.21485.5243023286728545380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc5c2deecedb882f4cfda5948dbc7081edcf5b9b385dabe290275ebcc905455
Date: Sat, 07 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749305993
