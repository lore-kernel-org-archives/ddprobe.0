Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F274C1AF4EA
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737587154; cv=none; b=te8LNvlZT2CfWLBtPBiGsDF1HULs+oM4qscbjntMn+bry3UlrtAIf+HzN4L8JHZ1BsTkE5TFeLtMrf3LXFXNZ0sBNdn61SuUAtlAnQcmA7BCaBcTR/7Et6Udm76Q6Go0llUM2yjpd9L74ZscgOR3MdT+Q3lKkt9M/bv8RNAjWKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737587154; c=relaxed/simple;
	bh=Qr6KYLU8qFctMkBiSDD8raPCRzC/PxHVRHMmUu1BQe4=;
	h=To:Subject:From:Message-Id:Date; b=PhUZWsGYZXdKyLlJUBT/leLODk+kLTmUnA3V4EnoYco9EfXPC7+z+Yfj2Kj29GEVW8InZ8WxydK7fy30IqoNv/tMztUF7z4kgz5zxLMGBPuLeJf7/qYpmqX2uW6O+Y4qaLfSt300m1wO5/7gHl8BG+5uTBBiJLbw8BBGijLlKvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPSV4cBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPSV4cBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B265AC4CEE0
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737587153;
	bh=Qr6KYLU8qFctMkBiSDD8raPCRzC/PxHVRHMmUu1BQe4=;
	h=To:Subject:From:Date:From;
	b=UPSV4cBBxmtDlAAfocfeNb3B7/5DeLkr71Y5JVW9sFe89zKV9Bvm8G9GsyebHTICt
	 VKWC9Zu8uL9owOWv0D/4qmhEvsO3cIyq1vGl+mbV5ReeFmq9yHvHYMzAXTuvi9CzEM
	 iTPnw5B4OSd7b3yPtNU9H0DqQ4Y9JckCUFTDTjR3MlMFXaQQ80DOcS8XbJRXYi4j4h
	 aViptdaxLDurVdgw4X4rspHVXi75+dTWRCDSY8D5ROWwF8yZt0YGYQ1d8y1S22N4eZ
	 cBtFUwWlq/oFgUW0KMpjq9N03Z3Eyx+cQpC8O/3YRQIgBqDnU4F95WxhqtZXly9gNm
	 OrqO8S34ZkYww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92736C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173758715357.29425.4161666866990386292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b2f75a8f9dee44d455c8c913d49b711226a17d2858f52ece8030d584f95754
Date: Wed, 22 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737587153
