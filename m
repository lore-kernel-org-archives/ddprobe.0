Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221CF42049
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760116794; cv=none; b=CebHOhzOOLWmISmklaQIgf9lKx7n9OO8AVgzT1NgknDlcwUUnEK3/Xcv2Q6IktOrTnkjI2MFA6kAe3bXSx2GD4BVuULEQd0Kp4sIdqjKyWDzJKTzBeKkuoR7+ZAq//iqqWrwqjHqohqudAeNzgegAjQrumyPTVgL1bxs4/VB838=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760116794; c=relaxed/simple;
	bh=XRtNRymthQNi9D5GSjDP8S7k8kR0XOBO/4fkJrGu6/c=;
	h=To:Subject:From:Message-Id:Date; b=beOWNYkk1flGNgYqkSmM9Meu+izTItfMM8P50YY1lDNVJpAO34Fqw+0F1yW5Qh/Dk1F3HDyIsYwZkkO+nK6Z9z0DmG+pTF3ebq0eBzGchFHTGoUnzNcCAm6/eLt/QwLcw+XVBrjSW5ZRttKN+9yfGZiImtBlOo7TzCwza/OPa98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7U/hk7J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7U/hk7J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74D7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760116793;
	bh=XRtNRymthQNi9D5GSjDP8S7k8kR0XOBO/4fkJrGu6/c=;
	h=To:Subject:From:Date:From;
	b=R7U/hk7JtH7vtsEoyFdh0CYi5U97iP34JjlC0IvpBc9NfnEXoJFh588ZHADh/WTcm
	 1daUpAaEYvq9QmOwKGrHx584m+/cKhhgTKSqevM/iZqtCBTc3H56HzKR5r49z2xG9P
	 yjtAGTq8qcSnVdCj+kePV9BJcCfq43uTde9bznV9qwTXqI9IX8RYV+ibUahmGJu+xx
	 jQ+5s9eqC/7jUKr0FuJ69DL9DnFPPPIonvtxIKeCZHlzrDJyY6NEdQDY4RKmIN2Zln
	 a9fSo5VURYswk1b/Ay0B7YCrUfgbOHa6vxc8EshCcC7VN4v1/2BXWengcQ/4fR2R+U
	 l1y2ZBJ4w728Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A3DCCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011679358.2956.5378076787955058136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5527f94f02e6d52c89501a37a6c9a9191f688a4f0658404634c4d3fb40b8ac2
Date: Fri, 10 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760116793
