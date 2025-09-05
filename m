Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286413431E7
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757072994; cv=none; b=GLkEa99dsXz/h0ZvYqtjcTBJkeb7IJ3nZ/u82uheY7gJ7hCCyX5aiPup98BWIMreTPYLHv0TdpF6VmrpkrU1zMAtMBCxeYOFcJV7TvnqQ9EHGYEQq0CYubMtSjWIB3kP7TcWB7Gcv/QMFCOXi/rlWdjY0lr/LdSIiSfxsvqFqYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757072994; c=relaxed/simple;
	bh=zk+pfFNbwGsa7lt3K4LjdX1h8pJZglhNMX6nTMNqa5Q=;
	h=To:Subject:From:Message-Id:Date; b=T60vZIxPEa3kKHbuwmALwC+Gj2JrxD8ZrQ0GHb73Z5ykrmFHz27H5FzbQL8ZKLRYflThQKGLsmjIeI4Zg9cRqu4f+7Usz/j4eKJZ+pRISp8eKnO+bGZtdQvj7Y7TgMPQ7tiJVAO/OjIcCSt9P+7cAHccD0G/tIugBSLlv4RBt98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9eZxNFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9eZxNFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36BDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757072993;
	bh=zk+pfFNbwGsa7lt3K4LjdX1h8pJZglhNMX6nTMNqa5Q=;
	h=To:Subject:From:Date:From;
	b=J9eZxNFyCts5QnjbSger0rEb9+hKH9yR/iDj+tKnVcqxj4n9XhxpSuW9xNpIjg2jK
	 VkD8qsRZLhYh9+xQmwVwghDkhDZPQs4pZ9rIahR2wqhyD/n97qyQYA9htkG8/KnaxF
	 ZjJr2bUOTjrRnXbZ0ZhThfOWpSOAAzN2wA9Gn93NKADYsRpzEr9SwC6OLYrHFfqBDp
	 gJG7j1neq25joKKl0VfpkpWs4mr0c//ZkY5DeaWF51Yq7jQfNa+EGdoSEAbYCMD5hn
	 IYBwanAJ5tyV9++jIQKn/V+RHZnHtt7rQjHaki+NBFjsGFF2fapGOLFzp/5T7HwOdR
	 luuSPFa1qcY1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90118CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175707299358.24775.9795052399766123798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44fec45d1a003f63aa14b3f5f59acff716c24be68ed8e38bc737c415396cc3c
Date: Fri, 05 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757072993
