Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7DD4C80
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746052193; cv=none; b=NZytrnHZS1eyZQi8gBa7L1tSJzyuq3LDoCKRCGYoAbbrCUledvD1X1Y5v2xXD/wKwW3WevO48LcoV+V/9Sfczs4M/3dNFQLpmf1StNysyu18mbandXurO33nsUvJS7g6L5LxBat1HWqyRg59yQcaCDQvkdAjqPLmO5pSOqPv32E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746052193; c=relaxed/simple;
	bh=lleCKVz48147A9kgbmyQOXNz1NE1HwMR+PH8w791ZkY=;
	h=To:Subject:From:Message-Id:Date; b=OBjie1rnSlEaIySTizufeqtrUDZuF92hKnx+bnfolhc57oLAoI9QthKTwj6ZzS5dNw0P7ZabmB1QktwcBlX2qkutxvKwAQFiuktyJCWAHPP7cywwRjDMG5oFWovJgXT9BZn/wXu7kRrVLAR7q8c1TqsjXUwIgtXPcO7xAlKKC9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jk5ZBpu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jk5ZBpu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A677BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746052193;
	bh=lleCKVz48147A9kgbmyQOXNz1NE1HwMR+PH8w791ZkY=;
	h=To:Subject:From:Date:From;
	b=jk5ZBpu1Lsd8uJRj4oaqWcIJypa3yhY+tYqhGV0cTVmep/SfOaJZir/yGzEufmayz
	 tB3Ufk1TzdYjBiKL8M1rArTm0pGaBx5ZSRaPj3mEMp/45hL9orklwSWuxNpO08c3PL
	 8AdgPXa3qY3UaV8dtjjo6weh7abQrkbLLg6k/1bdnhdolwDjcbZBl63eK6pkMAUlF4
	 7jKvUA2S5PIn4PT86TaD+seOU2kGBdfHxIIo8bZUulc+iSO9Jxz0l7GrwIq/uTmf3S
	 lQ1tl9zQmHEfRtUYE85vhmjsd6bXEu60i1SynUyL+LikAhBg4MYnjWsVA8j8GynIeK
	 XD6TmXCvnjqUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94350C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174605219357.9229.12189628507385351434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd504da0809bf75478dd2b0563ce08499b640b84390773d00e05b737eb1c186a
Date: Wed, 30 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746052193
