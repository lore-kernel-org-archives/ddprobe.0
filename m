Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBEF326D44
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790386234; cv=none; b=gbu4KEBbbfaB4fIBeO9lPtqoMRMtQ6/zxKyy2ao5Fiji0jtWydKOubLiu4hiRs+WwujpWDs2bAHx10nwwdXSL0j2Iij688I3AkopvQNWIYDDOW8VtrAA3B+nkZdNACfBOuAB5R+y2F3yQN7tjv0ljnMePLqtDMDV6Ngb6RCm8nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790386234; c=relaxed/simple;
	bh=ZYknubgg4zdOCLlSHNu22jFy95lh2Nflz2+5/dDbdh4=;
	h=To:Subject:From:Message-Id:Date; b=Af08ZgruiWGKj80wtdKR4xu0K43kGt6PmEVyf11Ot+134Oxra3y0ukCXn/ZW4qVcYZWU8g8ukv1me6i5oxOFScyWJ8SZi2PiKCtKvftbgL8Z1mD3hz+H2r6qFD+JuqqfLgLjhJ6QwQfrTDnKRlhQrcCgo+2Gy00kzTKjzJMZ1hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NS3gC9il; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NS3gC9il"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE16C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790386233;
	bh=ZYknubgg4zdOCLlSHNu22jFy95lh2Nflz2+5/dDbdh4=;
	h=To:Subject:From:Date:From;
	b=NS3gC9ilEFjx+RN2B6czbzT+X41hpiQuKn+4r2sTGxOVPNYCt+nGcVrHP7rkE4dop
	 NhVpt/mDS43UUsBQErgCscJw1faiJgJkQB+dnffK5aftfMCIQ24eDxir0+iqgf9Kcz
	 3VhcCdULx4QnWZwXgGLefCCcaBGQwlXCx5ROEIFxE8GzsiVu6khQsuRcYCqQvnQtot
	 U7iOzWFPPdXcopqveqsndnUZlU09fQ1PdwMxOzqH/0lvpA2LuA+05iHBZU2BHTtuVy
	 On14AdRwWWPGQDnBR1eVzxM+X04gH+DxqLKBGVinSU0VlW97LbJnp0T9FCEAyAqOWB
	 DzlIHQYxM/p3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA52EC9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038623368.15179.6225437723451084590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02cde5b369ec810be039f161f07486f5d79951e859ae5394e5fa0b8ce66e73bc
Date: Sat, 26 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790386233
