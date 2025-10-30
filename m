Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45B22153EA
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761842393; cv=none; b=hsbW4PjVWb5g5OyIApURXDGXujk0NoK/n+tkThRdkZcvAuslOrEM7oAFPf1n6u0XrJ/q18UF3J2XQHSssFo3g93oiCKUOoLqdAMkfTvybLwUjgsp6joOLx2RqJrw2bP1mxp/5MAMSqHTvtJCNos8NTw0dRE/8ZsjhF2bUBmI6Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761842393; c=relaxed/simple;
	bh=ZSRzBNmNVrZbAbT8YIF25iiQkhVmDWVZkWj+kmlXccw=;
	h=To:Subject:From:Message-Id:Date; b=N6zQfLsngonyR5F86SS/7O0a0F7uQYvMMIFvQbqZ6aROHOdPzNIrsmgxSFtSYKhCfjROC5vzTsdoWXjnSUMLotzuvefUVPVk4z0pl+aFw2vMvjZGjpv15vDedPfFCCXlGl4HmwZAT7nG5OHShl+WftSSwVg9DtBmtSOkuv3rF2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7PIGw93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7PIGw93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42B2C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761842393;
	bh=ZSRzBNmNVrZbAbT8YIF25iiQkhVmDWVZkWj+kmlXccw=;
	h=To:Subject:From:Date:From;
	b=G7PIGw931eCcG6QZSqCXzJcPTH6xNXh7EH89t2bCMKv6NqspDba0SGRiXXnwYQB0u
	 1+TdMp70VphaYZP+7zgnXnCXPt8cwr+BSSSzYI2K6Cf1dBjybsCDJxT71+01K/05k5
	 dYwVcFhKX6H/fXAEA+tyqpmGZRIfDt7/d+F+Dc+D5z1+526pK/PaLXogIOx5AEOOXF
	 GpAyMH/b7T9CxGfbfOlaBDLbqP/4/vCMSg5zA8Z74RSLmuC6MGXIKM2JyQVzslziAG
	 7BFHPgBa0AcQciYT4iJZ/LPATo6szX2EPx0nIwz5OYp2X+Qwd6yg4YF+En5ZeJ4onW
	 C3VvZVyullgFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FBBCCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176184239359.16017.5514471394996018259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8859063115243c42faa0a5ae9c2836a4924c9c9de15a38fda292979d981d6e1e
Date: Thu, 30 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761842393
