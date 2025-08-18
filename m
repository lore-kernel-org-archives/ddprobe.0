Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF1131771E
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755494394; cv=none; b=ssTqG+g0GIQ2XdP5ytQsGZUqUvloy4CRA4OHl7vhzN+CUX1+K4s6Us5StX4FL9jbsgUbDiTbmqtPLxzHXN44aSfU+F4+Wiu6n/+LZRKJ5d9ZA275zirnVFgTMNrw+32sUonu3PZa3lW8O9E8Cg7xmAiW4rBl8zxH6lTdRJA4ZiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755494394; c=relaxed/simple;
	bh=C5X+mGg3ZRZFid1b2HOTX8iJe1LpCvk/pcwyKU55CpM=;
	h=To:Subject:From:Message-Id:Date; b=USW+CMTgWiSK6nWr79pPD+fcJ6Na0ZNfff/FyzxGNhpXy5rGMnQV3Xcg/rCDppppmk7YpWhBcqi91Aj1R7TXaF3bWqCOaLPYaHy1rClcB871mJu4jKLapJlI7sbEVxv1uxx1RCOXmsjbdqdcILL5GWxpZM1e1JYUrdvG5td7zww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5f2RgQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5f2RgQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDC1C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755494393;
	bh=C5X+mGg3ZRZFid1b2HOTX8iJe1LpCvk/pcwyKU55CpM=;
	h=To:Subject:From:Date:From;
	b=h5f2RgQWTl1WbSD3emsRacwFT9IujFo3kWONJzSDHPHhsGaWeFnGZAP4gpqUqVeYS
	 17a8izpUTyxOnCF9OyD/7SrZxqgGN2+wiY12TNZszNIkEpgUZxYkuWqXwCvVY2N6Js
	 al+83WHrYeACPZZKBPzUvTXvzY84cB+ImhgQ2UbBm93cWAfhW2xd2ovae+NLmryG8v
	 m1ZQB89y3swkOQADAIiq9Lm/RP/lJZzw82fvnLMJWcMsb54k5U97BlGdXfQD7Njhca
	 rmWI38ibzCBoYPCWP+c9dLvxWXVFUpqB00xah1W87+bd3RqTO3YdHIpm9yD3oV/c+D
	 UBy/2oCPT87sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E543CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549439357.17852.3145261167431268222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0eca8af935296cfecc5b8c60ea857751c7e652a11bf92dde3e528e589df5df
Date: Mon, 18 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755494393
