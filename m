Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406F71FBA
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725408954; cv=none; b=S8rw/B100Q39vf72EGBHADj4mjeth92ZstPfYETVGgLNEBr4+istUwe4Su0FDwyM7wsCpJrg8sLYyaGwd1ovX0DaP92OFonCkRPuLMjm+DECGD+dHvUEmOs6cEyIGIMfOiR5hPH6tlE69k5pXjpAyT70ZSwaQdh2uK6Otoatbpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725408954; c=relaxed/simple;
	bh=cwmAdr9woxgLEHfqgxxvD619MRYN2RilQxyVC4nq52E=;
	h=To:Subject:From:Message-Id:Date; b=b7aAiEsmRK+y9P7w1+gtV2NyW8+OPqaAgR44nVRfRPkcqW4u/bhnrdG8o5Lbi0r2xfOkdtY9F3EXUMNN84Wp10lpCXgO7tT0FN67tf2cbNiaRsaYnxm55Wu/Xfs5PuAdL3xSUxOaNZmZv+xkXLCyKGIPctRjHvDYh1UkFEGXxOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2vXVeN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2vXVeN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B47C4CEC4
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725408953;
	bh=cwmAdr9woxgLEHfqgxxvD619MRYN2RilQxyVC4nq52E=;
	h=To:Subject:From:Date:From;
	b=e2vXVeN2CdCMAMDiwsrlQOWevK8wx/R5mWC00YQbIdSLcSmdvMhkuaHV5DAA7TxdT
	 ezOo3popUpnJx+fWA76px8WDB5fPfOIguj8KkbyISx/E4ptZV4H2kpGncoMGOhKGSY
	 El5faulGMVzFn1rM9oT/SgiTefounHohOnHh0ioGrMFbguwXA0s67kPAIluKawL3Xe
	 /MIb1AURVnlfY3G0fpHnOFG8DyQNhYQnLFEoNyqJsjGx6MgScLyRob1uFSFqdA/EF9
	 8m2CHA1Sta/9xHqSqyNvSngfMvJsDE/0zOd+1JLztMOmqv9irFypgnCYlYfY8UVqxb
	 0SxtDE/+tje2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CF7CD37A7
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172540895364.23660.3687105720146918524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38c90a63211474493eaf2d84aaff5d374ff6772f7fb33e9bd288edbc3260cca
Date: Wed, 04 Sep 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725408953
