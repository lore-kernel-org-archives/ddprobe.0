Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B77242D98
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766781234; cv=none; b=DgBFv4BgusNEbD5zFVMPAXHMPha8R9JR752lR8IxRgA/mYSM0y5w4WYS80mVp0JLJ8JDYFLemIAiH/cNRrZVg54a5TqulEKWacL4JU4yFtQ2r5iXO/tLpHsf92ca+mVi+E+Va1KaBBDnfjPTWxuyyDIfsZAkPIraNPT7EFhMGFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766781234; c=relaxed/simple;
	bh=TMR3ZJn3HqV3vCrVDMjRu6DHf04TEXu4exWOJ4WmOq4=;
	h=To:Subject:From:Message-Id:Date; b=OKrFySQFqcNZhJO6a+LfW4ki50cy5W5J2aol3aP0HjDIl8gQtTnYRHzgJiMrfGnZ1SMplOqd40yRGezxSljzzEAwglYdY1yQDU4TCdGAN/7Ap65z1A2j/EZwuvzkE+VT9laxMqxIna3vAr604g4aL/r+iLxNrasNZWjb1Y9gbWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTwQeKem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTwQeKem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70BCC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766781233;
	bh=TMR3ZJn3HqV3vCrVDMjRu6DHf04TEXu4exWOJ4WmOq4=;
	h=To:Subject:From:Date:From;
	b=aTwQeKemi/OVuJYSh1fnqe42N5/y8JtDrTZEx7VBj+lqKmAM6XjoFGfDsjFNrKQJv
	 Wy0hBOcHRlHKG8KeHtCzWxyszTh6ouExnjCOcBHOnWE4TrwJ7AqdFJmu+GOSaV9w8M
	 041mxNvT5/bl95lQtMchg5dmIY1Q+1YQy0eBOa9/8EuoVKrdTqGgCc6ZeVt31OK8O/
	 JHh8f6OFDA6NiE45NdeyK08lSOvAduicWMxsQ37NY6tDHib2TsC6YgmGmdm2wmE3B+
	 q/sNaQg82cT9JQWFA5IvBaf0ql2rKkRW4eMvWa34uiplnLdebjPKFnSkgB+SV7hHZ7
	 aDVrvUKEwtNoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92584E8FDAC
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678123358.1263.14740771849183148704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc9be2fcb7a7139c780100bf9782a09525e9517068ed161f851ca2e7c0f35e1
Date: Fri, 26 Dec 2025 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766781233
