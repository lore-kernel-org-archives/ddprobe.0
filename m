Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3471BCA0F
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734736554; cv=none; b=ptQpsp/Z26zLTojkbLc7ODQitucxHy6SlDTWzrKqCFZBqJSDQiQAg9yZgjflG1109yMBVzFjDNJRpBpq+xvd3idgzn8OnDO1fkDE0IOjJxu6NNu0Z34xqxPuEPEOLt3jycSgLktP0PzIFq/WuYhyUiBFgO6t0q9K+DKpEF7dG58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734736554; c=relaxed/simple;
	bh=IEIJasN79aqvwD8FnG5j0l28GMUlD7Eg/v/ettJ2Eko=;
	h=To:Subject:From:Message-Id:Date; b=jd5LM8bHFk9E2IFEvCEKfT6Tof3pVG+8MfaXVdB1WOLchYiJWkGAXM5FWf0uGVEZKy15RSIKbOTy4INWJZPU1GefaizA+wVUblx2scM+/aoYMFJnal6XCNqK2ZoSQ1hOakt/vSSeyeglpxOnT1DfHJxHrNUnngJvhWeiOrpS2gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOAApYyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOAApYyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6D8C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734736553;
	bh=IEIJasN79aqvwD8FnG5j0l28GMUlD7Eg/v/ettJ2Eko=;
	h=To:Subject:From:Date:From;
	b=QOAApYywbOGS7D60SG1VKkAVw/sDfIYIW6rxZWVYUFCodgTc36Dgu9notJNyEeDQx
	 +4BPibmfIAQ/JdPb3vXU1pY87VTRrls+N4NdCEx5ck3fpErl6g4pc/1Os/HOBk44Yu
	 mPhdbtRzKGh0oKxDYJNuO7kplSOH7xdCQPFjlt6MOqCXvaaS0UcIWqNjWDRyXevOuO
	 C2hjuw/3cMxHmL2WMmY5i9zeq5LLpMhEESjK81RBGtD6d0H5l/o8eaSCuSuR0tUARM
	 Egky/f2Jz1zZBvVWDqAnohCuSjIgZ+z0ip9l47MJaiC9cbfVBZrHpuISYfqvcSnrAZ
	 zkPvpVzoc/IXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AB3E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173473655359.11475.4290843150366095829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef2ad8bbb8cee523509e74cabbf3ea7c1d18ef4bdcc2f0d0d9c724de600b650
Date: Fri, 20 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734736553
