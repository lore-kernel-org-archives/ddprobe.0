Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396FF1E47C5
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764514374; cv=none; b=qNVfIqwuAb2z7s5x33IAupWj7ngAGQ47KhqsR7FQhROcOqUT+wLH4asg7c2eeJUdvw9tBIvR2pCGMJKvNE3BQwLBRCcILSgxWoPi7IW5mjkZAUU+JCDofF0IEazcZMD3WN5xSAeSyIr4SD4gdIwfqX8WPEjDybYVUljo+0Oo+SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764514374; c=relaxed/simple;
	bh=XkgWo4bN9vWJIEFJ5MTNmB+yeIWCh+tuy2ZGRS+xPKg=;
	h=To:Subject:From:Message-Id:Date; b=AdyfVOUiLyijRAiSGYa1KlJuBkMkylYfWoXy7XpYD2yohsVb+NGMDSDCAB/D/c29H2edB/fW6hUHLc2567N+rDKpjaON9i6RHqlRiEx65WG4UjWrVxxdklMX03/UBLJuJ1pQnVhgR3KfIdF8NqdzHHLkYlJO3aADJ/6BcapjU6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mr6Q9kac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mr6Q9kac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED5CC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764514373;
	bh=XkgWo4bN9vWJIEFJ5MTNmB+yeIWCh+tuy2ZGRS+xPKg=;
	h=To:Subject:From:Date:From;
	b=mr6Q9kacJDIOgJ6w/zLOFvtIEb16owQdKCij+WUpMFjDd/JuYh5xnV0NMkmPcwZ3Z
	 QFDUf/W+60ercG61q6VOQ7//7/f6iT2yDcl4cZal+a74CmNDaKsGhs0hCVjnVV4vAC
	 DT0rVSdiWFxSZt7CgsClpdE0uhPElsH9aRR1KoJdhyUy5pi5+l32vFd08OVoNc8aP9
	 WQggWx1vsohP9ge2XLRiRzp8DlTHgKC3YkyW6ioemtQU4lZI/FPteI91+wx3lt0PDh
	 jK4JhoHrPV7HOdapFX87XBNQgUl6OfFIV2PW52pXMWJkvtAP0va2b8CLsvYNETLhgq
	 9DB4IQVEQ9pTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99567CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451437358.32291.17901397692695568013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda2d737df87f703fb3d998d0a8136e70f07df6d288e59332d616415ca60b386
Date: Sun, 30 Nov 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764514373
