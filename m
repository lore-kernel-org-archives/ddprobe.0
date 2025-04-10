Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586292853ED
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744295994; cv=none; b=LepoHJ3Comoc2A6XPcxpyTEAq4Z/vtbXrbafX64wXjGUh6Nzsx15QuibaxmNCeW231shaAsNZsygRm3O+mB/jHrF09MVOz8EyrITSdT+/vRTXFWyF8cZAWEtghQVc1QoOvt+9mssuC+JK/o2VIaQFjuikonJuhiDCUm7qsNjCk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744295994; c=relaxed/simple;
	bh=Q2ovh/oP2eU0UW54OLWD99JsMQOe5FtBAty6OUeL0pM=;
	h=To:Subject:From:Message-Id:Date; b=IKtzsW4lgODuPksiVa+KZl9LEKioIB2KxO/Vc0eLUZtwLlZZb6Y+vo65ApSMP3ZZ+OQcdOJU2KfBb7WbJDyKL1G4ZxT76yRqh/TXtfBKYTgGTaXYgNa+I1uSNtF9mlRL6U77plSy4zYnmR+g5BEACNxgDoVOlkfGAGxZD2oOLmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpvbuovL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpvbuovL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A00C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744295993;
	bh=Q2ovh/oP2eU0UW54OLWD99JsMQOe5FtBAty6OUeL0pM=;
	h=To:Subject:From:Date:From;
	b=EpvbuovLFa76V+g6LxUre54LWvtc29sAXvWygxrJ20l2hgt8j/SleCDs8950Yg07S
	 6FyhftwalzUTC8FOq/IjmLtrQI+hDUdRqsGzPvyxRH3Dxv9pY6Yd14FceiW4vFxrVM
	 NoUYHE24k8e4KpQALPO08yJlO4vQm3RUCJpTvXucyP6dIHnknkM6NNqdsqwE7qc9N2
	 1HyrDdlEbqOxwgt1NI5TFJUcFyqqMYPdNVl/OmDMu+7ssfZNT+Szk2tfbY4q6UzjtN
	 TcLvSHAS09orxFLpGcAbslfcscwIq6Q3rfr+tYxU40ryTJSgkHseUl6n/k651Zf7Zw
	 sBIBuIwUR/kmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E45C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174429599371.24932.7268331467160459153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3deea1eaa6f3011ffad5b62b95d7b87f40a1ef93f6354a2c1e71c1bbd10ff85
Date: Thu, 10 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744295993
