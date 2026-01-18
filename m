Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D44617A2F0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768755234; cv=none; b=jeNjfAaMxDiyTMpYAVJeDXN54nxUJoYTK/erUS22q5oJhDVelCfM/DCmbNHGutyuS4APnO3RDhbHcc0x99JFXWnThbj4Shm6mmpspZbNEPINS6uXmYkz5OowGY8LAcU/XmcE7mGT+lvBbdgfeRP+ljxuOJahM5Y0lKzZVqkvS08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768755234; c=relaxed/simple;
	bh=ug5TT6AqIJcGTqkxP9X9KQPMKBLvjF2N1ytkmu7y5c4=;
	h=To:Subject:From:Message-Id:Date; b=RksiFJnjk0eNbUifQYdF/kc6w4sNVVVzOaykYRg6tPXwmHJlG5qiLCf49bmrj4dU3lypb5H/V9FiAlMA2jep25mqS33Ae1mVNKXzU0kCgmVTIhbSAkkvb26IjD75ZE+nYvPpEAjiHZDZtykERz4ca8lymkkLmLI5d5BbpJ4LG/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pga4Quuj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pga4Quuj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BC0C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768755233;
	bh=ug5TT6AqIJcGTqkxP9X9KQPMKBLvjF2N1ytkmu7y5c4=;
	h=To:Subject:From:Date:From;
	b=Pga4QuujRjUmtIH7RO9edghl/T9GFqFU7uQHv1ij6XiszBodVTMzBNgWAVJQ6ZdvZ
	 VhUr7CQiHgVvE0PvlVlEVVxL/ya5yKFSyk+qd6djpTUOuBb7byb8vlkwf0rb4He11h
	 JX5XEbE4L3XlyHXEhBzyt0KuBPKgHUgURxUMiNdLMFl1884gTM/3KU2xfyFGhI//BF
	 0WnbqX4OO9Sqsb8d5v/dT/N24qcDcsxjBJKb1xSCtRgBh3wVbQ0JQKWJrebpbsBHtq
	 YEUkd20lpYlqWm9X0V7tx6zHZNFlFMqjFoUz/roDud+/yUExwFt6Sx4Z8LBfQ2jHNg
	 qIK+HbPD5CqtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E68D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176875523357.5319.3763138745685079281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b9e96ebb026528abf127355a92b74d7c424c8a4d05e5baf956860848565ad69
Date: Sun, 18 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768755233
