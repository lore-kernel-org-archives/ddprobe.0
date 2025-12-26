Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEB730EF66
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766789634; cv=none; b=Opxei6MnHr7n7XSJ3LnVQfqw3Imf2dhdFRluGHoFqaa774NjkfN3SZ3f9V7JzEZbZ4zSfgxo0/cLdQ23tzbw9KrVpYjJ/iWvJHi+uS9srJWTHt/CIz3XTfsDkSGlu1DSqeXvLaEj+SkD57+15Y8m30fo+67YZWwtIraZa9nhoFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766789634; c=relaxed/simple;
	bh=sVAAUrO13gfdztHZ5yH1OzNcLjADzhi5DJY4Y6SwDq4=;
	h=To:Subject:From:Message-Id:Date; b=CTMHW2Mwex7FLZ8vqqeVyv3mYZYti2ieSBeclUWu33BsDFTqMd/AeWIBR71QJEZ6kjUHWPcpCky6/wOhbQb2Rsvt6LXU49xEVJItWUnprVLLsDaV/k8BQGFtaXdCowpV9W1Y1/Y57C3JrPB2IohY6SBtky9VRve0j1vCNysOQ4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyxZhWRU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyxZhWRU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5085C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766789633;
	bh=sVAAUrO13gfdztHZ5yH1OzNcLjADzhi5DJY4Y6SwDq4=;
	h=To:Subject:From:Date:From;
	b=AyxZhWRU6/KHsFBz7cjwesy8wc3TFPUvAdUy+UmO2FUrhaE/JZnVvKgvg+hMm2uD/
	 eWTA3Tv59iXTVSyCf5I+Tct1+R4E7Z9bmg5x0rJPSF2nzT8tXC8z1rLaDunKjOQ2+L
	 hDjX1yd9IImWbPrUdQbisMR6fTJIWbrX8u9exq8Y8ReZbkszf0MHBz75hKLQjAGoGB
	 oJOIVem2SduY0IYGhlGAnDQ0hGM/3pA2P5GW8uGId42FWnZDdODnhKbpN++HZbYGRj
	 F4tO2q26KjVRxdWGcfOnC+O05TR8gmDFiqzdwmKt3S84CedCcPntqjxwqs3RuKykBu
	 a0Byp5/vQFBKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB8E8FDBA
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678963358.32372.8048695575026170362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f8d51de72d1272b28625ff805cf65f9337e6a3812221b50c5dec2b03c6ee393
Date: Fri, 26 Dec 2025 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766789633
