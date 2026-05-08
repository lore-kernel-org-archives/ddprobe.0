Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D042853F2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778222854; cv=none; b=XwBy+32yTZuoFBiQjeaKFvZTn6ItyaaEOn/pnvbQ4Wq4fPAGf/LglUYZKiv+1+Yl9h9HAd0J5hMaRCvtMqR37cYOjTqL0dE1dVVeebSHkjAAZxs9mSGBoe7Q1Bs7WUKla6mHOxxwlhY++KLCsnLi4wt78SRa0Oc0EFwSgjLeoSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778222854; c=relaxed/simple;
	bh=fIfn2GvZwPdy7I3VNdJ2pnOH5q5GXAjOuwFQPG97ovg=;
	h=To:Subject:From:Message-Id:Date; b=R+Omglp9Q9oyHRkxuBC/W+FBOl2HwVe2lJ/SF1qmPFPNEsefkksxBExHu0ogx2kDro6R7HENoT0a5ZczkFyzN244+66am8WJgEqday87HXFvMVtdkBQSGX6V5Y7spU+sdJglkVV/ZiUfhhjgkchdSa3z2X1YmGxnVdC2JChQq3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7F/Gc+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7F/Gc+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8C7C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778222853;
	bh=fIfn2GvZwPdy7I3VNdJ2pnOH5q5GXAjOuwFQPG97ovg=;
	h=To:Subject:From:Date:From;
	b=e7F/Gc+MDs66FgHOH0FcQD7F0Bw/OKBOhcK/3xp9tTIU0Ghfr1qlKvcfi4BjMGd9p
	 OEnVlVrqNyVLZcaRouVINCkC1NjJms+YbxthAcDmoEHs1pdmNzggg/4gv8QNXc9HN3
	 tZqa4Y+vSCwhetyCqvoNQztOwgwuj4rCY4yf3r3pHvketmiBKqowIRkj6kngMIUusi
	 w+0lKpVKrf8bwkGMD57R4sbETqR0sFLwl1cm2h3SY31oK7RF3FuN9meL2RT1to2kc9
	 4INBTMVeHQ3vfW9dhFH23mf2hZn/mnm49/XINKyFbdA6MyyQX8XJodX1FCoxkzNBtX
	 S35Fq1OPmI9/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD535CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177822285369.4140.1494168765499279643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd8ad944cd43364de0f37a178914c01b742057ee65694d6e89548b964472f245
Date: Fri, 08 May 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778222853
