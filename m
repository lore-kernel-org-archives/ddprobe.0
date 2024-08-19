Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEF24409
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724039154; cv=none; b=H5hXYuAIbdTx8bZ3BsVDxpBih7LFDbM1PX5ZwERggKypuYP3dUu6UjcmFbYvcKT2yS9urMnJzEw1K3OQGisensJQjI5Nh0RPAD9WjJUIm5JwbCrWWjq9QHt8JBNWv5wt298412xCAQ1zSHR1Qml1wUqU4c3N52j299b5UTQ5qFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724039154; c=relaxed/simple;
	bh=3UvnVRdv6g4BO+W+MF5l/JqXWesoEsv82RMBQOYbxpQ=;
	h=To:Subject:From:Message-Id:Date; b=buvEWOTLjir2gZZnEAfJwu2Uw4StwUsW7fFTf5gwnU4LX9rBiMXoVD/U2stS+a360Nh2fKiQSxpSJtXYl9IOcGCWIgfZXtL8aYJARcXg5akh1an0DAd3145YCLUZAzrVc12//E0EnNUhvbX7jbvl/oMbW/hYTMg12tEdHJAHPtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTyNBJ/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTyNBJ/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE29C32786
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724039153;
	bh=3UvnVRdv6g4BO+W+MF5l/JqXWesoEsv82RMBQOYbxpQ=;
	h=To:Subject:From:Date:From;
	b=iTyNBJ/hAIN8cSSugMc/b4q+dwPOB9fjCt07uDIoxAuvymC+XPsmDqkngROqByQpV
	 OIXSreYfthsBOca20C5iwZr5PvG6eD66Mj7tdE4lvwEXCSIuS/HwjBpHhpL3Yc+fA6
	 nM8mtOJe+9c435yq+u4uCy16lT0ABV+b/npSEPxTsJqIqtQJFqb3hIxgb6mZkXiJwR
	 Sit9yp5JHm+mA2itzAuCcDwTsBnqK1iHxEIqn6t0uQgMC7GRoPn6IPnDnAZrPiXykZ
	 0WEYfwxZggCNsMUKbHYvE8dAuwsw3coD/t3VvZXL+jFTtsy76/ZAO8fm0CST49LOmP
	 RZEXBjnlGFU6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99408C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172403915359.27971.16627331667627682208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2034cef9c5f36d05cd5c0656ab3bc21ff218278e96d347971ca63a919b96bfce
Date: Mon, 19 Aug 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724039153
