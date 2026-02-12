Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027291F5834
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770877494; cv=none; b=uoZSkrNOIxCkZ+CVExl3asYKJzrhhwIRWU+xYHfbQpVIq/CDurbsGm3/fnQWNKsHg6ZfzaKMnKMKaZrTQ2znJodA21CJQEwLyJg2uoleMCkNNgE6WizqEDLkrHOIXPCq/YRin6R0ZSkC3/jZKQPNB2b5wI9KKqR9KOHVPwuPiOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770877494; c=relaxed/simple;
	bh=LTZvoXHKSR9XkxUt8xBy5iy9DpfXnpug0dn1bjwe97A=;
	h=To:Subject:From:Message-Id:Date; b=pp7ODJm9hCgb7tauy7A8E3PGeCFhY5CDzD/T0WuNWNWWLMmVv4kTLxRRYgUm0yXrziwcL4/TZOmVKo7OiX4YRxv63oM12tNy3OfHQ2EuFndltV3PY4NdNpo5dKq2WZw3GLH/ZdxNDzPN406sKkh5rLsyd2iX7wK/Vwaero0rggY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kz1cABr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kz1cABr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B221CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770877493;
	bh=LTZvoXHKSR9XkxUt8xBy5iy9DpfXnpug0dn1bjwe97A=;
	h=To:Subject:From:Date:From;
	b=Kz1cABr5h9BN94Cd2B6YsnhZpHVpdFIlXm4OnwRKEaFRBqmuPPB/yJ7xjiWiY62h4
	 3SxZhjeJqpjwznwc8yaFW4XOammjhdNsYc/7VGXUH/TL8MbRW23XDEXkRe8pgGXcLu
	 4DPIFA6h9XvlqFzRd2zRdnxVBxtsuIhS8YLOAhifbiE3CY25N5KeMi7At2Av5R7iwf
	 aFtm+ZvES1paqvT7l/IFSzSZF2BJd2WgH3Td8+gSuStQv5eEjFyaUEcsJ6LoMQxpGd
	 3fai/m14SWy28GWoLBwazFvpytSVrsk+LWOtTNbMrLgexlolLT9701ty+z4wNxo7ur
	 5GLowzZdKQ55A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6FAEDF045
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087749362.30944.10141574086214803158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0700546ab892aae7054652fc02da5c564c422b479e7e3cbd89023560a8d19d9e
Date: Thu, 12 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770877493
