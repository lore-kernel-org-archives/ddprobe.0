Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4575B1EF090
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745263194; cv=none; b=tJBmehTQKt0NlgUE3/fa/ZIRqmWGtCJrrZHqOBQm1ftXF3dCsA++SxyJ+Gk378eaZMk4b5ypKl2KbMQaPqccvePCeIvXLPnX+9FLsPwI2069XbyU0/oRAlYgKrI/UbBOtqGxtjRQVpTpx46Mi1jfK6MIlM2jQAcif7hpHWYyiW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745263194; c=relaxed/simple;
	bh=jX3mX0Jlj7wuxrE2duQEgqglRVUvxfzPrQ+20BmsQ+Q=;
	h=To:Subject:From:Message-Id:Date; b=lCHyJnQB3Ry7LALx5U19UhPUUZczP9fP4kro48bfEsSesnMasvW7UanM5VQnZaKHQIy5ekocAk6e9y45AO/596pI5NV3Rxn4AR9mGSZd7eISoP8IkQggeUya9U5zo4F52MsMLKvuBC2cJQpAqkzy1UWox24y4aolETiNxfyYyg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgWhvRf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgWhvRf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4696C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745263193;
	bh=jX3mX0Jlj7wuxrE2duQEgqglRVUvxfzPrQ+20BmsQ+Q=;
	h=To:Subject:From:Date:From;
	b=DgWhvRf81SdlxBA2lOrZe8mGfgMGPRJ7N94xLptMujlIJEnYpVptSPKDFvfipkuWE
	 XkdiB0h4/H4dU/TlyzJNTQvbYIlICYlmhAbQpmniLT3Tggnw2Vu2uDiH5o+1m5k8Ox
	 7Wvg4tSz/oE+mAsK7WVLZa2sOLAqmFSUWXTnziR+axywnZr7RCpGtltImeCj8eBOYd
	 LXCGNv2BSwUVkEyBRje4HWYDV5ifVzJO/pRwjWxxDX26zU94XokoxUh7lXmyVLsu+S
	 ukjOzpe7pwPd+79fQ8Fqy1V9ws9cH02F+scF3N1FKuX1Qo2zZ5/nBm5G7sZpau+Afc
	 PGiay9hukSYsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1CDC369D3
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174526319362.16700.5896656976486692693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f091c1eef5c37419cee149c5fd5ec4efc2b0fda44de03696eea3e4292a5f6b
Date: Mon, 21 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745263193
