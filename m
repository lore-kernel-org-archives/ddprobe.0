Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C45A18DB29
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748928594; cv=none; b=B7SfK7W94jpq1Q7tO/4h30N2sq291/gtGbQZf+yCTZL5uCLp5XmoZH5YFD0+M/WsxZcUkt1uxmwmHfqcNT2OfZ13b/hJ64TRngYNJtPXP7oIrsERhaZJ7jrVvD8RGUKoqp6IZWkCocF1j+ToT/Pk1nT6Zr7q+qgwG6ENW90xE5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748928594; c=relaxed/simple;
	bh=gFL+gMsSxeS7JjO71tbZL6iGDOaHjv0n8446MkeQENQ=;
	h=To:Subject:From:Message-Id:Date; b=A7sOF5MQB3hT6MF3UOFP4VkpKMn3vPQDwWzj062fWhhJJolWbwl4/T314ssSdbHVZJMInxbEhqDkXnn/3Y8AZwjnn4KB1BrZ8Pghs9FRcv0hwlxn9FJ45HYdQWYVaUlEVxxQlsy6bMoGu4f0l/DSLmmw24OLRfEb8CQKpoJaCOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyD3LrQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyD3LrQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EECC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748928593;
	bh=gFL+gMsSxeS7JjO71tbZL6iGDOaHjv0n8446MkeQENQ=;
	h=To:Subject:From:Date:From;
	b=uyD3LrQhGRLngzmOdzIxHsOa4Yh1SxTPnthL1QUghQBTGn4HjJWMPPBEsPI3HU3aG
	 0DaIiWSRT3FzAvo2i0JbRDaUJwjZsZ5BLxySLqedurG8qZFF5b28x9yl+GIhkdH7/Q
	 jdLL/b8wQ/atY9sPHj/400wMNOMIWQ4JYgDhtyHHkyRSixF07ikP4m9XtDpbf2TNcD
	 fT/5kHVvH1BdhR7sF14xeOXxEkClcMSjDOCnf3/+rbvLVyDxKm3h23p2TRCuje1ZLj
	 P3Wtj4PdLbCtzNPvCNRDFq9gJOj+5g3MEdyeArvIQikaW4o/NhR84/4jL0NOkiZlx2
	 14K3jWqXcmKuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91791C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892859358.21440.11638665239270928827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3229ba1e76e04b3069be3034d9d7d923c1643116ef288a5f349847701bcb01f
Date: Tue, 03 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748928593
