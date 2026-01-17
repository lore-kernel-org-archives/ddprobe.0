Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7F9314B76
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768634034; cv=none; b=Cmjct/6tUIWoqsJu9f2u2zKDBN1KPtd5skb015j7Tq//+Nn/fSbhMXek4SNDpDRbUbpEDByUjWy3lLT3O4LP2K3DZlKXojEEDehfgl4V/glhyjqMuCd01XSBft1UN9DWwbIZSEPVPX7X2VOKQqp3E44KYDIjkF06iUyVXVKKLSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768634034; c=relaxed/simple;
	bh=7GKxq2mrhMBn/xFZxXzLOXEcuEOut9AJwHXSXdi+Wz0=;
	h=To:Subject:From:Message-Id:Date; b=KQuMYbRr1BhZMqqKXrYIpcXWWGtGrmc6wZN+mfAffWkcfnuoXuz+i8iv4XDPVgLl4VnudVdrS6Qfwwzsg/J8EmvIFSxvpSc77T80jKYv/8pPHEcSrbZZ9Z+O4odwK9ESJt323rwF344TmuxFloOMJzlt10tMaoNY5Z4Q1l4YHKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4gf8uCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4gf8uCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3483C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768634033;
	bh=7GKxq2mrhMBn/xFZxXzLOXEcuEOut9AJwHXSXdi+Wz0=;
	h=To:Subject:From:Date:From;
	b=Q4gf8uCemqe7nuZr/du4+4Cmky9Ogn1U2X/cAU7vMbvQG/a/PRY7ivq0FfN+vOk/N
	 N3hgVZay/yu3H/syc8j23Y0oy22gcq+fV82TuHB1IZOFM8js9P7AY90fdA7tXSKsIu
	 bJWw72EEY3B8ReXun8NEaFz6BFAqjI8z5CzG3krNO+IUyFdkQ//2rdOpohfd/4Rec5
	 sDE+gH9JpaS6JGGpprNH4nWeqrwy3uf2PfdVf/RpJgGpN3Y/kalcs7w1ozy2DyVDm4
	 Z72KAVlp9Aw/QwD5azvCKvuNHRgahzahuWvItOcQE2iH9/s1x+mlmYFUt2X5G9pjrD
	 GLRLXcFLB2mzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C63C9830E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176863403358.9807.16072286609316028208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511a6c7700a6934e77cf9e17cf903c4d6e29cb2d5bd5675ec0b257a33aa46bef
Date: Sat, 17 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768634033
