Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8106D1DE4FB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782249394; cv=none; b=IiaYFqzib1P+priPDJgFagHCphBUQOAo2pP99wERuwAcVMfQ+1ZOCDoh1JUWqZVbpQuNHRUO4ZLFIHHNo2YAXQfOsieKKosh39ZnhlJ9qk22cBnYTFaCueT+DVUm/ghpHEGhTp786QFOYeNY9SpjRb+kBqD6VV+gLcbvmKihHJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782249394; c=relaxed/simple;
	bh=EW6IZuKF5EMgeCX6B58lQGClhFUbKx7AYhfLZFpiZII=;
	h=To:Subject:From:Message-Id:Date; b=FZI64MQnWpaT4N/uHDTCLGaVZfHy0JdJSNNyxKDK49Z4ux8IHrPouIYk0NznS+Vuw9rFf6NYHNxuJrWI3Azb+8vcTgWzIgMnMVj3AVqskwZhKOcLcHRewsNSu9MFaO/OG1LcqJoS0O0Z56J51FTIY3u5WxCbtt9JHY/s9poHPSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xl+dssvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xl+dssvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC10C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782249393;
	bh=EW6IZuKF5EMgeCX6B58lQGClhFUbKx7AYhfLZFpiZII=;
	h=To:Subject:From:Date:From;
	b=Xl+dssvCGmeW2Az8guqYYTEYS4vrRTjrDLDSUVKRJLE0L+dM+U2pHzG+gyxoySpKj
	 43jxJ3r62/BGdgJwRvVMLKQ8gtxDUOLz/PDPWNb5rEZffYi2bz3PMhI8KxavD+Ybi3
	 KxnETv28Rzgn9tW0RLvrmKivbddZIk3wgk1HGIYHwYHhCdlvFqcGhD2tip0w1qKgH/
	 EJhJvebUhBHHmuTE36EJY6m+sh7Hi4QG/Qr1gh+QoexOzrtMfC7DQLItYH7r8TiWRg
	 nN6BBtqhtFzGgxoglVflJ5Y/3Zgq7unWrBSNsNnulBT6UGRKDKR0XIWwHwTHp65d2h
	 8QNmJjExybW/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3CACDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224939368.22336.14889069474344877609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0759deee26daf9a392c76f19313b15a45b537ce631885a0275a6fe81b309e2ae
Date: Tue, 23 Jun 2026 21:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782249393
