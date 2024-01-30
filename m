Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096796086D
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706606297; cv=none; b=MRdVsLZgKN6CtjKz7wyeKMrqFLbk8iY67DXKEcSK0AeUFJKg1hk/tQ7c+bQQNn1JLwZqsF8Ztmw32e0qPj79LKD8HvJxIWGleADT/sH3LNrICFe9QCgF84xA/QIPu1LlMtLJa3PZxgzcyB2ocMYJnLBKwep3Qrhj0j3UUJ2rnn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706606297; c=relaxed/simple;
	bh=GRDTY+X8DXfRdA23eqv3xAaBOyIVuQQLjfNRDtHGTVE=;
	h=To:Subject:From:Message-Id:Date; b=dlt3KkYnHFmV/RrbHQz0em+mjMCv4XF8TvAfz6Mc5Uz+Chij5aLPXpJkPHhJwJ4yxuar0EZG1r0O2N+TdeVDotVsqAdVUKRG99Jc/dJVvb+kXraDzjlQaVIY+eM0DmLTvIYPxSFddMWgj/g8wZq0iJB1tIiQq4e11DB4MVUi+Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u85hi0I/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u85hi0I/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75660C433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706606296;
	bh=GRDTY+X8DXfRdA23eqv3xAaBOyIVuQQLjfNRDtHGTVE=;
	h=To:Subject:From:Date:From;
	b=u85hi0I/kPBn5S3fum7CdDDZlZyTg7vSyvEtqE49tsNRS0uj4F1/RCV5H0NXP9x7H
	 0Dmz2kt9urZ2IeUFJudyDIfXyVrrzt2q1hSV/hmevFBWreLW9m3kYFnNprDLRkjEZZ
	 pcshrxX0cqQiTwxRg9NUByAtKq2Tq+lc4CgQlBKgEfWnDbtBAnybXcwoFCSUqjWAgR
	 5dzkfwX9GInvv8qmiVu1qMMLfdEuvQMBkJ7t8cU3UMGncqt8Qa1xHdG0mz1RkyEEy5
	 kKNs1Ma/XJJOgPPAflrzErOc/WPFbK4mZ1rIpjMKWhPIVT7D6bohXSS4OZNArcTBgV
	 PVGCcAbRKSIfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E691C46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170660629637.14740.15489186041329854173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 505246863096f01b2ab06471cc06ea0b6a1585453c7cffeacbc3fba40dfacb90
Date: Tue, 30 Jan 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706606296
