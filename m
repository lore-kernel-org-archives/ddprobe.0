Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B32E2FF642
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762810194; cv=none; b=Ka6ZiSf20Zk56q8tBp6+7sbhuxjxFnZ6UoruW0vEX4aiwUGzeh7AfRCi+OVI8PWsfJMpvvwaeDt2bQmSsqg1Qhwue6sRLH4RSy4QHzsIB6FY5n3ZnSheiT48SVXg4qcVBmEwnwI7LYdx9NSAE/WMA6y0iSNfE8j3QP//Gz8X8TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762810194; c=relaxed/simple;
	bh=Qdd4/HgbSlfk9EvldLWq1aLxILf4zO1owgmutjOU6eM=;
	h=To:Subject:From:Message-Id:Date; b=eu3mbDEGq7RdJDr+j5DHU9bE7+NRf3XdLNh/tE+W9uJEOuRh2p73eMpGxW1OvnPJ9zX3d68n6uj/KUBgLJiZSTq5k8yqtRyDyciU5GY9DN0PblhhJYnpQmuk1kavBDicLRrc6zYg99lWSmofJ5zXMGQXY6wwPUB3iHznpseH/JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HThH+HKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HThH+HKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E081C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762810193;
	bh=Qdd4/HgbSlfk9EvldLWq1aLxILf4zO1owgmutjOU6eM=;
	h=To:Subject:From:Date:From;
	b=HThH+HKpKLwIEnMNLzfIfTbR6rmxJjvSFRVw6H7/i6e1ZzmZ5ThpEqdw/zRs5Jjzb
	 qmPRShU0lDuO1VZkTQNdZzQy1XJg6nGjubYKApUduQqM0VDQ8zvgfaA5wZrirCmOHd
	 DeB9u38jbvXxzwOvMGug/F+thccJIHOTGtIy+7BBmXaXXjm+nO8/FR80o/54m3XXy0
	 XPQv6LQ2ozW/hEpUZ11oDk3yCZ6ePxyyGzRMZxGfT9HdpSjF4PXmmzJbjfyEQpnRXi
	 dW1byC8F623Y6KIr0rZ1LRmnAMno9lu8gecw2B6vjqFO+qps+8okjh2fyLn3kHlniP
	 0f7J0/CkvHxlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B4BCCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281019358.6026.6122514923940633396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbeb290e257a5e6d41e8248444da0714f42a1d630faf075c88df7fc925a3fd25
Date: Mon, 10 Nov 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762810193
