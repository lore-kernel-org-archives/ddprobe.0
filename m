Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5BF354AC4
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771332294; cv=none; b=aRS9NY86X89EIkUPknZ6948PhAmn8m54DfeJknmXr/bPgYTVFurZJEUh7gS8CflYgCx9Dy15x5AGWbw+x6+Vda/9oLdUnu6gBb/ssYMxXSy/DDyUICrmWMXNQZrRD/YexqQdDrCPFIqLtGN1dw5FJpvp076opz6p/TJZumLfr/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771332294; c=relaxed/simple;
	bh=k4gN6fSF6zvTgwrJH8ClFDHSGDmni7VdzyD9IBvEQlA=;
	h=To:Subject:From:Message-Id:Date; b=rzhiXF0+H94Z5SjG5uMy9fogYvrtZ8ZukO7EyDcAX4fERGigrnmIV/3VVL546aiwnZ5Q2UCwJAQvxA5JQXjMZaoHYVU3obpA0yn5WGUqkZmAr7j/+0v328gtt9DteAw3ravCjmU7a5gcqyOqpIsk3Sui8100uIvufc7/RZKBAmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7uYK6hf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7uYK6hf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6842C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771332293;
	bh=k4gN6fSF6zvTgwrJH8ClFDHSGDmni7VdzyD9IBvEQlA=;
	h=To:Subject:From:Date:From;
	b=O7uYK6hfFZTqt3OlsoEFJvIpofp0RrcCE4oS2W4S7Ff3WvT8EIjFBikEPp/yJzwqB
	 Tp0Rukj+eh59j98W8R+GZD+O0jRaFy9e35wvkJ3k1ZL6thga89yA+TPSwK6D2z11S6
	 LS8nhKKkc43wKcN6XqO0aDADh+0bvBP8B42nDJDCSmLwl5PIy1/xJAvJV6e3pvSnoC
	 UyUds4gtP8ZEfqIBN4XZxQxhzarNhJSmcYCsHmXmIsGla5faNnW+7U7koMC164Dht5
	 0rAVIrz4/gOQ2RRuaQ64T7wNKeMpmp5E+Kj4OimZ9oTI24XCafhy+gRjDsEHhXSDuk
	 9PhAGZg4wpu5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C95E6816B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177133229358.1168.11435970575796243433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a9e43687881e6be8eecbdbb1f9afdbe8edd4da6e766a13c291e7743d40aa47
Date: Tue, 17 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771332293
