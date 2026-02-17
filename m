Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112212EC0AA
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771337094; cv=none; b=jO/hcTTykhiGJWCzNgDyQjmhQ/GqghkTwreS/jVBc1Nf6Hi+zJaGv6HTtMi4DaUnOcWYt7FdcBxhCir6jsIwZCCeYebwpWGhzcA/KLmXYyHwdsUe8p7qNKgnFsCowwcMUSV3nhh+KgxsCBUl40q76ICrLuyYPY+twTvJirph8Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771337094; c=relaxed/simple;
	bh=0zlRXoDwoOvm6KadXnB44VtQ4EI58t3Ra354eLRfEEo=;
	h=To:Subject:From:Message-Id:Date; b=Kz3Ro58OHZBgBf6AC/0fbmwXHbqILAKUqqeBO7eMe42i3bkE/PgifCzaKjOFSN86eMiuxuo8oMamzjPxRT90H3ubcHZf7I6Q1nLL2HfSA/R1YxYwPazMJqqkEdk7EViMsPtuDcC5xFQV23iJXFp2jYaHNueHLFVV1dc4VhJ/baU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESqRkZML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESqRkZML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E06C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771337093;
	bh=0zlRXoDwoOvm6KadXnB44VtQ4EI58t3Ra354eLRfEEo=;
	h=To:Subject:From:Date:From;
	b=ESqRkZMLdNzOoPPG8c94duZYcjcQ+4g07sWTIbnvmosGkDKYXLzzL99TlphNQN4yi
	 tr0HIQ1byC7IdsUK+bIOSkJqA0J0kxm7HSiZh1UF+INu2fv5wMNc/qcnK4chC1U/2G
	 xqrm3T7I0lzAVbA+bgjuXykw1x9U/VFHjaSp4h0LAdC+mDW/G5oU6FdFV8/pu0AUFa
	 /v/lUK9X77PjX3HFTnyfy/sVsTmdSpmtEU/As+pNFkHorSJ1/Uz6H9JNc7R8+2tudO
	 Cy+psQRt/i/Kg/d9x0xy8GN7RFAokiWcpwNtIp6/KmGpJWpiilVhD5JNxYIiPvFNpg
	 UfDlquK1Xyi4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0430E909A9
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177133709364.15945.17611310154671213442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0242f5f04b9bcf123bcc463362d3299f7f895a6c8c1936854b401399af5e99ea
Date: Tue, 17 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771337093
