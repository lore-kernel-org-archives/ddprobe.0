Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F68323373F
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744796394; cv=none; b=WEkX42STNyBguSjwfPMPWPa8F3/tQiRXBir6kF/aug6GCWsXXGYbLB2zlkgWeto4MVubHpArJlAZT7TN3SenSNUeZdBA8+BB4EWO43jiH7UyFczuKxi/9r8H/KnLn/fwV9LdZI4YDG+IB2jgJx6SujO7sNs2kyVKqfTMzgbVCBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744796394; c=relaxed/simple;
	bh=8/+9oZ5wMkKBycqU3QhZzcFewiICRFS9vZdJF2lk+q8=;
	h=To:Subject:From:Message-Id:Date; b=se0Sk8H94V2xlSSAD75pWLtCsZ2G94zrhOHXXk3QZs3JS5/hjq39fi4o+15X2qShAIVlHzIQQl7caBYQgq8ndFjrkgScWtZoUwW1ss52tx7U3leg6pHU3iMM98v3DIClqHfoexzfvx/s9gWa5mtMo4o22QkiBo/Bqn5RtoAPUKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKrP7dmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKrP7dmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DE7C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744796393;
	bh=8/+9oZ5wMkKBycqU3QhZzcFewiICRFS9vZdJF2lk+q8=;
	h=To:Subject:From:Date:From;
	b=KKrP7dmW/6i5zFo5UlkiqjXl9UcnUE8CT41c4pX57AYz9TwYxIDzl7Hi/9ss9OSb9
	 97XOFfKkGoVJK+XJdz6h2lUnVPlUYvGYe6Dj4GNGsFh8PZglGfdgg4nMe0Msr/L7a3
	 r8C9d0m7/WMZZenvIJpw3Fxx1s3AZIFQd8zcYwGR00qmz6wSwYjx5curx5qsy315cI
	 ApAmc2ZNvZRlUb04ahC/pAGkNu2IyYtZTLwcP9WdxKbdPWNiv59ULFXmIMXb3Ux0eH
	 b80aOPmu+snONy1VMwAdbf99EuFoC3m3cIMsJ2WwdKWJFoXJn5MHyn20+NSjs4GyxL
	 cQpNQ2Z1hpBaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B65C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174479639359.28320.4293221151001417317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90cf16b7e5af329783766868cfa4d746b912e16c723d55407e433dc1f72bee3
Date: Wed, 16 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744796393
