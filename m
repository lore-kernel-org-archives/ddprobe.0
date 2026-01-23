Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CA22D8377
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769138036; cv=none; b=GKlC2x8nZJx8ZG7FqZefSTFW5I8XOCW5gFnssYE1lFHf1wfMfI4Lvpmnrmxxbdasl8vaIFuXvS6YMeAxBWb6mVhw31JJVnNrbj9xvV5G8CJgNGZ0SalCkjE9NzS37bqFbIu/ZD9HmhAkyf0XF5YHEz2Iicml+8Ul4ZVxTPCHCH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769138036; c=relaxed/simple;
	bh=JQUc+Exy7M4ElZh+oobYwqOGz4z+3w/4R4ZEjH3SVoo=;
	h=To:Subject:From:Message-Id:Date; b=mh9OLo0MKuImhQLDsMBsyCA9dyqcmRYAip/E5zExDcypgRD+7F3nyF1zjD6OoHlerBj2s3B8xWlC8yTx2TXGYM6HBrswU4A5NPjUBD3bvG1TtXPRA6ivtC3KHTGKe+RyFTT0Cc5jAyTUEW18ASHdqcRmFodKNW1cHue4cMiam8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNNiGSoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNNiGSoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4746C116C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769138033;
	bh=JQUc+Exy7M4ElZh+oobYwqOGz4z+3w/4R4ZEjH3SVoo=;
	h=To:Subject:From:Date:From;
	b=tNNiGSoJdRjhHF1qIg/AQgM5j/rd9sgXo4angkarpwLYJxW6aW0vlQwGxWEIWre9H
	 nPeOv6bc5x4MeLt8NH3By3KGj/iHhVEd+kbNVExT8CN3mSC+2r/wYlUkRZDzy4hQuq
	 B4OGi9GX0FZQ/5SbWm7VRut55kbR0vLk6s6iMq8KGa3bcAtMgsrDW5iTknToh/Eii+
	 XRbnLYKqowr91Z2CcWL1tiS8rfT+GpwZqsO6xGKnwIYKHzQRRU0ullO1BtIPUHXv4o
	 qZmu90MOYoUGV8EsvcjqI+tEbnt10gL1Qy1u8gH9Nes4ry73fVH7IxR1jOR13CQHXv
	 sAaTGFQUOsP6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E10D6CFBB
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913803358.5964.13071639057857045071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95aef84efff465943d8ee80b28d445d5009be9d5a2b16168113444f91b35498d
Date: Fri, 23 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769138033
