Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E63A175BE
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 04:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719375803; cv=none; b=meTNvOAuXBCzb+/lxMUaqlzyM1u2i7wyj4Hg6AfVkZjLoLLBDFrR/FTwXgOzU6gov8Rw/bbp4GNoWRgpCEB+f31VVDIZ7VFdvmQD4hhbHZu6VgULE+8NuLTYIMnxouidkkiCywv+iqEZXaq4Yf+enMcTmXY2TwfU5axFrebKCDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719375803; c=relaxed/simple;
	bh=YmKYXTdtWsQFU/g41ApPsTRbKnxg2n2BDjlY0S4+YIg=;
	h=To:Subject:From:Message-Id:Date; b=q0jAA0sDIfV3TN/KhJ94RVB8l/rv0FQWZsePsKS9PvOaXw1GZ0bMVO+wP2cZcceyInUdDoPJKGomMbtZUYmQdk/eDUqyItNz4lyzMeGMTn6ilxUPhLje55UBWAnF8i26aXlmdXZqn4+qpwA8rlq2KBODFz+tgKcBa7bNu3G8g6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/q43a2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/q43a2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CB7C4AF07
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 04:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719375802;
	bh=YmKYXTdtWsQFU/g41ApPsTRbKnxg2n2BDjlY0S4+YIg=;
	h=To:Subject:From:Date:From;
	b=C/q43a2+NqaDCZZE3FFdyOIwsd3LaJ3rY8c+IvDK2SImvKPAMAfu+cl9S53ZFRaYw
	 +3rdOKPvQaRF1SIo47fOR0NlCrVM4V19rStIKJ9fa0HGee2psAQjzpRyUejPGdpdXc
	 6gp3Iqiuv+lGksVqr6R7W4P81pk6TlEea9pKCg5bpkx6I9h97HWEgM5WHzega7Qf0M
	 cJvVXXIXT/O0DwUrdDEA1YZGS7krKVW5VYOPqDptYgGSAbfvvRsFkqbeD8Pyzpq99x
	 lIsdinrFH2Ryf2hEgjEI8tac4wponeTqbE8nuxvimy3Z7YJDeeITalLn7B6Ah8Apl7
	 FeagjnlnpuKMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD4CC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 04:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171937580276.25478.15161449647825442505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e9c6d6b72d214c85216564563a8a4a1f13e955367e44d32964f006f0293215
Date: Wed, 26 Jun 2024 04:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719375802
