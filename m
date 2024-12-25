Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233E254670
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735112154; cv=none; b=lJqi9QtNg9xlCr+NdKpPKS+uSsYuxv4K0ecRZlKc/Afu6z81ZcV/NcD6dEl865rSpMmC5Q+cpJxTOftdtuuAKi0XlDc6LQ70Kx3Sgoj/xkdFeD0nEvi/qIC4PUoIUGMeKOzfPq1FWnr2RfsuL0LXZwOsA+GZzIGNTedxiUUD6d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735112154; c=relaxed/simple;
	bh=lfRr8U32mVKOc6xV4fSVNVBYaiQl4FS8j9d/YrQNmt4=;
	h=To:Subject:From:Message-Id:Date; b=nZg5KZx477XzwoEdMwczy6txCLQo0bEaDJHFMTnQRWF+hMFWYjT7YE+lGSwdiojlrdBUEjAXx1YCPmv6mdVmuArWA0cFyoQ36z/EbUtetnhUX9t/6GUxVIi/E2RJG1Tw9Uq3r8YQrC7GV0g9TzUXbEF/zkR3aUtfmckMauC+XKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1i70+ym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1i70+ym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC7AC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735112153;
	bh=lfRr8U32mVKOc6xV4fSVNVBYaiQl4FS8j9d/YrQNmt4=;
	h=To:Subject:From:Date:From;
	b=M1i70+ym8hqOozIbBRxVs9smheAjnWv81pq/HRotkwWh3g2GmwIMAJPxfWr5JTrZE
	 sieUsD+pR6nSYxV+V9en0WSP77PBtLgz4jbBMqk5Yy0GuUYKTkyOC5PVt1Mdz75sVN
	 ak9KIlh0EH1Ullnjz/ai1gnP5sDtb6+myq89PShZgZZDt1KA9pqTWm1xXWfK1Ey08W
	 0CliNllYeo70ZuA4ZvmoyYxlicM9KPZ4vvNRNqbBGTRHt+cJ2KeOQ6iBSfaDmyT2xz
	 6AvOuEN+BTrPN3ziiWYewcIg38xRWFNHedMNIEVWM+gNuo0kU8ONAgmNWW0RVLrGPQ
	 fzkoyh4hQq3zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B28E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173511215361.10907.17383689293143031882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66e1dfe1b11e9d7bc1c6779b51609c3174f8f62b0ee21342eff5e1ba4555216
Date: Wed, 25 Dec 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735112153
