Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3276E308F0F
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755507596; cv=none; b=uGmHljA6YOe/LYqiTUS7eVpFj8NRUzxebLszbu3I0bs+qTc0fXMDEM2tblk48VX1MFQ+VtjY6lf8pbTDMZ2t4/XpJ3xHET02iJVUFUlGXfLzPZcMWG+xLRWSk+ZlGsizHMwTVcJIv1uqOAmfUn5vodc+Tw6tEy7yu+W1LCKgL4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755507596; c=relaxed/simple;
	bh=hoitX5NKWD/OxvQPPeG9hR8ag2xyw3SnWAyttwCE/d4=;
	h=To:Subject:From:Message-Id:Date; b=BmCf2mKWnCZ+NECOBYMhEi5n8OxV4iRP4hH2C+rgxJb6qHQuHwZ9RgPCxpMSpviERklk0DbaLCHBBgHU/OLnGfZGVuDXeyl0QfV/I3VKh+VNeT58rHPaY4gP07s067iw7yvfaatnt+4EzTloaueGRidbOElKbnoaV2sserSMRXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sijuI3Ru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sijuI3Ru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A049CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755507593;
	bh=hoitX5NKWD/OxvQPPeG9hR8ag2xyw3SnWAyttwCE/d4=;
	h=To:Subject:From:Date:From;
	b=sijuI3RuJXjKs3oZxpfVbfUBqzsGObtZibqjVgNE9zio3T+CmEASHPaWpH/oPxl98
	 TdoIMfRGB3IaUZm/ZrfpwKO/WDLD+y0WvJGBcduEIHPJVR9kqyIZmQ8y03QuP+0rIz
	 dTiy7L2r3DXvsDYIz8R9Dd7+PQvzEIrWNcWvF7Jq2cx3gwKiQcQxTsNo3+JrwGIFAB
	 49FT0BgLHkuHv7b6MpqZvS8hpSIELxGO/VEBqITqy7pZb95auqBf+FzrtDZHyBlFk4
	 CeoMCKSxEFrZ7qmOunrgnH/5QYysgAOytfcgKDvtKwQg7pzTP3T5RqXqjUVVPBDtjd
	 SkU51npOZQnZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F13BCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550759357.15594.10884168472757062514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89fc9ab5948d2c4e79848a7b2f1a4cee2fd8c856876043614ead828f6f89944
Date: Mon, 18 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755507593
