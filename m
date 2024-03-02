Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0085528FA
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709377697; cv=none; b=pNLfY9AzBqdyvc+si1+8Y/fZ0UdjeoSoXZaiXOeTfvu0uQVn2vcG2cKZR+6J0nK0IebkuIuZTHiVntXajyAOiNsgGxetB85D3JNwIpnLJYXynTQBPS/qlbYGR5/8MZxAuiZGWQYWoFVAIY+eVRrWL5PEXSPzZO531M1oOeDvxDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709377697; c=relaxed/simple;
	bh=gghKhdqLVpGLLtIwouwGfZJZ/Q472Ieomx+RJTUGV3w=;
	h=To:Subject:From:Message-Id:Date; b=g4Tshp+V2s9/kpNYVxRQ5vzt8Qw22p5i/UMQfru59FXOkgb0IGA0Z5ROMMsYeCvMqkPzY/0rRnbr7D5hVv5z/WDhiuLoLDc5YzUOzvbQjcuxG57KulyOGzW2kk/zWHN0B0lDhsrUH7mg08OelTKLxsSBzd2Z6OgsLojEwe21x3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcCTYq3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcCTYq3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B75CC43390
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709377696;
	bh=gghKhdqLVpGLLtIwouwGfZJZ/Q472Ieomx+RJTUGV3w=;
	h=To:Subject:From:Date:From;
	b=VcCTYq3OqLbrwB+di3dcweB/90/8b5cZqj/daEBImexpfCmhuaUUrVUWygzmoekTM
	 DNzoKJsbPK9DdBp2voqQ9Z+gvfDr8ZeOqaYLLOYxg8XQUdPHBiBoGxQrBGUOTkEJHZ
	 m+fEqCKNtz33cFXe7xlIDMzXbNScv+L/S/d0Z+ykG07su1dv3KKQ+cRInz9pAku7Qp
	 2yNq+dYZ3r3RK6KNSyquJgoQow0ko89SiV+rChpxf0FX+4i6C+Q3o5Fqp9N8b34kOW
	 KCExO01ID6Cd99GzgcPpmW81lxUxv/g1PgPGSqDLH5+fMDeqQiKagDPESuiUaeyGtR
	 c4OhretR+9hyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F3CCC54798
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170937769638.22819.1070169824704381475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a7bbbdc7cf29f0185992b0fb275181aa4fcc826467342f19543380fe5fdbb5
Date: Sat, 02 Mar 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709377696
