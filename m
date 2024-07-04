Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495FD1411F9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 12:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720095323; cv=none; b=NH3Z3pyKBSBBz0cYtLIKYyk+r+GSmWJfxadx+yksM7MSni1ruyBhLAdO1c1ZzMaPIsL+j0prju6Eqzxa4shU7XoNcq6unCgPOzew/knfdl5nHlQuPDUHQL1bh+38acEQFQE+QiO+D4RsXh2TraYIDUuzTTqVZDJ68KvCuTDK5sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720095323; c=relaxed/simple;
	bh=3BzLSt5EG+u3bp9mmTSBlFhvr/7elre8mYPuGv+UdHQ=;
	h=To:Subject:From:Message-Id:Date; b=bNVor1WVJz79wdJVvNGDsp+Se2pmXy3CKvjlp1V/mSKmTMIbpnAwn53n+8ttQndtlxcUFOn2ChUl+Vuj+faTBjadphYzovY1cLHJiYIP8yj3U4+E+vuw7btI1gajzm2fgDRkt7kbzRDx5UL5UDiWvjK5357LFtFYIvwz+42muvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0kfp1m+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0kfp1m+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47FBC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 12:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720095322;
	bh=3BzLSt5EG+u3bp9mmTSBlFhvr/7elre8mYPuGv+UdHQ=;
	h=To:Subject:From:Date:From;
	b=i0kfp1m+IFvID5kLSSeycq0uTqDZKdyjm7L7X+6XTTCPCPy4hZhNJsao2rYNMZCJc
	 8xLYdmSdmBkvU5+0RqddZibaaH2lyS8Mje0mRc6ZE6Nt6hChq+oOPyqjX7fuHh0pVh
	 TdwCTMPVhKRgzvcFMqF6XispfmnmIc6iasEaHdtaTVhQwUaAumMmAHewHIQWugH8UT
	 z+P4Mz4OzxW6Aqni3szrdQEu/v79iNX8di+CvdJUVC9XqpKbbpyPpNx6GQl6+Ogypw
	 t0RZWXIJonlObFuGLa/Rh2BXXGP6IDPG3bUJBPWnvf1WUfA1rBlSkhhqPRefm/rQq8
	 OG6clFaQc3pQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF312C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 12:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172009532277.29826.17974978124240852701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba2202b9bf3a0715ee4c5debc00ab6fcb7e8d7fae3d315aedb436533d43fc70
Date: Thu, 04 Jul 2024 12:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720095322
