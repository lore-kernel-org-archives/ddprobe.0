Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B69CEEBB
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785299434; cv=none; b=BsAiwigYKkyyemWSq7oDWZRsajNZ3HqMeGF7gXEV30cGCPyf21030r6efy+Pq1WilStFYL/9Lz866MXCw9mvIWCmZmJ8xqq59EHlCX3nacV7VUH086GcgWfAtYBcUqdGT46GXfUStr/mkKPNE5o97Dbd87bw3uJgqmnNNPhgtGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785299434; c=relaxed/simple;
	bh=KfaovVhcKrhR8HUqc8hxiu9xlBMNx9pJP7IGkoBcZWw=;
	h=To:Subject:From:Message-Id:Date; b=FHL9Hf4+HSQ3y99TATDs8Hu9JhTXgnP3AJA2ZxSVyn7siZYvMLvfdaaof6YUVzwckBMVvJBqL0Z0EIONNFk1rJHHSmjqDBK36I3cSFoFvtHiBGK8vHIdIJ9tdpn6zCm9nZ7MhU0zYYBk8ZcPSYnnYR6T0Uo/QT6wAVCvx4BlBWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PomnUvZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PomnUvZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D327DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785299433;
	bh=KfaovVhcKrhR8HUqc8hxiu9xlBMNx9pJP7IGkoBcZWw=;
	h=To:Subject:From:Date:From;
	b=PomnUvZzxh7JdPzOV7hDjrnkJKB28sdVCR+PH8jGg3PyTk01H1i2iBNV0k/uHNF3g
	 amRqWIqoJX0raQvnWTln70hTDLVFSLW0ZdIuPSYwtiSUIG3BHqhprglEzvOXFDZQ5a
	 66rcv26vd7pUp1cSxQb+/mk9K+0K/bCoPteeXKun0v/8LUA4/NpsIL4KsbZo4Oi7vw
	 rPKSlQTi0jxJ3091pGubP2W5rnmFBmbKvDBZGj7Sf6cX+ObB8HT6769jWBhG+1FaZL
	 RPDcJN2DC+zuUhlZhCWoYePaQBwtb5yYkSC/bZfMnr3A8VGyHUUqbTezVpZqZ8bzrV
	 XPJRdthEBTcOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD189C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178529943369.15259.2994443301368840290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b8ad51ad57fc9f1f236f03beea327b8f42abae0c6e48466d5715bbaa4a3eb6c
Date: Wed, 29 Jul 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785299433
