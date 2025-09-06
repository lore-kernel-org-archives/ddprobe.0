Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F7E274B4A
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757147394; cv=none; b=tKr1fdVF0TCwhhVheokeveFq9hHUegv0v0dvAqix/Mh1yAjXc4/yQSw/omgGfIgXUwFWIdYDzTm99e07W36Ea8f3OS3gpaA3sYWs9GLDm9NWQfxwQTEphQLHkn4bcEPnGIbtHRACyUc/zuWAta7AVXaEeHygoCCeiRS1TBy0/bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757147394; c=relaxed/simple;
	bh=sJtGO25q5GBrSbhgpNGSZi1OHENM7uEgXtc+LohOvg8=;
	h=To:Subject:From:Message-Id:Date; b=YFV1kc0tRka6xQYvvRk9ZOuG/Cfjsug3qulFyA945WiZ6OY/J0jLet2VElZcrbwsF3HkjdHTReu91PkublbYZYYwDhmFGtrmzYalaAuOA2rIX9ceyEJdxlWMAvLpP8pMzvURkcRsAZLzhA1X7ZSQOIIH4bZs9HD7pXy7D6HkzBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uW4g3TLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uW4g3TLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39EFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757147393;
	bh=sJtGO25q5GBrSbhgpNGSZi1OHENM7uEgXtc+LohOvg8=;
	h=To:Subject:From:Date:From;
	b=uW4g3TLHI8CWni3+s0xPp6yw3dQJJIVd29YT6HdIi67UFBqCu7f82nYEg5b05sbF3
	 NOQ2YdUGujUUA1y1sdEgi6XDWiABUgEa0XFhi1RIrCIrDxO+KzelvTFX4ZYn74yvZo
	 gTjMjSCYYfRhQNKuyLT1VULiQVjCeGpTO4xLtuWVfWjYysTAmMeG87k/v8ZkpwZV7q
	 jmWKJzwMbY9neD0ixImy7zE6Pz9l/DgAejeeQEoFdEUf8DF2GALzQv0+6lJ52d+AB2
	 cKsrMWXF5UpfO7kakfllgnHWgwx5yMRu9iz1OGcf2eXbW6Lv/E+BLDby9LV0Nwj5O/
	 v6b6o/RU0ROHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DABCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714739357.26558.12489627794619745019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb330a2ad99aeab74ee4b42d8ce550a37a1e1c4bab0d1cd850b2fd5c9ae4988c
Date: Sat, 06 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757147393
