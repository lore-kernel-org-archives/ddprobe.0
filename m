Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C886E194124
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752182993; cv=none; b=WUMYoQyApW+1oWPrPAn8R5H8kGYNlpoFqe7MxW26jSY/gbint3PNpHRXuNLz1spCAEntUVJARv9yxrbaXVtPVzZYISMXRqG6jL5iycEJxsSKfkijCcAlEMNyIyhTa9iko2YOCoKnseRpjz94QokKCryAXvTCJew5Y7mhFrg8DsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752182993; c=relaxed/simple;
	bh=4OlMhu4BKlwVLTf+oWGH8mAUBqGQ6UmUUuQdqgqRBZ4=;
	h=To:Subject:From:Message-Id:Date; b=goAlK7g9dYAvQxhnSZVTzZ+FE+3yIHQf9bWBqjQ47vsWIGhXbm5j6HrMG1IFpAzOvLi/lJxCqF6FOjUTzzcaGf6c5sWt6KiZvpJHGu/HNTc0KK4rcTrNKvr4TGOUfM+m61/+erIvTPTvBuodBxEk+JgByKZm/ozeY1NlK7Akbc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qIOIiWQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qIOIiWQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2A0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752182993;
	bh=4OlMhu4BKlwVLTf+oWGH8mAUBqGQ6UmUUuQdqgqRBZ4=;
	h=To:Subject:From:Date:From;
	b=qIOIiWQXXAjc+K9AdOv0SjZdE0bd3Q0L8W4zf/2bc4UIQRecBpG05Kl72yeoTG1JG
	 hLBB40wYQK/P1Ai4ysljOcbWzSMYQQqqv/+uLnbQ9Caxr4iB8GoWkgHja98GRKDy/2
	 9SRskTWJeZzY8z0lT+mizrVzAPxAVLtFWUHdMUwiHhvZ8PlKgntK3RGzgRVCkXGsea
	 h74OHer7E1+WOJZ0AoTkpnV5qPW9H45wuzTRVKAg3MU8stZ44+bJb2cUy3P0SsejKm
	 3HYv+N1TJ9mOAyw0HeMROmbl+HeeypIUncD6Db6v+i8KZlG0KSxsnlmB2Wm4yzltix
	 Xnzc23ZYR3jGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909DBC83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175218299358.2889.2592582664942410403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ca29c67ee338a3b0b1f0f50bc9c856bcc92b201d4e2d5080c8e3da19f56589
Date: Thu, 10 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752182993
