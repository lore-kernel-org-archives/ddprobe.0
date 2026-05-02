Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4256C2147E5
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777732654; cv=none; b=ECdbQ6t0KNTcV2WxpAznUJWWpjcvR2eEGcGGBMZBaALQZMOk/sU7GWoYjKS7ORE2dqvQvn9ax2i+l1vgzwcVLcnTTgef7Ut2+1D41NobKTc7i3TUAl/U3UeLGXvoxLGxgqyvKmCZm7dE60wm3PWNF//uLxVMyQ5MR8ScuTJIEMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777732654; c=relaxed/simple;
	bh=S0uERihEJb64FUfl4T4QGShwcdGy3Y9+FofWhKY7oZE=;
	h=To:Subject:From:Message-Id:Date; b=DgE7pFufrzghmeIZ/DIIZswozJNexl4e+MdenhFyn5xV/GOoE7tAz4LG0iR8I4uOslxMI9HWVvg0IVFrAerKlFA303C1W6dV49fpeuF2REavXAroa9LdXlh/aOTHw+GEgQ0nu2CgJ5aQgMNEYLM0TofV05xqSBS77JidJ8GI0c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWOAH/sK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWOAH/sK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C266FC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777732653;
	bh=S0uERihEJb64FUfl4T4QGShwcdGy3Y9+FofWhKY7oZE=;
	h=To:Subject:From:Date:From;
	b=DWOAH/sKNppwzLzFGflsqsZHYeJ0KHXNXljx+EuuMvgrTLu9hyDCDbhcP2EuD0XR1
	 paYA0yJddDVmPYgKHoJtRt03ff4SIH9W/Nd0FR2EuqRZfqCHOdjZU2OznG9OkpD7ux
	 gNCdcQLGH7OGWvGN2qTnbFXXCIM8hzwLfQ5/eDkJqd8G4AOoXM5io2FdGfBHWxHdms
	 ri7ckfJHH5ufuYuShmuG4Okh/+Xs3aWfVDGVPPzbYBWnJTbi8iGmpkly86Y+qxa9Ps
	 emPCQesS4RCYMw33sEk3AD8uO2o6rGLC/JCqS71pEfBGjtcIomU3YEGNZ3yyuqDfRd
	 VQ8UZI/e+US1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00CACD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773265368.23929.16870519110762589026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af69b34a8c50c5678a7fd78a3925fa5351de3f4e14e5e4e0f41b86bd212b133
Date: Sat, 02 May 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777732653
