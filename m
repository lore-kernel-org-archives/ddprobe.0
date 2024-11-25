Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4F113C80E
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732573554; cv=none; b=VTm0ABWCPoaTqsLz//TobiFcJH1wRtK2DQzWJiIbomiMPJ+3CK8Dq0XtaluQL+uhdrojuNtopZo8ZsbPbQxncTrkkKXOBlxRrN2bhBchCnn3SYw2TVoumeAyMtezKa8atZKkwKxetBzgvh7u7Eg18lWsLtWp2hrlq6rAO/dMC+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732573554; c=relaxed/simple;
	bh=ir9ZGBtPm9yosfIG20boS6T8VWGOx5AOYgWKbwsEalE=;
	h=To:Subject:From:Message-Id:Date; b=HSBMhh03SQMK/ozeNaO0INwt6rGItG6wXJQPuf+BMMcd/7s3t+wfzSvRh04Tkxgp6ZT8Shr3q0wLWE0S1c1lUQkJts2bA/uavvk0UH0Ng3Vzf7jAsSk4FA5sjzOwqrZYFMtfoVBMeWnWPJ1E9c7c21ik9jBUFfDZNvzWDpBCla0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0nUxQcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0nUxQcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6978C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732573553;
	bh=ir9ZGBtPm9yosfIG20boS6T8VWGOx5AOYgWKbwsEalE=;
	h=To:Subject:From:Date:From;
	b=a0nUxQcwR9FIF+t3AnlNciKejxNkzWcuQVNY74Ec5Q/jwXntcoyKZ2/87aVVOVIZO
	 dDgTr1eWPGl5bIrnbEvTGVdi+CkbdsYEkMQ3tBgvDwbJnKIML+o1FdZjmOlrf3V55k
	 1x4ptJAYpU7U4E8FjcLUge4yVb8D0pLi/utbqlaZ7n1n/35p7xp59b3utbam4qn9AJ
	 Zcbirgr2M9lifDvnqttMnIzTx/3Du7nsefKO0t9F2pAkj2LW3gVfCl1VCwmjkuNNmn
	 brGTibHEM+2mksGrJW4lPJBA9kUefSozi5Q/Fv7VtSjc/FT8L76OuUcJd2FqSkP82a
	 gXr+Nza+2Y6Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972E1D59D7F
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173257355361.26703.9548898244866418605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b321b25ba4a01d4fe497176e9a2e41c246547d1fc693c407c97769df823ada55
Date: Mon, 25 Nov 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732573553
