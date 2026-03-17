Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2663D4131
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773755694; cv=none; b=S/escmJEQQ7Uz7FJa5ZLDbfDjC2+W7n1BlqesuLyhMo+FIqrYp+t+wkpIFQfJ2I7FaReTKHO8y9rkrCxfgPKbumJ/sZPiv/9ATt43FHDb6/BzSM1T0t5L+zYbUbTk18J3QK+5wf7FvwSl92JCmxbPmVX0pswZUmU+apD/4RSi6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773755694; c=relaxed/simple;
	bh=6x6x6z3K41w8rLYux1qVPD92oRlXqMKWt4uduix9qLg=;
	h=To:Subject:From:Message-Id:Date; b=h8Mf5z0gS57K6KVbd9UhFr63EiX2rh755voGvyScsL4fXtTYWbOrxM8xHdfhrcVnkpesVZnxwqEI4JOherh0hyo7gmIvNGybMjcYV8sx/IvphieusVi0K4YLwVMSfccYWEF7D0yEZX766PnnQg8hb/iLeR8U4WoaI4UOWMp2lu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2e/Ilpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2e/Ilpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE03C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773755693;
	bh=6x6x6z3K41w8rLYux1qVPD92oRlXqMKWt4uduix9qLg=;
	h=To:Subject:From:Date:From;
	b=L2e/IlpzVYCX+XVSBIcvc1WGLv7iKVQd6NEegiZeBScxqk+Ccuvqw4pZEqXGPPVLK
	 Eu4gkEO+UA/cNwtJ4d+4V7dMiOj09cOsHeEfLmLpPQng/u39Ku0lDv+ho4zoVDiTGL
	 odTiRgTlvcCOJAt+s1g64x04bs7eGx3g4TpBeMqXYAKGtEa+vJjne0acejlvrJwmC8
	 Zvn+qRMKOCoHmQsM0AEMPrpQadSVXOw7V+57G8zxZyPUhE6dpRyS+h+t48upPEVqbp
	 GQUpExRZtu3THZH10JqXLFvEIiWoseKHAwSHLXWFvwgeHYdk+iCCUbOj/1YWJCLM5X
	 PVSHH2Ty9r3Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC1BFD876A
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375569358.16398.6532523045746410816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d2bd9de8c5b853e3726bccb5e58037a7ceec9cc9d59ca7a82339915d4197ae
Date: Tue, 17 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773755693
