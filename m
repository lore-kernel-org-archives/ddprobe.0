Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB51143C67
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 05:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719294203; cv=none; b=KPxDR+CuX4nrLKnOcXT3ItccwKku0FpXBYCzCwwZ/L6OeV5OlvyzMeTYU1nZlRJryXEZbDAPFV1Cd9xWFzvaslQP5WrZYpFNjqkiyKh/fr0sLImcBAL3Zq35clZULWjqpZJYmtLLJUWr8RR8WTARh5/OwCcji4wNLv/jsrFn0SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719294203; c=relaxed/simple;
	bh=gxQJnFmF2kYmjpLyf0NE4/kz08mGVwYQluCHi2oeU38=;
	h=To:Subject:From:Message-Id:Date; b=bwSH423UScqalH4vW2dL+8phBTQyZgRO4mcF8pv7iCnlVY70MYAYyeG6sNzHBpcjGoRKvHkbbB1u9YbMxJsV89f5XAf+AEp7wiWUgqIGcRuyC7DKbWyXMInJtPYp76Id4jVt2uWlpxKdi0V1aDroat9SjJw7WWPCkA+dfgmkIVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWhJJEgU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWhJJEgU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1564C32789
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 05:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719294202;
	bh=gxQJnFmF2kYmjpLyf0NE4/kz08mGVwYQluCHi2oeU38=;
	h=To:Subject:From:Date:From;
	b=ZWhJJEgUpBgUGoSMgAV/vX3agvCRQR+mU1SguDDh2yRDzuW7qtVF2mlRjSRKNCTLc
	 7F2Bu5alCZvOiCPQHdLziLIEqCpidHoVsgmBgj/dZ0QJw9ztWwnztjj8iV4bqVuQAc
	 CV1fq5YNodN88h6gH/D5NRhRhWO6F8s6J6XuxlXT7GIffY96HNEXJxXcN1p7Q1eLrR
	 P16T72ZU+ZxdjGbgJg2pGMLjfp2aHKbOnAGilESoDppd3xa7AkFX2ZnZohRWErhZD+
	 +k1GbxrsYTTF1WMX4vYRGkOXFA3m5KruXxu4XzBSmkuFu6pOXC+gGMwxYFlTWmZLKN
	 ZNzFjGz03z6zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD571C3064D
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 05:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171929420275.16229.11221630938392760374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14af98fb45ca4ce009bab4168b1bae3c198bb5f653f84e9c047fcadf44aaec8
Date: Tue, 25 Jun 2024 05:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719294202
