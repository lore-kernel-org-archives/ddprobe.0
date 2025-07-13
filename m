Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C214400
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752385194; cv=none; b=k78hz7/lRy5qvhy5b3IhrkexPyWqmExEKQvUpex7j7670NQuUr6GQZQQ9Fi00/Q9FrGeFGOVbhqZffCei2JBEz3UUnd/ihrkP08FLAEaswHJZwnRIgHrN7+0wPc4q0TVAQ/WBdpOblfzlvM/MVybmgub+BxrKnBzlWa0YcSKlCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752385194; c=relaxed/simple;
	bh=SCFqyU5zr6YppuzEYRZIdTCj00pfE+jghtBT+QgP6gA=;
	h=To:Subject:From:Message-Id:Date; b=ivFtKwRkSFjNMo6Lc331GFGIp2Di6qO8mTwGzor4J+87alcdwB8r0deqBf9wpTOugMJ65Hya3b0B3W3xNfXYocAfY+pZzV9OsmYm7Vvrxss3TmQVAgz6LdZGOQtvwezG9rv0U70eMH4XJWD1vzFO3FN6YXfNSBOmiTS2qjekFLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlXj5sWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlXj5sWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2999C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752385193;
	bh=SCFqyU5zr6YppuzEYRZIdTCj00pfE+jghtBT+QgP6gA=;
	h=To:Subject:From:Date:From;
	b=XlXj5sWBKNOG6jSQocn4h1RQkFB23VGfDKBjWDn32RZEStP7gZx4/y8mTzWIbDhUC
	 XG40dQUT5McV49KPzLrSrDlSWOt0oMpYfwZrTes5Wn8wBYpRjVqH+QN3Pz3IsvIl89
	 g/6a0tlPQtzRd6DDQXX2eEavuNQcVSFcj/Sl797hBUuOza/xMIvY+Dg6oZ2RH9XFZr
	 ep9ZdQ3yEKLa7Jsbdxyw88BVqPpopwxbHKZuS+x5Sr/znfvFs5PtWOuFtPPdNUBWYh
	 psdRKaxN8rlWv3W1+//45WFMQnzFEZsGyqCKK0AIKZaVHbjNpqp8Zqw0PgMVFQ9cgz
	 02psBBHakZZlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EF1C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238519357.31015.7005529859829833720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d82276a118a41b5e02a2ee28d3ef07259c86624e5fba0acdc47397d3d7fa6d5
Date: Sun, 13 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752385193
