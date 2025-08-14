Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD3D255F31
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755155994; cv=none; b=cUtdykyWJJ5nGx0zkAHnjjYc2V8RlWm71Z1ZWeo9gkn4+2aaRRfWmy7OXTUEB45sJliA6vov9RzMl5Zq7mmfJEhxTp61wbCj5si45YCGlNsD18SeYRULoVRg0LKpGTriBU3OZLN1tW84itf++kuQr0QMX6zLfohqgyv4QptqC74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755155994; c=relaxed/simple;
	bh=qHBaFyU2Ncq5VQ6VvtWLWUATJ9bd8OVIlUPfX32r5AQ=;
	h=To:Subject:From:Message-Id:Date; b=XmEJyIf76BKYfboyLXtrmcMuatDzeVO+noTGyjmnKFYkV1ZIxImDxM1jL1azVdYG33U1wYbtTaYyTEty/qni0C/rfyLuhctypbwDL+Dj7D0T9TuiLbfWfkSpMzFx6QEPv4Vfp+MUvF5MJDzMhLoZ6/eofSqg6/VFu02DyKlv0q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSzzKa1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSzzKa1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C93BC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755155993;
	bh=qHBaFyU2Ncq5VQ6VvtWLWUATJ9bd8OVIlUPfX32r5AQ=;
	h=To:Subject:From:Date:From;
	b=TSzzKa1b9Uiq9DO8EFQ8xp/GkcQA3o20N4EX0anaMAzD8eCn4MR69EJzYXHGMXqqm
	 jgAx09kjornDejtfJE77GJcEPeWiGGBFA8BSXgbWvSrXJachaGL/zdcubZ4MKCKy9v
	 2g4NcZIPyoafxI1uiapyVhWYqAXdzHSEkq0RkuI7bc2AigcXVgRH+cNZN1d/UuJ+W1
	 SDzHzuSz255onNHXvefYPCGRAYRJOuHKdcfodN40F6/VoL1KZS8Gwyeeu4BAlmMkt9
	 87IvzigfEjyzHaaGmuoDON8U8g7yB1CVsLJogxSMeWFqzD/Dgityt2c1nIsVO1HNxG
	 pKiVUUhYQdDrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E18DCA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175515599357.19965.16070296045495397033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d31fe183bd42bee2b36bb2b0dada70ebe6c80f7c13f1e106580caa4d9a86e2
Date: Thu, 14 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755155993
