Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2998436D51D
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764514974; cv=none; b=b1W2yHwxXKozIuwk1zp9l5SznhNj/MzbhgNEivtJMdhYfoS2Anw7l04+8O4GBdzZzaKBwH1z09DZOZah/SyNHWm+dfJKBkP7QY59Zc/QTBmQkESaMF6Ya30oVdT8F3WeanEVtaOJfAvaUGjtq5p8vR8NAYGZ8g9nHWwURGDP3u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764514974; c=relaxed/simple;
	bh=x6fzsJ7TTlUELBH5z4q7/kBBH60YfVsXQ1Re5jIvQpU=;
	h=To:Subject:From:Message-Id:Date; b=Gb3tG2hYOdSKFdJaBmOugrN5IVpYwbTjQwhsgaTRVOCezNZOMmBn2XLHX+url6y4Y3Dh6nJjWmnFw4kp/+vhW4OHeDV9uo2RPbv5j5InQ5G/2mGmYsqjh8MblGn9mnzxp2enNJOmh5mD1+nTWNPQ3wF3HQNI+cVyEYt7iYwNBtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/pZ4P4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/pZ4P4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB9BC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764514973;
	bh=x6fzsJ7TTlUELBH5z4q7/kBBH60YfVsXQ1Re5jIvQpU=;
	h=To:Subject:From:Date:From;
	b=X/pZ4P4eKoTs6hp/UNEC1FEGMnd96glWuF0f514gx9zxKGVcxx7I7owSupWYrTE+L
	 Ob+ozeU+uLoKL9bS8iLsGdFEzRokjxHEuyiuSjDoWnk6UUFWzf7aew5lAH4nQ9SKMS
	 vIvAwTn1lk28i4TBeRvpz6+DiTinnAtGuC/CAwdKXNCfp6mKb6eziUXRsuLEXV7xpz
	 RW66DFEVUPKlruVqvOE3B45DvMcPzUoPPxmxKzMoeJlgap9E8kILjf5My2Ohjcepzw
	 dRI033qFaPkyYNlZw8ylvkaaKGW0Hi+y8Li9RfPX/vX0EmAKuzJQUKSZ7jLrf09Vfl
	 qr3RBE77fHoNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F73CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451497359.22050.818151627995193815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc1595c2b10bb5bf0c07fb13648576fc679d762ba86c07fb697057e17b86d209
Date: Sun, 30 Nov 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764514973
