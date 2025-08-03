Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E9448CFC
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754227194; cv=none; b=b/QnGgEo28bcDBDOM1VAm9TJH81BCeyIdi7ZxDd5HlYvpRNcAaQL7s8EODQ5CT2mgGs5EGLtyDtpKG/Kz3fCqil/Bkp5pcl1Ys9YiW9DCMt72qnLLmjuIAuA0zRWi20g+gOn5p/OlseQwDoeQMMYDJdOEOaxC7zIxnS3DZfjl8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754227194; c=relaxed/simple;
	bh=RZSYET1OjkVrghyOkg8F/dJs0BysOGEe8sZQeUeyjOE=;
	h=To:Subject:From:Message-Id:Date; b=cBT0lKRr1PQSeXt5XQvGlcIViql0WmOX5iNDrS9YNm0zTHhz/KaYvWSchcWvXBtvg+9+J/ExGp1b/naPj0PtzY3rVgrwvDv2v/WMSAk9RXmV2jS4oogY/Pg/E/akrK9MuT/TUVdkW8oBFjIURWkG1KwgTiGg5L8Gh7KhBZGn2Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rxctdl4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rxctdl4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DCCC4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754227193;
	bh=RZSYET1OjkVrghyOkg8F/dJs0BysOGEe8sZQeUeyjOE=;
	h=To:Subject:From:Date:From;
	b=Rxctdl4JWAH3OJpnkoUneW8qFXcHFyIEw8yLF5n73jIV8Cij+LvbkpKRkM/zjsjrf
	 /fNLfnoqKGK4cCDPlcWoCEjOmn0U5sLyFiLoE15NzRYTN4mcUdltjIMNiF1sEIaZ7a
	 6Gvu8R8CBibl/kWgF1ZGAZYrB5/p8QW4mDk7csEYw7rJ0Tt4UQ17fukUrv1qHOqDxS
	 4uJSevnPnNK2+iqJg28/JYbEfc42F4hxh7vnP4+DLUpDaa6r+k/5Au+w/ACBedFb2i
	 j25WRiuxhTqV5IgFO5j/6MQ5EIXrwvkFjAYUJwKVWdZwHz0XJxRyGG/rG8B7M9c0BP
	 wgYGPaI/p4PUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A592C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175422719361.25321.13524268039043055458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ee14f3834036fe4ee07bcd6fb08f2b713f4efe964c2e072359a073ca6a170b
Date: Sun, 03 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754227193
