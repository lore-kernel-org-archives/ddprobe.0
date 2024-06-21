Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567994644C
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718996543; cv=none; b=aUUHSYHhzAXOxO5QflTELDr+MQD5T+FHIhfPV0Mx1OMtJwXYQZjjBWv8tsoQ9D1j7SUelO7fktOtAVQexvYxCWMNPsLfNBD4G0bQXd0zxdWh1LrUGg2wYWSpuaiP8nFhvx9zhPPjqqddBmqdm2VpFcJL9XxRraELQZqri4HrZ1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718996543; c=relaxed/simple;
	bh=PUwK5RTPldikBGtfaQBrzjtNJUr22nH3ohKsXeDCvmg=;
	h=To:Subject:From:Message-Id:Date; b=KvnYSTGba4el1ABvpvKvIyCB29AsBL58xwqDNSjkJmtZ9aSLYPBpY8SBG3beS3FZ7lTDcd8RMRvG8mg6iaWyH9jP2+9PA7rxedEPhOWYQmNOb7re/iItpcnNiqgiH+eIz2Yf1YLATpS6cuxZBf0QP5iXHa/VztaIOUHoVPUUQYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EA+b3Vf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EA+b3Vf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87C2C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718996542;
	bh=PUwK5RTPldikBGtfaQBrzjtNJUr22nH3ohKsXeDCvmg=;
	h=To:Subject:From:Date:From;
	b=EA+b3Vf0NV0URjv3ykQWfvNB3//lYjYZpGdGDwobN3hGo04do2Nnc3R92HaHTQ1UN
	 s1YejXTaLmCBfRXMLaL5Is2w47gp+sEk2WsDWDgLbBmjglzwNpphA5qoqO9k1J0CNh
	 hIK3wz6KhKH5oHNc7h3c/iOz7s+pa3LWEEGrZh+LCFQgrnG1JGD8obfi4Qb7Xlhm4i
	 kZgr4hm5qnmzflBzWV+fKe90BH1mY822QuyK9FUWkheJzKfTpmtpJNxqKoXs9qU+Sk
	 nQhgGepxXbjZzM8WbbIJSmx4VKnae1Md65Wu9upJDPLPlcPL2H4KcnD1ptzy/ps7hs
	 odFLY387OFxSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AA0C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171899654278.25945.5061038257604427013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7af6785a0652ce33571bf79100838a98f86d9e750bf3bbc3846a31e7c5d5c6c
Date: Fri, 21 Jun 2024 19:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718996542
