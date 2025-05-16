Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340E56A8D2
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747433994; cv=none; b=f7AHoWQfkdsw79WzfY++71cnnLjWT3Ul7X+BupE37Nq1EwA4yd0FGeGANWv//68IIQIWTsWnuPQt2g/mDuW0HBJMhTVgJ7g9mmfL9+SYOVH5w+D7D2GL1Dh9oc/nU+CjUrepmVJVOe2T36bLk4d8tZKS/eQzn9ZluhlFnyvG0pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747433994; c=relaxed/simple;
	bh=/n2lEav8AETAwHWrAD9a71dIEyikHGBeQwC0xjjoIg0=;
	h=To:Subject:From:Message-Id:Date; b=gjgHHMQA9LBRjP7y8C8z7v91wkAEqiFl55zY6Qm4UTI7CKVEJtq8QlO+/11xkVSAW4ktuYweUHWX2fEQPa6v9rk/U/Smy9az9gMLSRBdBUl+5HKzZSJLsayHJ1nPLnI7NrFfNtpB4d1AhrMC3MQPNK5SuH2all2gG2zhfME9KTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EW87iWXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EW87iWXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA0EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747433993;
	bh=/n2lEav8AETAwHWrAD9a71dIEyikHGBeQwC0xjjoIg0=;
	h=To:Subject:From:Date:From;
	b=EW87iWXniRquEAExCzdLIHa4esyxsfd4KrKJIDU9t1yDqjjzA5F7Ex0wWFa2CZR4m
	 UTzwFwIo2KivNzq98ohwYF337AkQ8UFOGqpS7MvNMV5USZsvSz6heteA5gd8t5wsIH
	 y19p0b85CPBBv2HjaW+HvGjg+PuvgK0Aez0hzYjIP787tSiVzORuGssypNA5XlP63J
	 Smm/Gc7NoBg2GP4N8jGj/8Nr9VrBp1mi4M9KoaNLoxdYMandDeR2cEh+v2bYr1A65d
	 vhj4c1gB3+vBDH/Z0WBfBq7i3Bbzdui8WNhHID7KRkgbx36ILN5HeFmdRBBzSOraNH
	 9/2KwRQ6kjDjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE24C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743399357.11206.14896677907952342725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522246ce7d1b1b15242ad30ef1c2305dfca93addeed3048e212a49718a2f8ad2
Date: Fri, 16 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747433993
