Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2048F3CC7EB
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783081714; cv=none; b=P2QskF5C6u3YA0SxXeaq87twNonHA7GOg1VkObfGIxJ3CtHkuJuc+gUkfk+9auHCjMyg/6FleF2hFm0LrDU2MwAW8xZBaeFQ1nQBHpYkUFPK7K1uQVZBJY/7fW9LVebXgWbjFiu85OJWoeq7bs3Z10NnaJxLkVhzCkcoe3zQWZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783081714; c=relaxed/simple;
	bh=Xc4ry0ka1eYwvpHYykvqcL9did6CBKMF6E/VSAM5BIA=;
	h=To:Subject:From:Message-Id:Date; b=n3F7vmnBeHL4gwkSeLD0dReLuWBMoo8lAhQEXAI3PrgWXf86+/E8l8b9TjDhPqhOXkvm6QYWVrEzCU4Q/JUjw24wcOF4XWrWfiHhx9WJsKJZHhtES+fbE8CzHIZqWuD/vi0uy0421CXzK/Jor9DIm/DAyUyJjM1yG1t0wR8hlw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7SDMvTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7SDMvTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADD9C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783081713;
	bh=Xc4ry0ka1eYwvpHYykvqcL9did6CBKMF6E/VSAM5BIA=;
	h=To:Subject:From:Date:From;
	b=s7SDMvTcycqhHobnT2mL0Oh1JavJN11R+64srMPvPLVESbKUPJzrRr6JctlrWIb+P
	 tGRqVurYQnHuRNjtRRaSO1FsaF+j0XtUCm8iy9lGujnJ/6wiz3R+lErV5Jos6fm+I0
	 +oNGGxxmDMm/vEiaApN1W75Ype/5JpfDN5VDXUB1pxkBDt9nb9KBHzilqG+YArD8HO
	 BLhSusBfnD26mqXgpk/J12VYdBcYvL6Ig9KCViF2rlnDXGnWRFxPxWPyQoictxlZQZ
	 TtComeQjjPhgEMRSNS4jlYN3+lgGDHQpVdKR+O+FdJIkI6E4jGzNdU/K3LIgVXFjht
	 TN8yQrQPGqt8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC4C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178308171368.20505.7581371150805756487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec779d5841b8aab1f57deb07fa7007c756e2dfd1aa0f8738f31d4e61d4b069fc
Date: Fri, 03 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783081713
