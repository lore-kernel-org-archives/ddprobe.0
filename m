Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4756510E3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752725994; cv=none; b=d4ACdGHkivrQKfy1ERSNaR9nvs6dtf3aHf3a20Qskxwg5ikz2oflxCjwv53nyQBfRNU9cTN8MNXBSsAVMjrecHDy6pHbwrQX9CqiZOwH/jj/3RDIngTCJ8SGkEz5LmH739cX6SgfE+4BpDjh/oapbnVr3YFdjIK+wGQpAebs/zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752725994; c=relaxed/simple;
	bh=0f3y22K1jRu6QCf3+JAKBpkTcByKn5/bY6xYSwt+qPY=;
	h=To:Subject:From:Message-Id:Date; b=VI/ZeJCImJ+yVKoZdgS7im/aoNd/yIOXJ8sYNxdgIaWeMJkbJZwSvEmwEg3z+Enqiih91TFt89/qWJaQQUbkmHzgusK6xN7zudX8rt1/3LNhDDzyq8YIb/HeJswF3+mQEUSEurdzbsCs8CD781y3fB21V5YjI42AAaQyhc1fFvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrCxW19h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrCxW19h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB89C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752725993;
	bh=0f3y22K1jRu6QCf3+JAKBpkTcByKn5/bY6xYSwt+qPY=;
	h=To:Subject:From:Date:From;
	b=GrCxW19hrEOAnJJyTK4fKrUW4knWPF1fgQ6KeBCxiQlnPW1DEFn6cvvzaBGPAFgCO
	 RIsa/oNl1ZvNVKqByJeJmTovJnHnooozXYNiNI0XnLaqCoKqGmcMDll+rfAOyotiIe
	 h3hpIu4dbsdhYZDHFaXM15MX5krBwMmXMm9nAszspJKpnVw36QBcmDsO6/LmJMRkP0
	 5ccTPc4pZkh6XkNIyY8fQG/sVnAlV/jFWr/fsul3WzRlz7gDsuKvK+SoqT1x1kCJi4
	 4nwU3Ruk6ckKnQw1whJul5DZCtfA2yzaqZcTPdZEeS2KnJbCvcspze+EPUS9wMrRc6
	 JEg1h5A6ekdRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6CBC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175272599362.23987.2139420050128019251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703457d9bc2e752396d01d6d397802384f5ba6e70feb6aab944c5074b7fe10db
Date: Thu, 17 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752725993
