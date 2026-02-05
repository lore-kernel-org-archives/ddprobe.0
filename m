Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D443EDAC2
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770300834; cv=none; b=RtoR9I2xUYu6XiaZpvjVUtPeC4OQzwyVJZT7F9k8D8ILv2H1J3gok+QpkZh/TVB2+0CAv5yqzQuO5ijmnqq1W1OFKcgymRiIJp7cKDJyv0ixZEVAt6mMm1pMQGtnjeBkTvvTolPk9fkx1tGuNAHidNs+uKJ40R/6HAjpXPsFjt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770300834; c=relaxed/simple;
	bh=F9ZeCCtooNMEdI4NOL2bnaio8VLlrD/jDsmwdjpmC5k=;
	h=To:Subject:From:Message-Id:Date; b=b6kjwwmncY4UfeDWSZF8eLwH+7IZwX07qJAruqLZW0maxngQ/M2WFmlLDdDvBJcvxx7Uz0DU2Z9ivnCUhr9JYnx3xW1yi80N9mJyZR0mAVAgWuOVnlR7GIYQ58ximtsalHdM3Zly+vHSc8mFfUXL4b/+7EX3vAW4wm46jT8+gpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CP4OiZbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CP4OiZbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2276C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770300833;
	bh=F9ZeCCtooNMEdI4NOL2bnaio8VLlrD/jDsmwdjpmC5k=;
	h=To:Subject:From:Date:From;
	b=CP4OiZbX9VfpoGc7TCkxm5mQOjqEwQjKbFp0DOSnLLLYM3Fj/MTzlQYMhAFcWi71A
	 qKHA/xgHq4qddzCBKE9F8vm+QqPzWeYTF2aHO6jSQOUzWQYpt+xwL4hFuAuneOApA3
	 Ow5p7aTWcIVVlhwmHyx/zVQaqV2ALd7flmuJaDn9gnBwj5qvMwZpFFlOCRwNPmepLw
	 4JqsCETKYGTNwU4YIMwO30+LzTBxTSMJAU6LvaNP6CkpM6vHr/dT6+Lnk3qeICTixE
	 rIsLyJFtEZ18d+twGPATLcWBxVCWRTyQmZM4ZCIkDylE4okk6v3Z+SZPVzHqUSQTOt
	 0MMmXQ+1TMYCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B036E83F05
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030083362.28314.8776843484829608030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146c2409ac8fed272abd8ac29d52a86792adf9759eb49c0610639ad5736b3a51
Date: Thu, 05 Feb 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770300833
