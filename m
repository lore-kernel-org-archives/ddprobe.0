Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343633D969
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723419354; cv=none; b=V3UY05VWj+UWlYiOqdyd2mDe10eOO/bTwYfmgCllLRXCXBNLYpWPLirRloRlhHuw7rd7PDDgU0I3D25OZBKNHjFeQUqHFBJNY/Psgefii5GYt7YVpraELiMQhEdetJrLrkSe1+t0A69So5Sif7XBz6GJPwy99A/Uf9zkKIgY4cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723419354; c=relaxed/simple;
	bh=+2n73r7vsU9FWg3WeGmIOAbhYn/E1ooYA4MW+l4bGe4=;
	h=To:Subject:From:Message-Id:Date; b=c+MohI2FOvFGhRV/E61dPaPYj7KKnQDavj6+71Jtobce3pG1sUY4ki0apKi4ZfrUgTAA/pl9KuzzYUAH7Qi+YkWbuk5BH+4vNzzL9vY7I2PqSEtbScMUTXOKRbBRTVoEqobpgeKccfXrBYf+7FiTBrg4RJ25H8fPZrJP54mz+n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQWy1Q3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQWy1Q3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ADEC4AF0E
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723419353;
	bh=+2n73r7vsU9FWg3WeGmIOAbhYn/E1ooYA4MW+l4bGe4=;
	h=To:Subject:From:Date:From;
	b=MQWy1Q3X9FtHo60zUQMZT75EUjZTCzCfmqypP5/RRz21+OS2nf/zy7p1CaLi4YS3a
	 dIQmmvGQKYYG+ED+dBOtCg1Q416/Pc03lpTslhdtHTuyWJQeBG2AAPzAAxsQC/wBoh
	 HTCgXNv+C2jMON1UAgoIr761E/cleTZ4A/7HNy+WBaGBffNO2lhPT8BQM8U0DrUH0W
	 nrJVOvqs+X32TM4RseA6e6YaZeKsaHMpPLygYASUyhXIDcMdUzD3Uwi0BZzWE7+Ut8
	 SeTyx1alE7puBhqTTEIzDkT7mnf4v0nrBpnymPXw8OvNEu9SL38Xe3eV5UCMhpRFcP
	 e8PGp9oa2970g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9469BC3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172341935357.19957.15167210640694977933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65c9dc1fe074e9767ebafa98d90670d1190f9499ddacf0c033e4d1f5007e071
Date: Sun, 11 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723419353
