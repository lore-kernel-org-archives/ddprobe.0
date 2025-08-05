Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286BE21CC62
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754386194; cv=none; b=Ml/kXI8XOC6wt6uTFo07DABsMudxGL4o3OzuLsTR22p1zg1iHy6IwGze8Igq2q4a7DOKpqLwki0gGYPgsRDdFaqg+mqplAl64cOy3MjUgM1Z0kr3rHKvY2WSbqbCaLbl64RECmiQxXaCL3gdvCwcnt4e3dOFmzrc8UW9a0QS+Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754386194; c=relaxed/simple;
	bh=jGrRLek/Ci9ft9t52d5SzQtoelQ2Y9mKia+USTzXmrc=;
	h=To:Subject:From:Message-Id:Date; b=cG5Y0qhgxXB8e89aCJutx+69pPiXzHDWG/9csOuRsikK7z/9zzxLtWHp9+0+MzKMKmopPJZqYy3+satdEBKg1r920n5l4Qf86gJeehq6ia9x8vc/nqfILktodyABm3Y+658yePXCgOw9Sp21RKZR7CEcSxaM8i+pyYn1aLYKq9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqr+uoJe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqr+uoJe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BE3C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754386193;
	bh=jGrRLek/Ci9ft9t52d5SzQtoelQ2Y9mKia+USTzXmrc=;
	h=To:Subject:From:Date:From;
	b=jqr+uoJePuiVobLrJgRch6RH0EAFlYsaKmszPISvdvyDIe+LDVOoNznWqKdPsjk8x
	 pfK5UXaeSZBH30J5F9YuyksET5auFPWiLpTdInX/NEyX78I/zNvpHkAtOTsNflQwKb
	 wiAgqIaxGkOiEBaQaAXE4UHjkz0BEBQucMoy9DTe4md/I/X9/ISVQCt1LxSZWSqHvp
	 hIEPAiguBqC5L+2PnS/ecCLR+v7z7zJlretY+bhbAlwMPbnp7t7LSRYvj4nuyJvmII
	 r48yuGnMrrUfKkmavI0lPp1oU0ODXtC3YBTgwjJNqJ6sxHJZJf4vAzZfa+/dCKrDcI
	 Jfp40sDu+L6Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920FBC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438619359.19012.4284417142697593145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe126e7eaa466d68dc24bd0a6ddf2bce5f45df188dc35f348bba04f9857977cb
Date: Tue, 05 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754386193
