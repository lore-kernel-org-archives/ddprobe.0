Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367AB16F8E7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 15:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719330803; cv=none; b=YMqGkXWEqul6ItlxqTdF5aShsSFvbikiBTEXBRVgs6GPCcjszfSnviYOn8l4NDeVo8CBrgFUNh0LWwY1AiqWg/Ys8SfUyKpHLNIwXmArtaO9Os80YxsH3yFD/jybvPrntTG6sXbhWhHXAAM2sWafkf3vzoNOH8BECQLe5/3GEus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719330803; c=relaxed/simple;
	bh=MLov0JqUMVFiXVhtiudNI2y43OtJvpXiaip9ktbEcE0=;
	h=To:Subject:From:Message-Id:Date; b=bW8j+Jv4iVxqP80bHgVByHY27xSUp+itS/nJNC7zCPom4kscmkJAEgsaZ89Jh0guWjIwOVYioh8fJxw/abQCuB5Ipl8bUM0iBn7zfLbNW/nxExjviHNQnU9nvTg6Rt/OYnyZYbDeJ0b6vTP27s9sjrYfo0gqtEQYjMX7PhDgG/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abHKzTSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abHKzTSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D2CC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 15:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719330802;
	bh=MLov0JqUMVFiXVhtiudNI2y43OtJvpXiaip9ktbEcE0=;
	h=To:Subject:From:Date:From;
	b=abHKzTSK3fZonLqgZ05Qjjb7pDg3AJUn9BQR8gRYNr/Htyc1sXs30Q7vpedYwRFJn
	 QX8kbMWOEbDIdgjrqxNSlry2PNATmvsaraPz5apRO8PLhjiAcKo9zYwPI4IkJHECjf
	 0SzZP9aw62+znnZ+NyOUSV24QaaQAaAiuuPxQT4OC3EJ2k6kQmToS8JKzrE8ZawUxQ
	 Rp4JLZZWpm3cxtbF+TeT58KyyjsBJLSqk5le9+Tef6Zh7TNV0shH8Ds6ydslrtxn7i
	 +EjOBUd+UejycUbtBz13YagWY0s8UbhVZOu52l+x21fzhlXmo0Xo6Aehn3cnqXAICA
	 T2qQ1sPmZq4Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0A5C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 15:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171933080277.6371.10299479983571817424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f59cfbdcb43a51121ac91e5c5ac9bab4e6732450fed53992fc3361e00af273a
Date: Tue, 25 Jun 2024 15:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719330802
