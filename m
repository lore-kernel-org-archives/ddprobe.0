Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E9339D6EC
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776779254; cv=none; b=ZRK6DMBrT/X91QJTPO+/qp3UGKAe8Pw1bXuQh934QoynUpE0+YHeCqN0oK0rDL/zn2zEj2K2nwrcKlclyb1O8agmrM0uGGQej3WvbAlUrUtXFGzmnCRqysp216rk0oXqdip0hgRndrRSwnsous8D3TM4x+2HwRp08LSyJ0VdxQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776779254; c=relaxed/simple;
	bh=cWrOcSEgu6X0N0C9AHiqh4Wu+GBYpub9YKiOKDZgJCE=;
	h=To:Subject:From:Message-Id:Date; b=Gw21lwYFOk+CaclmV22amcl69a5YTu+mRhVCheahfUefV7be6PTsO1Gx+7wJWAbBLMTGW4CLIEBrww6H5nDDnC/1d+kPi+0MpMY9E0KsGGsWy5X5eU5XoM0UhKDEizKn6spSnRvDGLs1RTrOP8XbsXqof+5d+ItCNPaMymyqul8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvo65lhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvo65lhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9B8C2BCB6
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776779253;
	bh=cWrOcSEgu6X0N0C9AHiqh4Wu+GBYpub9YKiOKDZgJCE=;
	h=To:Subject:From:Date:From;
	b=rvo65lhKpv2KDHYd0+9jQKUlzEK7uaH5aWExRKbmewFvUZw7WiTPajX0TIpxVAdve
	 ro3o2BIN6F6L/pZKVQpTRdd/drbkSefKGlvZJcYrHkj6uXwwn7NjZfWEU0B1ax1+ct
	 0EixGaC1hNZhL2clK6pygrmUr7c5fr56QZc1R51ptIneM/go3oQnezZkQMIUgYdupp
	 isJlLt7qUmT9AMoHwUc9ZBH8GT0tsFIQB6yukORUlD6Zppa9Qvo9rhmC4Oawg/GMDa
	 sSnIvFiwwBZ31FKC4HnT9hY3ZWy2Jo6skEvCr9t7IVeAdagg5UklQTlVG5Khe0RvRW
	 dCajRTf933vRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01B9F8FA7B
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177677925368.32211.5345021866473314373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 755a6cd2f38ce443ae5ced4585db395f9ee2bf4d5675a7820483bec66b888f5a
Date: Tue, 21 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776779253
