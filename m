Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A731C693
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721837754; cv=none; b=n8hP0u9rTjR6N5yqQ4acunnuSzvIH9dUXsPTpv4gGMujX9XnhwSiJwTGDK8sl8F39ZEdQ/Hzz7s8k33lwFNPjnGwFqfHiCucW6DggqqpP4coiE8PsXJq/HrrFK/MSEQAiEnEIMjNbFwLMpG13C0jm++65JAzn7RfcUEVpn/4pwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721837754; c=relaxed/simple;
	bh=XBEJic+/pdUqyRjsL3s7wYVqn98i6UZB9Re3pmNEOSA=;
	h=To:Subject:From:Message-Id:Date; b=hnWN8MYa35VPcpzYNafj/IDMigQnBL3cQvU11FGwI4h7lgV7xRwnWayRMVfhIkVkzDNa+Rr0xC4DnSozh319w8uL9JBc8Q4/Au0kXaXeMXqBW7acuk8F7IOrUt5WpIqeDOmU2p7G7cZLfWuxz9m2nlC+TCk3p3tvJISpaGdUl+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qp/R3dd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qp/R3dd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEB5C32786
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721837753;
	bh=XBEJic+/pdUqyRjsL3s7wYVqn98i6UZB9Re3pmNEOSA=;
	h=To:Subject:From:Date:From;
	b=Qp/R3dd+dDamif9VKazaZOzL+CETwvX4rZRv/rrn/LX3kPcRj/KkwQ75PgxBad969
	 KLnYEmu9Ks/VnQJBx0nu63zoDZ1GwTf+7GXIFTOsdnqzEPacbKxBOXQ8jmeSQchs6q
	 WWYe7LTuXYJT+HTG+/sRqfRFMaH+yOs3mfIVSJwMXJCT8Wnj4qh8mN0m9BkyySUe2G
	 5daYLCHa/1d43mnjUnYlVgcIBgmnVQxvMgH8Yy0Br4DyQZR9tlk+OikgKCIZRlNEPA
	 jAhQ3KqmwSQykGQGgG/aeiFrHiWRGRw0h2Vvz+dCPOHD5bX8in4qp79mm88iUjeN0V
	 zGPMoPmnpYcLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98734C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172183775361.24731.10176009782655637786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd853e52cdf6a60f68a5e2fbf76d66821427eed09e8e161f2bb64d0f4266045
Date: Wed, 24 Jul 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721837753
