Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079A432F741
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757526595; cv=none; b=eg82XSKCxlvBOIBGekaP4NP5g1VqEYHIqq0QouP/ZJwsBihnCpjGNGyBfQ6zMM7Ej/8TY27bGvZIvfY0CY2X49Ruo4vO7SJr1PfXXQEC+RRDZ6pzZGMubajTf6dUv/7jsgx9bVT8lTtUfqUlZMEDMZQekV7/K0StzK5xuHZ40Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757526595; c=relaxed/simple;
	bh=uy9Q1IV+kxQ8Rd+NTs03vMY2XPtKMZp/IVJ7JsRzcuk=;
	h=To:Subject:From:Message-Id:Date; b=dBezYddzoAi94zwUTMWqaNkeq8dVVrmGClvVamPRJM1Lwuqd4UD8A14/tfkob5G7SxSrJCfrlna27Lf3vAAzjAlf9V+0NiTwvV0NS3v3p++DQj/B+64NdynV/AWUw5zv3kOuuybNuJPQDoEfRIGYuzHQlQZ4lk23jAUZC9EdGOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHnTXhQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHnTXhQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA9EC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757526593;
	bh=uy9Q1IV+kxQ8Rd+NTs03vMY2XPtKMZp/IVJ7JsRzcuk=;
	h=To:Subject:From:Date:From;
	b=DHnTXhQ2pDxunuMEX1JAdxibSlbDp7M+Y8xMHdpBCCUmtVkdUEUuRn/1kyfd5N1hc
	 oAZcHNkLnxcQqJEOoPFHyIOvV9KmoGXMg0ahv4/MVM8+XBjfC6Vlluiu4gxJTAIlH+
	 WImXl1/j7SATbb26quAIB13BvwxpF+uTwwuXNEocymHjFKRZBK7O+GoL+b2vZNUmDO
	 exC5HULiWfyanTVV1dkdZALMGM/6CwXmZMLJhVIWksd5aH2zy1MHJugwDPW7Zy+oIh
	 /Gq9fn8vz8O/upbk3cx3rA5rbTReyRbRo59V+ExfVkEg0W759brtQFa7hBxd0QFk0F
	 I9HxtSHoKeJ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE25CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175752659357.11137.5008633708820046227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f124a4976c2fee13f552c6114d82402d1e484f6ae82b03ab6d61ab88e792cae
Date: Wed, 10 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757526593
