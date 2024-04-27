Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6636B22084
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 00:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714176143; cv=none; b=lXODwyHZIwHkeEO1OvdP85MNx5prJTfFLjdOY8YSCcp/SGmswhJlgmYWhRPJOmlXtbpDP5b5245VUsfERI088jbaINV+JDf6L0Oh3AuuvxKAZA1Zu1yYAGu9WfYAX0na9w81V85vo1b0tMh5/qFyqDHqmC29nSIIhduNto/6FQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714176143; c=relaxed/simple;
	bh=9sNqg4EUecPmMTTLWT0yxk6nmGPg3MZ9/+fL6FSay3g=;
	h=To:Subject:From:Message-Id:Date; b=DrbIgTE1MtNLFedAKW5OdTcCl/pBsx9I6NLtJKMOZq/6KsBeE6gIGadzVGrTdgqLN+tqS0LTXvGwgL+EOpV1eSecow6XASvbPANZfCmVL2immj49VnnlcEOC1jJTAbYaWwCb13+TvV4YY5O3ICGLOAdSLJnGC5v1Z+FwhAKtqoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUWswJGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUWswJGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3536C113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 00:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714176143;
	bh=9sNqg4EUecPmMTTLWT0yxk6nmGPg3MZ9/+fL6FSay3g=;
	h=To:Subject:From:Date:From;
	b=IUWswJGtNYDhgok405hAMqOVimV2EXygePQW4fGi/Q+UZrZgRuzA8nzp+z7x8kzAa
	 RGS2NlL2/vjqXEOaz8TplN1qB1J4+kFTJNkm+LO7612rqEzkzZhBABmHNczSll5/pq
	 bpkVWN9eK07DsdmeXVGjPZ83Fm+VVlVStZdKucHmqFYAIsCQiL/pReoPDYjHUmXy27
	 GyIu1X1FrPW6ItUF8al922iNbBBje0CouE6wbvsmJKornoBx40wlYpRFfbSCROgjjp
	 +Vh5oAfLS1AdXDAJNMO6wB8yO0Xl7QGspH7mP7DIDLRBOmDsWzJblu4+HvQv0IEtW+
	 hbp9mingXVPMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D569DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 00:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171417614283.10754.16493578743756568392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42545f582eb1f9d813471e358d2d1387f8b1cbc2c3c85357564ce7e892a3ea1b
Date: Sat, 27 Apr 2024 00:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714176142
