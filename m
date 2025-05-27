Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5204923AD
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748321994; cv=none; b=FPoGAQLnd5I8hR72OjQ2aUuCEC057QRcpZsoKHJ7BOXFtXXVs2LKJChIU10MGRcpOMhRBxFj/sXAPklhjORfQb4hO8qDMNGBoC77K9ygfBN6qV1B9oAyK2zxj74Y4FSGaN+Yc0SO6F7v1PZ+mnmnjxGn6Bszb2KBYc3zdsTsoDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748321994; c=relaxed/simple;
	bh=cXOJ+8YvRNEi9t4xKKbwySWtWyyT5QOQ7BSIqSOcgUU=;
	h=To:Subject:From:Message-Id:Date; b=IFx9S+Fj+aGpse/mkToymn3VCTGlNisIuekNoZmTpoVuiVPcz6mcGm+oOkienG8aQi625XfVCCSc0e2cFo4WTnca3nQp6v6LJeVaRdmJfHDR7CsNOZN7qCOZXOZ5H2OdLWUvtjK73JvUdve7wKYjXIJz0IsHR2fKvKGrmibpbH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRzohrzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRzohrzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCA9C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748321993;
	bh=cXOJ+8YvRNEi9t4xKKbwySWtWyyT5QOQ7BSIqSOcgUU=;
	h=To:Subject:From:Date:From;
	b=KRzohrzKmftSvGPmnto74XOfQTr5jydIRwJmv6frNsYE3kWC0QQqpedvChH03xrZN
	 bsTvP7m9f91WYb7+qNSMybV4AV79gDT/s0lxZVsMYOB/V5tkBDYMeq/kxAzPkQ2A0t
	 VSercwV9guZJ5tRlLkmzB0YgW3RLpuE9veCPLhgIZMm/bDy04RN6RsE9UQM7byn0u7
	 2M/tKDLQiuVHSlRE8w/GQNt9NCP9E6khtjAtx6I/udS0YuEaE8lbgBQeq0ZEVcOIml
	 X5HEJTzOPn7qpYKNl1BbDKzC7jNVBQRVVemE6OPaTa0qCPp2JeusinsBaEMNWgWkLO
	 IJUQyzL3v20pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F60CC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832199357.27714.14770625631024082991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47e6cdebbc6ae4a3d83f6fd8cfd61692e8cc1751fcd0734bcf488e4ae0c3b60
Date: Tue, 27 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748321993
