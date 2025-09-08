Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D6B3C38
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757291394; cv=none; b=MpnEfdiKQgR1elCKdV1nxRFOfe+VAPwY/rMh67gxj2ZF1EHrIgyV588+nmSbKYXW7gaci8/YH2Q0DA3zW3p+NkxMLfMVLC1o99bCpvI6H4honGX0m0WI5O/K3BKD/FCv9he/pxMq5s9KYfXiTZtW+VB+nlLGoOrFMkZ+/QFTF/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757291394; c=relaxed/simple;
	bh=IUWMHHgz+FWD/3BlrHwGn4CQPTtcgUrMqj3QgqPmxKk=;
	h=To:Subject:From:Message-Id:Date; b=asWQTrouDJVrQNezo39vDDcKeMO5wsqf1acMRMjYcqx8gNNJeOR6sCtJzdgGfWv90b/qPNe9pYjz6m5ZPLgCCjdWP1pf/ivd2ykzpGhE0eCx3RLMus8zXVHgdA+bS+CNRFW8RnKx6ZzxedpQ13f3L1s8K0g2HsObNk21pgOQZ3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOaaZINk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOaaZINk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80F2C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757291393;
	bh=IUWMHHgz+FWD/3BlrHwGn4CQPTtcgUrMqj3QgqPmxKk=;
	h=To:Subject:From:Date:From;
	b=bOaaZINkPaF6Clt79WyvLVHrgR8DACIvwXnUFbDGR6EUcuk+h7b2TX2/NNeJ8W04O
	 kgLlR0KccxtZJbs8kUswvbc2E9RqccT2/+qZSUtSFPSuyfeKCAvcLSSbs6ektVp83O
	 DCkWvmBjFsGIRPWyD112yH7fRjThxOMpMT+zXKSlHfA77oc9rSM1PAeTwnJtKG40eM
	 UpiOXlxNn25pM6DHuJs98gbQ3vl+T4rgmRvhWvtWwue7VpzeQi9KNd14HrcrPx078p
	 YA+1rsMvOLcPUMzylndRL8WbGJUL/MxRJ9puhPCgLZPZHGZFLUb+bKVZtCMm8/zQWC
	 ksVkuzOrAvK9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96673CA101F
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729139358.31600.12062408765109900461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b26f178e39ffd868a8069f3bd7b314d5fe5a93ef06e7158d754ab9816e5cc7
Date: Mon, 08 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757291393
