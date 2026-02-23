Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088731799F
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771808094; cv=none; b=Pjt/m9oZdknXUS6EtCMoV3A7UUYhEbh9cHXl7xE+ufB4CeV9CDoWmdJyDYK8oWJV3chScSvv6tl9kLVCaN6XBaeFrljWb9VceUM+D16zaDEkbH/H7b4aAXuEbcuUh51bu5KQJPWsVxQrKt/O8HkbInx2QbhDogJxAVkNioM1o68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771808094; c=relaxed/simple;
	bh=YPR/Le04UbXh0GHGpFF8jSiYaJSQkGFbK8H8k3Bqyqc=;
	h=To:Subject:From:Message-Id:Date; b=ttsAadH8BFOCT5VErQllgBSPd2U7a+VJYT/k7iyvTTyGbf3KQhZ83+u1o35BYGHTYGMpEZuDgiyaJ27+0gIhY2uEezRmqrDtwCg+GCWjGDTixLL4niAiBysIrzJNAmM8BjyKLvxvH/1PRH0VaJLYJwXq/ENBLmSvVL6C4HPh3mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LS9x7RG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LS9x7RG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7637C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771808093;
	bh=YPR/Le04UbXh0GHGpFF8jSiYaJSQkGFbK8H8k3Bqyqc=;
	h=To:Subject:From:Date:From;
	b=LS9x7RG9+HMJU3Hk/RrW1vyii0e0dH8Gyz2gU1OHX+iFnpAUwLcW7P5K8XMp//4Rq
	 uJ7630Hup8bIC+jW6EL/ctUat8bkc7ZypzrVrQiB+S88v0uUM2E8lcDzgtnIkJhrEG
	 Ho6gNezhdiyBIA/EjiQK/Jh+cB2zHViZnMNlK4lSpFWZjAQX71cFzTnrBXwAxNzFqG
	 ZhWx17yMfALEDp9x8Or/Xm9Rjkr/2OyvtelYtHX608td0XVUoax2BhFj9xjo8ZiUKZ
	 3wi1Ju0DGgMNtSow2vDyP/08EsMQyXbl56ihxNWB2lMhOlgGUcvXx+xIVMvi/0TzP4
	 R5YG6ESKvJmgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168FC6369E
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180809358.20425.5285050278750622817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f819fc185801cb82340455be6af6c947bd2d223e90117a4001836fd54438d877
Date: Mon, 23 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771808093
