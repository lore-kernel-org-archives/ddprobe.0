Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1990C29B206
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750770594; cv=none; b=P/xkuqzmtoqIT9Lnl1MZrKLTHsEykqj+Zav11mTMhhfvxT0/Pgzn0sXOqBUCsYQx2b8EjJgji43+cHo/bgeEY44TRNh4dBiVf9E+kVAvsvivwSlX0QvN4TTyNtkOl2im2065FOcRxAZoharJXmMpoX40rjqu8JqwtHh0RLsY4i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750770594; c=relaxed/simple;
	bh=r5nwU6ysKUYto8bZPIrfuFvf7U4KklDjPFBX6LzaZ8k=;
	h=To:Subject:From:Message-Id:Date; b=dD2TYHKVcNl+S7cwexWdNTzUyJ5Cq8lpc6j0R3AZDJ7gAUvPNoYOWI7MvswOCzOlragLBUBkfBv7+LIg87J9BHMX2bq9Q+eqinJMv840PBrB1gO5LMeyc58H5jp7uF34ziRzUZVTJjNobl5r36nyE5brYD1dBWq0unmOtzBGqxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEVRxkWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEVRxkWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4762C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750770593;
	bh=r5nwU6ysKUYto8bZPIrfuFvf7U4KklDjPFBX6LzaZ8k=;
	h=To:Subject:From:Date:From;
	b=AEVRxkWPb5Da8j1Znk4JLje31Cei434IItqOKBrqz2nv0uE1kC0Ew0ldqIMqCHP0T
	 WbAxQ+jNc6G03O9q6j+Gz+F84LNggDjz7jyLxFvmJgnatWy9n5hmqSVvxe82gc1MRR
	 E6p7GXnhpdd6VIXdlfKEBONRk7e3oD5Phm86CQP5NfKOqBB0g/ED+LTircox2F/iOS
	 qy2EWhyRvn4GngvraFBFVWJA6pkCd9o4Tzo/ExfCR6h8odl85vJeeJn61Z4Vd8unZy
	 gaadJTvYapG4WwgVBZ1SLEGpixBdL6tsNHu5/a4GH06CgtxAM+HbrTqy8GgQIXxWml
	 7lHTjLzkHEh6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE26C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175077059358.11351.1083171354574922600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ac07be2059f1df2a3e0c33493762e1d881cbdb0b6cb0087deca3b0369dfb82
Date: Tue, 24 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750770593
