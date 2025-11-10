Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D9E31A81B
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762789194; cv=none; b=ug8lqoRaLaCkomL5czEx5Y4HlnZcLpbHS3KKqJWBdof4USusmtnE60vRHON1Nly/YL8WeEpksPlCkwuPqmiJUlUM0UhTmxMBGDEuu3t2sdcdhvlKCrihvYerxkeZXOsXvOKlkSktqgrGSmNIrmYVYfayKehU5GdDlwTt4+xG63A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762789194; c=relaxed/simple;
	bh=OTT9nY/Nxf7IQSX/LpXm+w+/MQ6jueXQnyMNuaN465o=;
	h=To:Subject:From:Message-Id:Date; b=NHQ5XnF9wHr9VdRqGxFgAVeqH2YxNrvVYGAowMLAzK1GAsE8ZIh7SMAzVJqo0OpDnZh5VbJSGXSHnQNAkm6J0rRCnVYAWMjdTRBUfRJeZRscB7zMmSuvtUJPhaYQJv66W4xvOkCLJc5ZmBe7/MIZmlGcjbh49Hoaw6AWJ3VNFbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLzQld2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLzQld2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE30C116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762789193;
	bh=OTT9nY/Nxf7IQSX/LpXm+w+/MQ6jueXQnyMNuaN465o=;
	h=To:Subject:From:Date:From;
	b=kLzQld2U1vPGA+WjseMgyOsdCic3N5KRZa9LLNNpMy/TXnl3zrn/q3AmrS9Nn+JFt
	 9leJ2+ljNnMrg9HLeU0pkFDoMjAt7563sxvXcqAcbxCWbl3u1HTnwzkcL+XNf6MXH1
	 dUIQNt5HMCIz5bO/DmcplwTyl9UlZCmUPTCzjiRppys3+/baDCcOlzJ17tJmJxpHGU
	 xUHeLk0RbDUDn0lXgmnQJRqVjcKmlbHaCnywUyY1sNKrTbDiAqWBLH+dV836+PaGLO
	 Z+JGoapS+4cXHMoLJfmv0wn5tRPTvO3dpGSGZRY1VACt+s33AYFJkRKiZqxTUUVbS1
	 4wdSVcvhM/jOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F2CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278919357.30066.11865155717834423729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b58001fcd676bd5189f20ae7ad94799e170809691e2f809c2678eef7680cce25
Date: Mon, 10 Nov 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762789193
