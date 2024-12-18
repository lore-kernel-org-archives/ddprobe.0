Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222B927726
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734519954; cv=none; b=SuKxFqOg5pxSavGKojBoDNSOVOOPopTJdMOUAYSxqUV5cibkHAYgmD9b6IL1fUqEN7jAh3nQTE2QheIpgCaPlPsaRDk7Tn3mfWORjYSQehRLYWXsw5oii5moXhZu5JyKaZolsJnQuCRT+5U6Z02R0ZHD0YGbhSETCDbHIzt2jag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734519954; c=relaxed/simple;
	bh=e/yZL9i+Az4Es4f7hxMqSPFx1QShYZ6tP9fmCzIWcGw=;
	h=To:Subject:From:Message-Id:Date; b=hvKdqG7fE8tVJJPV6o1n7ccO0WdUCWCz1Jn9MKaVuyl2KD3nuUU9HKCHtLfzu7hc2+GcXSvil5VmQRjbvS4pz5K1YPmc9cE8zi/5+iLfqUU+S/0HH1xMShpTESE2wNJ/2k81+P787QdoLIEWTw7sQQpn850wVodaQcTjbjoa2SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xi1Jw1h4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xi1Jw1h4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33DFC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734519953;
	bh=e/yZL9i+Az4Es4f7hxMqSPFx1QShYZ6tP9fmCzIWcGw=;
	h=To:Subject:From:Date:From;
	b=Xi1Jw1h4wbTfVVyJs3fbWg2qlw/cDjZG8LPHGLptKMV+Z1niHeBrp532vJNiDrEfi
	 YGmAWyJ2i7oQNUqNMBWVJ6sZhjdXhyz4hUAjNlfDzViWQPblwM9lXDBLzwnAXWKatG
	 uz4HAo2B8R/jBwzPD2GxiJdwk7BW0vG2rL5avga6f5EqheMq6cW2NcWrU4fGw9RRgB
	 QhmMsdMMY98k9MdOeBeo3Zcs3WU/FLwxr0Fa/7UHwhNJd8M32ea9omtMlQXryWyMfX
	 9jvPBwTN0NiZO4uziwuwQOSuFXHV0K3o0q58rQrpZA0mqKRvC15fZx6JizRpm/PyS3
	 S+cnMzBvNfuIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB4FE77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173451995358.22718.5223358865191872092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1eabbc80cf84b6138ff54c9d53fa249a2d32153d1639cbbbb9ff10862cf3d63
Date: Wed, 18 Dec 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734519953
