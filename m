Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1727030F539
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771625094; cv=none; b=PKN43e3kGasl4T60jkvGyV8r0tH496kCoP5NgiXC3tHpEuwMUSRNjkcnGlBNu6JneiGSvtDrPfCaezdSWBpKchzrEGPYjDPKqy9lj19PyEU3/usKnkLLQis8jPjzlGMtAafxAhWmSuRiLY1SX5b0CBQmch5m0VD/3uJ+PbzBop0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771625094; c=relaxed/simple;
	bh=cZv6ia3gxMroC/+NH6QQWrnjnqaUj9ou1uOQS4J9eUE=;
	h=To:Subject:From:Message-Id:Date; b=OcADP+W8M3kUw6eNeoFO2ot8TaICE8NI2FdRT4lVvxP1z+CJMWu175JDMvDB+OQO8xCBD880xRIjd9FMUYQbufAqXX4X5B9diFTVOBens2r78X/+9VS+EwjRqWC3YqpP/1CW8o+LSOgxO5fkkJUlDeHQQqXJm0ggoZZGC7OoDUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixk0Kt4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixk0Kt4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFB1C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771625093;
	bh=cZv6ia3gxMroC/+NH6QQWrnjnqaUj9ou1uOQS4J9eUE=;
	h=To:Subject:From:Date:From;
	b=ixk0Kt4qr8K/fEymJo9EV1CXwEV98glOOOAcPAmHbrEktv/xi5kmtUzX3HXFpaGtn
	 2Ois6EJxxRoVWINx+MTfwMc3wNK1K5HP6Iuo9xBRm/y6oq12GjO2Y2B6AfZ62Zv/Wd
	 VtvofCARCunZkk0+0/DrtLEop0N+pQM4MlUS2l0ejpFurajFkLEYkqXbse+I40nV7B
	 mexPyhZimtKemzZ/e7xC3X9+sV/iXz0nf9JZgDZMA0Q9w/4ITNEsrFMUhxITHdQ1Ju
	 NqkqzqEn6vU5BGJW6ifbKDjbqyQ+f3a4kYJYF714JiRmqmno6x+fkYoK4HyKifXc2d
	 e2P7aAd4pRiXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4DDC5CFE6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162509363.21475.10293472145722183191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aed3a2abe084cf5e082f1b4695c6cbfcbc8ac2b0e96f2430540f902f58d4481
Date: Fri, 20 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771625093
