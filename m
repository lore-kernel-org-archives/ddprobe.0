Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1A341DEE2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783338514; cv=none; b=p1FqXYdkPQGXP6Jzj6AKQDl1TDAFCbkgwy48HN2+cFI44QDChSk+/SUFkmV3mfI7Tn2EyI+NlkgDFqtBn1gwOKEPgtOyRRqur2kAhgqRLTE7WVyEaebQsq9pi3GYtWS6kuioygkg/baSraIIxxvdG3Rt65psofZWRbJffAja0v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783338514; c=relaxed/simple;
	bh=qm/+Ny33364z+/DAvZqPhih4qCdLP/+rcQ1+MZSmJlc=;
	h=To:Subject:From:Message-Id:Date; b=ZDfCXlueQPnZ6zajqRB8wd8QnjcDoEUGdn1CsSlf7mSyzyN37fVhulmIo4L/rKIfOuxCCc7On8CSfxXRIR+Eqm0WpNEJ5Juf7paZJhUrUekw/OFvytd/1SAryTFZ9rbGiAv/ATApz64V88wF9tXhu9xPqtjuqrLeiINFCLaohrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TkeJzSSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TkeJzSSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8781C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783338513;
	bh=qm/+Ny33364z+/DAvZqPhih4qCdLP/+rcQ1+MZSmJlc=;
	h=To:Subject:From:Date:From;
	b=TkeJzSSdpIMuPd6TTIir1pG39NKjCNn5eT+z1In3k5NBCYOYN7g8/AAfKAFIKWInO
	 SyrSSoJpnqz1FmL2PWECbA2m0gfYydknvWWztCirsIl79x+S3RUZl3aeulZfW+//V1
	 zuHuwkQXlfEaaNWP2uyFjy+mvu6ykGCLcYSPFTkoUVAaRfpaBPGTJMeIketZueAYKH
	 FzPKYYwLAAEdOC9vE/KP+AFXYMXOweKm8t9JBZy7+VWCNhpG0n7f9njE6Cu6/0ZlI6
	 r73z74B719bRKu5kEpMlVNciSivh7cVoHh8XgMTf0b8UAEhl4VjvK//v+CCylN2w1/
	 PEdrMNSVQZl0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C10C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333851372.3611.16214504757747241368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da72b1b9adb39ff18077eb1f4fb03975c3c71022546f88a37024a9a61a41d76
Date: Mon, 06 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783338513
