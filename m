Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D15321CC4F
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766307234; cv=none; b=QTCctLFyNVYRDqFs1brWfJZ6ltAUOMhblf8jvfqIE2+Mkxo3aiVqffo/LwZ7s6KH/NLo0WvB/bfm+sqsOYeR3yCwG7//lXGf6nl4gD6pskGzCuY9tFJ66FrWHqB0sKdzmwm5ZVofOBNZAOzgBpssW8cekmmbrwNYWg3FmA6MTgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766307234; c=relaxed/simple;
	bh=lxel6Qw6oBCa0ZUTNJ8fNRH3/d3YON4uVIR9Oejk8mA=;
	h=To:Subject:From:Message-Id:Date; b=D8PXJ6YhTLCvlkLsns2r6CWGHv0kHVLES4dq2KsVbxcyuTmsGTY+r7fPMwUlTG24MITKnSlhSuvAQZ/keDmlfaNUGTYa/a3CxjlqWdqFdfwHDLV9JX2Ks5xGnOrnBm2MZXyg8n+6FXFTjSH99NtQyXibOallva+AcmGGTPfzz9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpKpwXT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpKpwXT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93B5C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766307233;
	bh=lxel6Qw6oBCa0ZUTNJ8fNRH3/d3YON4uVIR9Oejk8mA=;
	h=To:Subject:From:Date:From;
	b=RpKpwXT8bqwtatdJ4XXJgQ4pNsYPQdmwQU1k+DxR2eLCvEC5fyoIMW6gSBRDRPrzI
	 r5z9PTOZNLWBu9VOEKg5/bAVe8Hpz+DgnXoAjWv//8Hs3/swzwO9aOhUxNox3y8ff3
	 PYijIRsVZTosdr63/h1aZCpE+LeSUf+VxgoA0GyXoaed9mCqIYw/5wScscya/wgGQv
	 duvEkoSNJ0x3ASi76la4KKx0pL7V8HeU5ZpYUVvBplzYIPLnOQXnCXBu+UHB+v27Ik
	 hQZiM+Lu/IUds7xxlNmQUG7Gu7e8GOX5VxwmfkjYckhCNkdLkrmBWPD+SU7kjuJSdx
	 yoq/nDxfTjY0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985FFD68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630723359.7539.5874547790137950376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f91660530502cfed51bb1eb43d572ab127e326b30ee3813ab79e777aeb68cf5
Date: Sun, 21 Dec 2025 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766307233
