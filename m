Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52FA8F58
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753329593; cv=none; b=SaAwMifyg+WJN1NJvE2MBKRDqq75SXvAKoIVidraIukvVvWyxp0dc39ME0MDzcLQhaLijwng1gk50xsU57FSx8qdOlsKqN3IV+NwOsMnq+sYTr+IhI6B6CDEAWX4+4um4ELiiZnIlrcUsm4F24ZnEFT7csRjobDNncj3m4zgmAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753329593; c=relaxed/simple;
	bh=2dKY1txI1KiEb25XEHPZPzvopJOtOcyT+iXjTJrpe/0=;
	h=To:Subject:From:Message-Id:Date; b=maktUyglfrNkZ07s76cz4RdGNF/h0X1Ok3QgDDiGUHchuWnFA176pcuyaYG0zbS484BMZCseQAG5bQ5HwcKkCkUllJv+pNQEulfA4jafGL0tXrHIjbj/iZbOK4WA4LDxdCfPo+cqEIppe4BdFC0zeM+rkVbtZSx1SQm4MMIs2j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0jNDe74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0jNDe74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AEEC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753329593;
	bh=2dKY1txI1KiEb25XEHPZPzvopJOtOcyT+iXjTJrpe/0=;
	h=To:Subject:From:Date:From;
	b=D0jNDe74MaJJEzANouuv5BL2lysPWm/97VACSGTzt1h5mqvvdDrYFkSmoJB62AFlH
	 rMraVgS4ZfxMZDKoXeAhY7iplAZ6I/q859Bc39KOXLIL3ZGv67OAy+nHbExsPv2uxa
	 aPSh/7Zs7XR368w4QxpMWK5X1WaSu7kiwr7eTcjsIH6dzdhTvCApcaTWWHYkA17FbV
	 zY3wnZKMOr3+Il52jztfYRYeuHti5ubIisxKFOTkK7HMH04qIWo/8mlmjwRPYWjiVU
	 CcM2+4d+xqV8JTmO8oTNRio4GQXk6r3Mflr1KMqljnycFT/fLFwW/UBgUvkL98KCtm
	 fYSIa5H1lg0JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E46CC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175332959357.18268.7604316296635434460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46219425bf84193679f670ea0999549660bab01be3f8233e6b17756454d506b
Date: Thu, 24 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753329593
