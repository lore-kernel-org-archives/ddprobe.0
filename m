Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8B9219A79
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758214194; cv=none; b=d7RQlGWH2ahRxeh4SKlIY7dLMWE99am+1p75Egqm3xmf8X1NjI4ht6a9eny4ir5xVWFG+ugdfCW8GAzWv7Xzt8CG+Xz/dc3m8H622GKHrh4DPmUQVYIfGh1T6ANNonUZheFTWdeiXtr/kJf1JKgRVrxOjKz+ITPj8ItlCc5YyYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758214194; c=relaxed/simple;
	bh=wcu3T7wqo9E121fxrQT0NG9Xe64C/9/hkkqqNB7CmzM=;
	h=To:Subject:From:Message-Id:Date; b=N1pRkA1Uh3DpmJXqjNBspjcMf/nai2zladLYvau6k/H34d4cix3GnmBE+zKTUggSbYm8XIxq8z0sjJwSav5bSyfvMX13dAgZyd9aPwTO+0mYiRCXcrsC4Z6Tv0iA9DeCTkbmLrGEIZr+OeGt9lKR7WzTUNyxhmPdYFVSXjs9JYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5W+t6Tk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5W+t6Tk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F39C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758214193;
	bh=wcu3T7wqo9E121fxrQT0NG9Xe64C/9/hkkqqNB7CmzM=;
	h=To:Subject:From:Date:From;
	b=U5W+t6Tke7wNIIaDTs/bvhGPvZQ7ofKnZIRxjDBKXgQtmn+A19+i2tmfq/nuY6MAY
	 gKcMjHR91Cop14tGUSMiPeMB6VFiOkqNjb8yC8H1M8jz4K2hebYM6qo2GOTIIdB+S4
	 fE32uG0yw/5gqrAFX4l6gD2yFvk9K9iW9PJ9Dr/DeLRvq3qknbhLFBMOuYXGgZ6Iw9
	 aSTvyxN9VGIrCKYRb3K3ycdMD8vCbN0s6NXc29YdMPo9Esik8HFl7Rnx6H8ywF+9kx
	 58g/96XQaizpueWluYVMbmHfGJ3OKvDzMheM1BykxwfQ/MZuoC/JYs7dLqlyT8tfbv
	 AeLswQ0WJ4tpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA56CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175821419357.7008.8182013068145153797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b608ab84124b4675ae7e318855c379a697ebbc2fc6118e4571900cc058f51a71
Date: Thu, 18 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758214193
