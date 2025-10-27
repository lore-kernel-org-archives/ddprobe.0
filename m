Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150EC23BCF3
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761527994; cv=none; b=t4HhGKrHhFIsYcUocS8ZaQJn9NdqLqEaTbpv17TgzAQ4HBF0QPqa6KP7SAdVLr3xxytUFH8qgqKGxjCf12wSNjChaINriewQ84L2NAN4g20tQQI7q3sOMnx7sMhP+YPuBsHD98TB2LlWRicp6KDjtSLnYIk0eV4trmYS47hBQhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761527994; c=relaxed/simple;
	bh=W6qqyO2JULU89eEPzzanuDZ1KUDNrrFM6o7VIgAVNhA=;
	h=To:Subject:From:Message-Id:Date; b=Qd/1UUpbJjl7ymzj7SVWN3GJoXQ3oBexMSSz5W4aLN5BWrk8JrbLrB3hFo4q/HJ5tMPyrCdLLNcFBoCg/1juESz5nbM7MdENeeFDmfr0rbkIZHFBvAc3SawKTxBmWfmYDGj/fPE6ujGCPxyY5YLQTcICyV8Y1/YugOEJGg+3w4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZER4kPBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZER4kPBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A306EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761527993;
	bh=W6qqyO2JULU89eEPzzanuDZ1KUDNrrFM6o7VIgAVNhA=;
	h=To:Subject:From:Date:From;
	b=ZER4kPBHVs0bKvndE8gi2YOXzHbA3huBq5FcJlZj5qJUxfcgYaZ4EU7wMJXqCf8+C
	 j1oiykFCizKhT+3wbx7LgAm03J6z3pyGHb+y45HkhAEu3P8Kxh2AAyQNwMKFyVMeZ9
	 dWGWhvUdQqHxZ7ZCus9b4ggZ4PwmALg6WLShjSHCyvlp1xjGqutDhkhs0Lh2vgYsb1
	 wlVFzpfUNNnjGCl4IULCGig9AJRKJfjCZ/4b4keOUtVdzXySE8ry/6Ny8pRFZpH/q7
	 ypsmJnEkgFxxSkO7vdeXmgZv1L2oATzuKoY+yjdJGMZ6Js4hnwJBX+gR7GBt9liBu1
	 qyIZYUoGaNY+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F716CCF9E9
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152799357.6844.12984889108770244523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54afb869b2e87be1af330c969d0921c09c81d2df4904dea5454e00182c4effea
Date: Mon, 27 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761527993
