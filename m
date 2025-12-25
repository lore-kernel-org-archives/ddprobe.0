Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C9B3A1E65
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766682234; cv=none; b=AkYPMgK/dIKW+bB8aWd1sYxCieQl6TClENAYhPzo5AniiBNmW+NRqqMKaHMD8njArDaJzEQDfJurduStODu5RTGBH7nE1IeM334uYfpHs04JMIKn5aydwl1o29RVLIuQ5vhJxvS2qxrur10I2EX3QCnXdspfVcHrmUOBCyl0I/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766682234; c=relaxed/simple;
	bh=7/YJeLjCS16wVb9gVWScQ6dDn4LwDh5XLMy8kM7sqT8=;
	h=To:Subject:From:Message-Id:Date; b=aECMXvb5q/TDI1KohPV7tRLKZWBQQAM6zV9uDqmIS/q1YyfsVb5xGCY0mKryUOHcacSTJrSVYvmky40YnCmv3jrpVDUrGH+t4L2HiO0checEJhJUCR4WLz616IE+ezXloH7f06/O5D6Qc9Q5j8BaflyVk4xiYwrmAiFmxUJoESk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8t8jlI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8t8jlI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B355DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766682233;
	bh=7/YJeLjCS16wVb9gVWScQ6dDn4LwDh5XLMy8kM7sqT8=;
	h=To:Subject:From:Date:From;
	b=n8t8jlI6kazsebYqGF6BOSCcxQwHlXJcuDN20qicqZhwlykaDFY8ACnaDMhwRCqsE
	 vFTP8T8l0eKnCb1FofvIQ95UXX7JKKQHRluPlxUFdCL38KaayR/EySAfFjXiLR1goq
	 ZB+uVoJW8Sqog9cuSaGl+6BpT5lAEMXf8gqymkjhHsY1LmeXuzd8aFEn46+l0M71kH
	 YLlP/3aoocccKSnGmQ5GOzLT8bHDL5uz5sjo8k4WT59qmighym6xNDEMvj5/w+82St
	 uwV7fGvlNzNGgzYSzzC1ZeCyzfhRActgls0Q7K91/OYlXmTQg8NNNbFJnx735w79tp
	 SRXhQWVB08NoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C732E7AD65
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176668223359.9343.15944840313675128587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166429e74dad1547718e718507ea05400bb5214efaf22b8853497b330bf55846
Date: Thu, 25 Dec 2025 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766682233
