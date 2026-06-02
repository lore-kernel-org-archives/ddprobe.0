Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDB033D4E5
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780368274; cv=none; b=TuQ1tqJ6mVcscpGRb9ILnaRquI3+zVBkQkoGdS5rXZs4qrwvZDOU/7wIjiKT9wGfcwRdFHUx0CopQbZVap63RcrFr74mtwQluFGlMD5BddiSqlF/CfjPpRCI/ws1B3XLslMXxWdIGnVaF/nLzc8FM8gE6V471ki2P0DaaqRiipM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780368274; c=relaxed/simple;
	bh=odF7vTc3poyvEI+p5SPOXWgfS47vFOkoOc7AQi6qYF0=;
	h=To:Subject:From:Message-Id:Date; b=PffbMsy/wsL6LRDyl4P6ytdy5CsPmQctH7zl2p571unKf6Zm/xgt2lPZjFsxc4p0hx0aCYKGZWONkgVwZ1yj+hjMg2Ao65VqMQzRg7bVUWzi0WzoG/3uf3QXc4K4j7ZeIlgm3RPBaQKqp0+qvHYYpSiCZqt9nMxUfAUoJUVFKF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZLLPvd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZLLPvd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9183C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780368273;
	bh=odF7vTc3poyvEI+p5SPOXWgfS47vFOkoOc7AQi6qYF0=;
	h=To:Subject:From:Date:From;
	b=MZLLPvd8nZD1JL9UTr2l+P5qzEYFlAqBpVk+ABSu98iZqKC6MoLDkawU16nHjzwOQ
	 11OjPRfhI87ZgKgP+K9xHT0e/DBd298igkMxm7Hu3Sol042dsGZVyPK+YuqwAKbvVZ
	 QulXRny4qp5CpUU2E+DNTbeL4EQeGj3umnSenYZB91UR73OvNCqIdT+UXweHBZwYT4
	 tfbGZS5W+j2MOCDUvbSLiHMWQ/tIbmx8o/qP57pd/HBnqBeJyM72OZ1HPYYRoEzmaE
	 bVjWdzM5rkTQP1w7tVPu0H2dGjA6B4Fax2GIj3fP3s89kURjQ3ACI364irGmgQNmLi
	 cbiQR/iOoVTQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4F6CD6E55
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178036827368.6546.3112826619633313976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e4962dc203891efdb441aefa0b09dd952b2f2d82f7f9e1e9a4141e6a079449
Date: Tue, 02 Jun 2026 02:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780368273
