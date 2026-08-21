Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FF34908DF
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787313034; cv=none; b=Xy5R0RTU5qqYqTz3qjhqAHXldMRFaID6roB6aNTqO57xlZ4SM/YzWssTkS2uxTjHdAQrD7bdMYMhlXCfQdrN3Qt8K5XfVU53gUa219qMXsSmF1MIBYMFAolabfToQ5m+JUtggjA+Wu1g3pVCMjEU4DN8ggXJkZfpidv6/zvQjp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787313034; c=relaxed/simple;
	bh=sMc/CuTdrtZYRayrnQSUbDzg5EwJek6Wbio0X6wprIg=;
	h=To:Subject:From:Message-Id:Date; b=l4AhT17JMV+q8dqHpIkjkN45N8b5C+7E9UDEmKT9fRKLYuMIJCSn+vCDqj2JIjzBOov0fVeSWB4cpZ6MicSEXlEDfubKpMgPakyqVXo0wr2VOOl6O0uv3Rhat933usNVy8u/ilixcyCmpL2m+EY+uGwCloYcZzSdI5vTLcvyHII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zk6BPc6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zk6BPc6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBED5C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787313033;
	bh=sMc/CuTdrtZYRayrnQSUbDzg5EwJek6Wbio0X6wprIg=;
	h=To:Subject:From:Date:From;
	b=Zk6BPc6B0i7cn+2qra56xyhO70C0ifOMBX1/D7HvGGoBrUNbFb9FaN+uXTt93HE/J
	 5w+P6LQTYyPp0IcBl1g951xfzjlpB89XqfAADaWxDhv0LgcJ1YqpD5b4lcdQa6fDaG
	 zNWBDaJWEAXPGxdCsn698tNsYlLwKDbQmQ85XF1ox8ca8lQ4tPuvaKCB1OPkqZTf2I
	 ERZVJxqK2bxQ14u7K+5ECC5vRivjIvMpWbJDuNZTEF0NMwG4KRwoSDBvadrJzUBMKw
	 pOEsYeaGJW+K9RbPi+3RPEJIvOj03B+Lx1vb60KOTq8DziXPEftcRG3LbEQbVwk3l4
	 zDSVYtmde0mOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9012C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731303374.13970.9831434981098345863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e6ee1689dab84649065c56643c56096f04631bbb7150f699ce927e0ef5447c9
Date: Fri, 21 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787313033
