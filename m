Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B8313D8B5
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729629954; cv=none; b=fpqx7r3i2QihNYerSu6WpC9gQtbA1fAsWsa09EjG8R1b04PpDiOI3VXKlzcAYKzcXMIHAO6tMXEPkThcdG4pk3qjUHJJzY7/hy87B3Sw69zOeFETB5mC4rTKcJyxIDBCuJ4HPkcl0IrkjjPlb2hNTZ9Nz2mvrDvWoJChhfuA2Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729629954; c=relaxed/simple;
	bh=NscCmNrnxbxfrwKPweQrIq6tShVjkzta/mt8Cd5ctqU=;
	h=To:Subject:From:Message-Id:Date; b=mQV0BAFiD0MriZ7xr0hX9yVp7KHQPOp9hhrilyxTbcpyStDouRAqmO0B0sQdZeU1tCmFeof0XtK5K3kKQmt5HUzzyrvcGrtUO3kwbv0N62dfQqlnzLKf9ryizCahz8Y5DZ1zIL8cfBe5LN6IO7m80acWCU1gZec3JgtPipFyyY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6icGoZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6icGoZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2521C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729629953;
	bh=NscCmNrnxbxfrwKPweQrIq6tShVjkzta/mt8Cd5ctqU=;
	h=To:Subject:From:Date:From;
	b=E6icGoZVA5ujmB4wq2kqtjRDThdqmEpcCVwtoqYesgNtbo7AaSze+xaKrFrAsABxC
	 CYO0GdG1yV88fgWZwhrjbmYMnlC/CUnYtUxzD0SjHRwjZCDePuSiB7pM1S8Ob3m6or
	 YVzbmUeBqLdysZXYkT2lJexP+MFuFURpbJO/sozdADKV4DnYGbvnf89oqEwG4dUh1r
	 9/Eo6lFP4WsF0oysFy0ruVa0MpOiCXDmPsn+amvAxFDlZ0i6kB+Bf863ZFXKC7qeou
	 j+NQ5BVvkTUbFoefkRBSN8LMrSz1UTUaRdWTi0chV44ZZacmz+aY1imZgJjJnULnUP
	 jWvurLzW7gLug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F63ACDD0F4
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172962995358.3574.13494402496746313783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db26193ada1df36b044163f428c31401d8731e41ee3b39a30dcc4d7e1eaf4ef
Date: Tue, 22 Oct 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729629953
