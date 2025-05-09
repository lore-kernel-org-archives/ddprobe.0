Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBA6272E40
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746778194; cv=none; b=lE9TDD5m0OSVw5/huuHjnywncnT9STXhP3Ifu03E+u28CBxZDBNsc+5cxj4FddRm1IXkbTz4OCx+1tY7WNWD7eLzJ5s0bTEBRAO9ilI2In+RBkNRZbjbR1FXOYUqpwoPkqObdG21uNzEE6II/MwhP1DSiHUDfokeaNjxSgsi2D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746778194; c=relaxed/simple;
	bh=aSXiFpm45ilbAov5ujvHrE7Z8NOweHl6TKQ6LkAIAdk=;
	h=To:Subject:From:Message-Id:Date; b=LyD89uKBIZhde8m9RaaLB7lr8Gc43SCw/r3ZQGihbzb80Mk9G6NJCmPjdNfkGz5QG2aqGXIIx6rjwFh4lXDwXztaNnOUkf3uhj1sPENxfc9sbVa4ACK2CAJcOfKgbnvLN9oWYvOfIm8kXsmx6yUHrH7zTNf9vsDUht2PI3a6dgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mu3JcgC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mu3JcgC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D58C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746778193;
	bh=aSXiFpm45ilbAov5ujvHrE7Z8NOweHl6TKQ6LkAIAdk=;
	h=To:Subject:From:Date:From;
	b=Mu3JcgC8fmvps8X/adQHrV05UzcUY5r2BmtWBeBXxqLUgnAdaBVlPHNQqA5pnoRB7
	 KXgu9ARR86HWmDUCGze/1B40IjvtSSm9+vNcj9PNsgkDNaE9+awdSDqe0vCuxGc7Y2
	 7ARpJzJxDgnKusnFlygpCXKCS6HkzOi7yS2Ka+PUyhQ6Vj9Pu6uXv6hB58C/5sbY5D
	 WDMo+QJAUvhiwIvthEYQCUwVj4mxlwUG6NwWRj9lIQdj24hmOzfKCgVg29EzmY2oKJ
	 ZYu0ZmUqrKe3jENRzf9JSLFlRF0AeXXm+9iGGXOm1UnR583EFlu3SdAcwL8f9xzd5x
	 97AmLH7nBHBig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA28C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677819357.25349.2556581256490444168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a013688b7dfb0ad31c92e2f7134203b1c386a634bba7ae479f766a6812b549c2
Date: Fri, 09 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746778193
