Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B74E178CF1
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 10:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718102303; cv=none; b=obnEvm6N3wUpPWi45WfJETBH4wV8xCe+Zaqhii63E/OP01452H6t6Bi5Npragm+N+pacbw4PJfs4XAszXldeXD66pfXNatq1HI6PxB/pFzRKTNscZ97B5Ob3nrEM95DlkiLo294EhC4iyU3qoO06M9VnxDqg48ow5B193pHnKIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718102303; c=relaxed/simple;
	bh=+vwwXMN3w0j/hw9FDsygxLPvNJyH5bcqitvnO/pck5A=;
	h=To:Subject:From:Message-Id:Date; b=rXqjAENJ1FZsxdmWF9X25JaaLxGrnemoc+Q0anAudNO/JJtm/lSh3l2YuuHrGr6pw1m6ZQK/1scKmrlHjnjsOZ3oughd+QZY+OImRQfuwQ3WGytRPesCGWeJHkZrh/fqh9ZzLPuJsfheEwSfYkN1P9RxN7qUAzyKGpgjP3Q/3Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/Hn6B2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/Hn6B2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D597BC4AF48
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 10:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718102302;
	bh=+vwwXMN3w0j/hw9FDsygxLPvNJyH5bcqitvnO/pck5A=;
	h=To:Subject:From:Date:From;
	b=V/Hn6B2X817VE+crLMKjS8K73uN9Uophtcd2w53+lMNIaMFdGxDaM+ksGKIQQ2FSP
	 /Kf/9VuDEeOMYMl0K18wZhjc6Yv4gl0qRwaKCPaCQ49rjPNY01rThiRFek1sRwM/Kx
	 Um08EMAHvp33DgqwC2ikO8XezFkw/oXs4+BJBQlIn0w9eHVCt8zkxmNnR66tJv5EfD
	 r632js50K6AFjt6ZYO4fXXOeJwZ40mPkun9ISm3cIocEGWIimBeP2YA+FPxoUI7kys
	 m+hq2waKaVHVutFDXFspybxb7FlYAKGfHxh/9SOy0eCkq0MIUK2O05FCprNhgTdvoJ
	 NcHtz8mGEDfAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF43FC27C75
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 10:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171810230277.18781.17889609054476370947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c1e815e7ab2300f8bd2eb04ac4af15c80d121419dbc40233f4a8eaf75b32f9
Date: Tue, 11 Jun 2024 10:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718102302
