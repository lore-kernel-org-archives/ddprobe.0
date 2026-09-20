Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B96306776
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789909834; cv=none; b=k0yOqa0RB5E/HFFjhaHDg0YjE8jNDbkXWy+YpxFjiOLXqMfSSWe2hx2Jsk7nbudmBKBgiMdslD4rgzj6K8DiWxsNUsdx6P6fdVFLhzmpSqComW3pV+ks3CBg6QzXt3o9KXfVha85FCl7VYqDedb2sZkmLNrWlOCMcpn2e3M9DUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789909834; c=relaxed/simple;
	bh=7fK/mOI53fBk7zXUbm9UesrpzEDArTygGoWhVBwjo3g=;
	h=To:Subject:From:Message-Id:Date; b=FQLA5ZYsIc0ZIUWBd343UjLe/D/pntRny2AxswjmY3k7fUXz6DXBncS27a/nDIRLE6ITm7j1bp6isiKXpzpSkvHfiazYLhO5IbnqzcXokkfL9PH0a7ZSrUXM1wnQnBBC3nWX3AaWf8JZS+8Z3DuL3r9Cgqq0CDsL8+zjLTZPpPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8+UcXup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8+UcXup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E6CC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789909833;
	bh=7fK/mOI53fBk7zXUbm9UesrpzEDArTygGoWhVBwjo3g=;
	h=To:Subject:From:Date:From;
	b=D8+UcXupgeCDnuplhbIbDPNOcK1FanTY2XSap9Pj7xqg8XW718gtaUU4cEFeDe+q6
	 WAL9HQ7N9gA2FPqGYYfjHU46dGHIk5XMQYYTfm3c84vn7b+dGGNHPOE7o+3vzI7CZb
	 NVJvPyVZ3JYrkwQXAH+qOM0QTOq0Fic6O6OQadRZtj/3DfYmhp9mqJOFg2hsH2dxlE
	 /tsfIn1Aju20K6Bw6VmSH64PxCwht981kpOYpgAh/uZ25X3sJ+C1irU919/nsGPyFZ
	 HXHupeYTg31sQdHHStnsTo44HuCJHqKueg+8FOMoRZNcxyKIDh52ixbjRfjN1wwmJe
	 KjrTgzOYFWmpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EA5C982E1
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990983368.24476.1887315270426622497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2691c1559057bf45bab8df6e2f43fafe0de44dbd4a4faebaa43acfd01595bac
Date: Sun, 20 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789909833
