Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B5E3093C3
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771660494; cv=none; b=emF6R7yB+pT0uMIrGEg0RfJs+FLCdKSHUR2+R0uPAfIENfPBBLOTDNkZvJ2UpMVpr9VW7kNJmB692eKLyMBK1ZrEzjqf/1moHVNThTUujtgXjSY/U5GLEH+xL4TqXM7vbz76jFhlML+hP9ti9VzdWIYaG0Xevtb7gJVWKEyw8zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771660494; c=relaxed/simple;
	bh=395WkHXXDHo/m0l3gr/ymyt27ydquJJikQ6ZdwosW1E=;
	h=To:Subject:From:Message-Id:Date; b=i102GMbNLfGEZS/CCUUIVhnVOCtsC2u0VUOjsLuazaG+qyhtR7GSYXJzlTqDbbliQnZVjCoPt2WLahPaVkQFyVTdZnPRi4Bckk9/0OnStiWMelQfroepB6a0ZmTcmKD/T+Yc8Mu+YXKx9NaNdPhgB0iHxHMJDSZOpudoj21RgeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4TbuO6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4TbuO6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FB0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771660493;
	bh=395WkHXXDHo/m0l3gr/ymyt27ydquJJikQ6ZdwosW1E=;
	h=To:Subject:From:Date:From;
	b=C4TbuO6BLQRJfgKunEO6K0C3HrXGa56pGborBnu9w/GyxhvAhCmKD9ez6RHwi/Bga
	 Bo++KaKzBV0wsANGaWyO9RXM2mrr3Ry/RsX5DrlBR39KV6KHaAuVUdyCQ7zyqW36aZ
	 ec9Vl25iQZ5vF07Es3jvfZ29fZhzRcLwNIGG2WLARKbPnuDnVgiZYEUuTSST8jK6gn
	 T8yOXaQTHv6dudk84QZDkOYwI+Qyf6ipKY9sCyJDYVCSr/0qZJBJjSEdF3fX/uB5tQ
	 NfULfd+EMv+iKlIPZHuBEX2GLfAAM5j/tXpkexcAKjtblqZbKliNA/lK/msTngwy/a
	 0yzASNsvKzgww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD75C61DC4
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177166049362.27169.13735089399500096785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88db4f818b3947408b7f56c1fc5146616f262b7e820b8686ec2a577c01f5d881
Date: Sat, 21 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771660493
