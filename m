Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079ECFC12
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725436554; cv=none; b=ZLqQPKokUm3oa1sSss+z3bFWoUCJY0/Me2c3dBpsBqVcLp2Nur8gNL2MQ7mJo0UPq7ukanXD9uZpEfsSR6xLKsBMraePmOspfWmYxjDRcecLBgstuDOg/LwNvmDYBq/dYErfme9x7CznELYRzXJ0gLODXIlrCRysqBCFBTxN4Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725436554; c=relaxed/simple;
	bh=vGHTVZanupB0RTmi5jsq2CJtkMe5LiS0VsFbyFOpae4=;
	h=To:Subject:From:Message-Id:Date; b=N/zNRy8hj6+FmwjXNVPld6RAvbgfUGMJyhzzSLye84aFK8xhIgQNNnavsYB/gAdPjgz6TL092PQshEDM81322wElMA8euuzdF0BLdf4XQU+fJ5bk07XZ1BI286T066wNXQ1+vzzVeLNVlctKt7uILCMvAKnAQjltjTxeHy9ngH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=na7FyQTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="na7FyQTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E349C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725436553;
	bh=vGHTVZanupB0RTmi5jsq2CJtkMe5LiS0VsFbyFOpae4=;
	h=To:Subject:From:Date:From;
	b=na7FyQTCFyCoqjt+mF8PHwANPQVBXbcZ2p5Sbq4Ts63hEKIjOJFq7cX86bT8ZSRXj
	 FRqHU40UrLprjwuw0qMOMBcfSkcJ0/BZ2Ew5VxC9c1wmN2yEYre2vQDdBjGpaLjBiO
	 sT/U0PdgVAAXfLk+V2nXs1ziWU0RFGiQ7X5e1aB4oN4oJ7tNIM8nmMkVhuCfZDBOBH
	 ggnOP3KpE91ZKZzhVORFoHfIkaE1bCYRdWlOwDVbuU+HENbCJ27yNpVCpvaBy2vMSO
	 6b8gU8ekPNL/xkaienCD6W+7JO4AqcEdkNtcnWpK9NjLmWG52hvUjY35sxm8PIag9n
	 sRKiPTfYlFCQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE2CCD3431
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172543655358.18618.14979022459416957999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0988a6d44406aa1d914565fcb8ac8ad2a362b8770e8830543443480e1dd6430
Date: Wed, 04 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725436553
