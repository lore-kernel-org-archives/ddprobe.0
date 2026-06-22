Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5937F371877
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782163594; cv=none; b=NzR+FxHVGvic2nzXRybPNWQ6HXCgYtjcMlXC816kAEq5GQmTFl1k1EgDLcFA196y+C2ZIGBs/JaZVqUA6f9/XoB2PDi/kmAoAoOoSNwq+u5kj95kYVHWvwoqHdsYr3xDnOkeYD5xQKvMKl8m+gQ76VqG3SYuSzKdH9CyoRHU65E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782163594; c=relaxed/simple;
	bh=vhmEor6+0lUCZFdHyefNwFVYzPUW6Oc9lPlPBHIWKSM=;
	h=To:Subject:From:Message-Id:Date; b=phZQuAPXtTZ6ajlPUNWQxM4vG2MH2TFxOAqgSTO1mbPolAIl1cWpAkd4RJKLdyYu87IL6AcTk7c3kZ1f8NM8Dx0H9iD51dDV7Nx8GyUALRIICgYImFlILAZxGQZbKwUDGIfp2/djgXZD25pCiJGuHFO2EZUbytGju3PViTuCnPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQhovzOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQhovzOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3026C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782163593;
	bh=vhmEor6+0lUCZFdHyefNwFVYzPUW6Oc9lPlPBHIWKSM=;
	h=To:Subject:From:Date:From;
	b=fQhovzOEfzf8opOPY2AFAFk167K8gjUTPvvqxOYf3F9SI61QpeoiUTs2qscGamiPX
	 hX6qGJdO9x/mkQZYULthhhjswRtJlqJDrLg+iRUBnF4Sj17fUg9pZRKS7NfjRLTU94
	 +Q0HRsmUCamQomysCxLr8X6TdTssjaskNCxVW5ZGWY+h4tAyuSwENM5ct7NKqxaNt3
	 lAd6V/KfdiBfIqpFQ4lbzil5LFpbcPYkQeOqiVyXBu8OIpNQPuaZKdi4ASpurtRMSl
	 Ay2xG3vGpvhqPku4L1P3gc+RmhB6F8T1h9ysLoFLPyryJXeI+B8Qvwp0T+5LNOUYj9
	 KTNvCR7UruB8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A965ECDB470
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178216359368.4979.8636162129666508669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c0ac00f0af1a9500117ae6fb2b6a08082f0f3146da0425133f67975612af74
Date: Mon, 22 Jun 2026 21:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782163593
