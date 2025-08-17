Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5DB27453
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755451194; cv=none; b=rPEs5MGsIDGLYiuxQLge8VJKauJIH5THCeupnK6jmlVCbAs9i9mviUAORAJ10v/X5ZTwDxoN8zw8NOst0WmTjIV+IMSH8oNAvlYZRsRpo/IkRHbsQIk5barnwzRb8qhYH37rKZ2alX1HrvwlcdadDx+9YyNLMzPXNwzFxDQgFjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755451194; c=relaxed/simple;
	bh=Ys/ozVpnGc1cbOFZnABXtWaBM2xP5VMoFQnSvwm8Y8o=;
	h=To:Subject:From:Message-Id:Date; b=WnOJIJLPZIq5Ta0yUm8bX3mdeoZID/W8dXFYCBZj7rn886Hlphj3YuuX1PHN072s7d4Za4tKkCLPKdkTMjn4lh15TD1dW9q4IW/VaqvbR7aXPNd1z16GTuK7XHbEhW3rhG+oYs//GANwtCsifOwfQkk2C/oWi6GlY3E2H7qay9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXW0Pfef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXW0Pfef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEECC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755451193;
	bh=Ys/ozVpnGc1cbOFZnABXtWaBM2xP5VMoFQnSvwm8Y8o=;
	h=To:Subject:From:Date:From;
	b=ZXW0Pfef3w3WlZXNSaoUFRRFylrmFIPPfhah8ANQLMzOc2tE/QW8GCmeUTmASGD43
	 orw8fpX5caWax+31VyCJm2erR9C0lsLYlyys5bShwi/hg3fg7aCZcPFS6wyY6vH8md
	 1gE+vO8mqhp6UvacX9w5ZSfET/5zv4j+UulsV1S5LE5Xt7BcbxYJzaA8uQsbAVddnG
	 VPi0L4uTU1OXqNMpvi83oFsz8HcPZaOlZPeJkoWq46hd9rLMGL7yT/AGVSzZfoCkGy
	 Csv2rt7l9Xse9HhCkHLVofoXoYb3oRHLHU5R/X6cs7Axpua30W8j7Fb3fjF55C6d6j
	 m6fh44JjVNzDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F5CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175545119357.19659.6435471635240258576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d2c2dd681d38ea4b14016df415b5dd23d7d8824ced1b2e76fa651f3411292c
Date: Sun, 17 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755451193
