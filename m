Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C262AE8E
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752752994; cv=none; b=mrF9bWLWJaBn+5+ljypTxvl+HQC6Rr9JNygZe9swilWKBTvmE+L3CK/5k1tuEJZMN6fPfnicPQlhMVoHO2AMguXLBqbuXU9hrmkNc5mnu7N798MjjvyozYmp8VLzXjvfyghjHTSbVjfvVfRhdvNemZHmeVCiTpgQ+/2peC2kPig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752752994; c=relaxed/simple;
	bh=3jRJkp+LUhmGbqFEvxuO7XOhlaR0A5A/eFwrAdDOE+8=;
	h=To:Subject:From:Message-Id:Date; b=LeEt6TXXQ1RhZ3PYmI1wR4ZeyM3sjNk+ZLsLCctcN1oSegldhd6X+sIvP+dI9UV9ziJo0TCv029vFJt/7dHza3n9t/O0I1MXO2JWkpFfCnFIZEEStuPLoO3Uyaj5USKZS7Cxrrhl6e+eRDUQ+PIWO1HFusSFRthc88pFLo/ngsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=py/75f0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="py/75f0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E40CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752752993;
	bh=3jRJkp+LUhmGbqFEvxuO7XOhlaR0A5A/eFwrAdDOE+8=;
	h=To:Subject:From:Date:From;
	b=py/75f0xxJYnMdjsCCK/FT5HIpz8b9JZM5EpSl757c+a/SvMNIbG1KE9+cd5I69jA
	 182AkMgFD1p6tdWr8lsDh6svi+wY3DoF2SyHgb5kl+ZTevSjgN31NgkXJQbQNVhVC9
	 OVJkXfYef1KlrkMAOX3oB7JNG83HftPzZ+h3bxwo1fbhKpQpS98Evg5ZW8QWbqap54
	 cX2XujW839/MB3m6ReO0mq7lhyA87L9PNwyUR3gTX58wRt5lmSQTEJbKEyYBT9tXFE
	 Sk2+GNVuJWqVNRhUlEN7CXWnvRefThyx1GYrH0vv/dmRSkinhbcYsV+4dLHj0/UMEi
	 mc4euBjPrALMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB84C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175275299357.316.6209182959071494484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd2c859dbce0b5b13eaeb47425f499e0234cabb46e6ef6d86255c8510d0c536
Date: Thu, 17 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752752993
