Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230DC34CC4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721681154; cv=none; b=XBvXOLX5wPqtjOsTD2JDf6yC0lnd55tHJ1R0+ySH1h8MKbirisfuYOsGUE4hKl9TCoQRRPQlwb53Zs7dSmKAML+8ifiE0oHFpRWrBU5/64TjQnsvUE2gmIjyM+J7GlImBTE6TvZVZCvdiWlbAf6IJJV+D0Aj4AG+Zi5yhP5jljE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721681154; c=relaxed/simple;
	bh=Gk6BGDXNAHlD4CkTQyAag20EqjPpJpqhYVUWCgAQl2Y=;
	h=To:Subject:From:Message-Id:Date; b=o3mBKdr9HkZ/MjleWoffZ0CocbkqgiUkmlzX1/JTTopM1W4ddH143DQoBQegymSX5MB24LOZ9BJoIoF3tUqQYctic4Gu6Qsbywzle10vhiNK3yOylfU34Y7h4yEL8lkMQjrzAFRW5KNHII6h5p/wkbvB5/U04fB8uhfW3gv0VvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZezqpT46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZezqpT46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2DCC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721681153;
	bh=Gk6BGDXNAHlD4CkTQyAag20EqjPpJpqhYVUWCgAQl2Y=;
	h=To:Subject:From:Date:From;
	b=ZezqpT46l2YDFaPHeo6PLaLOT5t7iAG+NX8SGyNTdNdeeiP3YDaELXyGu3gd9kcy7
	 KDXVKV/T3h/GtK6B8pwjriiDDY4hhTqHY7W4goYbkyV+G6OggSYwXA9foqdkXP45ys
	 D19eqFvZIYgucmHXqu7PphM9bXo/rit1mw7aY0auNMs5r0ftnRxaGbY5fXVyL6UUC2
	 2nrJE+vvLojnJlNRnEDQdjz/6zZfOeCsF1YtG58gcu1cata+WMxdWg6DkTT5cnKAU4
	 lepr1EViAfKBzMNuPU38le/4+kqLFD2lfT5cDUAqkSyFg0wGVEc+bLPqDQVLTPUWjn
	 2okVyJpTStcog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E124C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172168115360.25058.16942396017162545603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c955121156a1e867deb2640d98972d2566bbbb0e9e946f77d2ff627996dd047
Date: Mon, 22 Jul 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721681153
