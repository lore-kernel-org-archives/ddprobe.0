Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2359013AD26
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755427794; cv=none; b=lZsMLbaLIOpfLPznAqcCeQR9Dv8mBBnkCskhR8cuQnpJ3ms3k2XdUX6GKMaZmLOWwfOuvzmjlZ+50odjtHDNPG2rDCNdKv58YJXF7Dw3ctBfG6q5wViAbCq6hYy7ONY+KPB+LC31IUx0ceIT4Nft2TND7kcEmlfqtHhVSayJQTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755427794; c=relaxed/simple;
	bh=PhdX4YwJ6TIp4w5sHK6F05qX336cSgpn4inuYREshq8=;
	h=To:Subject:From:Message-Id:Date; b=aWx7/KaLTwvUU1uJB0b85Uv7iyYabi9eErkgielVj8LlSNV0G/gBPn5oHKYdFDulA1OIsvTTtdc1qOoSUJliB7gMe4qjoNIUEwWctRjSXEAutNpt6jsMl3DxFaaXJqVinPe+Pm0WcA9rBvX44PqbRKrM2xqWZhzKLF2ifj7QWu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWS5DJex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWS5DJex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4F7C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755427793;
	bh=PhdX4YwJ6TIp4w5sHK6F05qX336cSgpn4inuYREshq8=;
	h=To:Subject:From:Date:From;
	b=RWS5DJex92kxu0CLOdnhmGaS6tXgxh0zFwP4eziAIhM0cbuExIGWvjz0ayrZe6pqt
	 Akm3BbY/jiJLdTSMqKdqkwfFTh8+wvwokSnL6u8zjcrqK3qHNrhBmEiv01+yIJr6tv
	 RHrF+U+SW3W4fRJpsAjKNWmSlWrFpb8Xc5Kz3psQryf4JB/pEkqJtgJVOwcXTsWtZc
	 UDnkjvvFkWOc3NWgrYCbWWueE1Rs6cV1Zl3uWXnxf99J8z1o+RfDlu2c2ovGl+IOTL
	 hrXiBoN7OJWTpO2vUVEFeQlyPKLpjXY3EHnwvF6yRZEuBdFRUCyr7hrTQKxo9swaK5
	 N8f1rFXAL/Aqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C1FCA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175542779357.16153.3075797873926601429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4caab127f72dda7df873da0ca8b8d95280129f103f99b0cd9228e534f6d87cb1
Date: Sun, 17 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755427793
