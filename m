Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5E322248A0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764994973; cv=none; b=e9ZkyceXkjo2c1DbT3fyKItaYcqoy9AvM4NTPUb2DJwSlIpLyu9AjGDKAsGBaCytc2mWiFqDRtX/IVrY5pxqe+zyQxovxyP06yibx0IyKMlaNNgFuJWBJ4eg/flFXDi+Zb0SQ+zf3jQha3nNKRl4E2+Z+It8ukyaoIPVmfxEETg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764994973; c=relaxed/simple;
	bh=xFmwu1XJxSoi1E+APo/zWs6GuKJk/PPN7r0vh1FJxfc=;
	h=To:Subject:From:Message-Id:Date; b=GoL4BIpEhMTEPgkT4n0O2XTWv2rkFmbth22HYUmYmcnU2E34C7nf+eHgSgeOc6iu365D2g+pvZkKf2B6rYJW9k4Dopo7QXT3+TaI/rc1KHQz3PlxJSl//YnoERUtBK3MVL95YGth3ozlwxa+EfRFbYaiQ1s9sTTO/0joUjuWiRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6qdb3B/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6qdb3B/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A06C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764994973;
	bh=xFmwu1XJxSoi1E+APo/zWs6GuKJk/PPN7r0vh1FJxfc=;
	h=To:Subject:From:Date:From;
	b=k6qdb3B/2nQWPhdibAs/75zAV79QoY3iWjvYys8al3zTEJimB8fP4H8e+Kp3SIyO9
	 154YuggZl4Qzt6mhvvYu9m3wHM6iiGFx8LOYTZmEkhiZab58wepA7NxK2zoAWs8/U9
	 gDpUq/1gO2sfFzQYgETbExa+CyvFtgIp8IbWDcA8FS+3uSYxOxEeFbYnGHM9/VxwMJ
	 3VaxWRMabPGf+A9HqaKB3htdYIy+yMEve9hOHRK3coJBunhTzWTEO/8GW2YSGNoldh
	 5y9g2nj+Tk3ghbgdB0Ftu0NDdYUxnHhy9XOsMbvqQntkUOyawuDPvcEEIbyRjttaSF
	 vAkS4gGpHcrmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97550D3ABF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499497360.17137.7456087814451991489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d94fa46f78ed50b33faaade7405f3b122594e376ae370da19e8db22d13da792
Date: Sat, 06 Dec 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764994973
