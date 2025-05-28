Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED691CF96
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748447394; cv=none; b=iKqDcoq473qdQwwKLlLYCr8u2svCm08kdefmnK0PSSfa2k2boHKVQL9b8yTO/4xr/eGtSpZneYbTySVfYKCH1OlMqz9G0/tMw61TlJtWPbNq24lbTmwOmWU48OOBtSOJUAuG2TXVw2k3iqNXRR1qSfr+7wht3k6c5DvFLB/pk3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748447394; c=relaxed/simple;
	bh=kt/bkKK28dHUJCl4uZE5xvRO8FsV+6o0XH9NiNHNSB0=;
	h=To:Subject:From:Message-Id:Date; b=OTkXNixpS/YfsLFeUMD4LTV+7cw6VL3tKrAq3tTVN4qaEXAb9rQh757FmBocIz/JvT7ZxdMuREdj3EzKRN9Ce8NhIhtZ6ZFht2lvAjMsRd/fWTdxk/jnF7o/s7yeNo8Y+gcjSvm33c3ZI7x91DQSAb2K3QkOpyomNPbL8Tam6+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzb5GTBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzb5GTBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5166C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748447393;
	bh=kt/bkKK28dHUJCl4uZE5xvRO8FsV+6o0XH9NiNHNSB0=;
	h=To:Subject:From:Date:From;
	b=nzb5GTBbDFzlYuvICd6tTIMWITzPuNxIIiOFmkS2khHXx7ljnfIeNYm/1RULj6Yh8
	 FXyF83c0TN0z9ASYomIhOCWQWHFKk+SI5KQhUBvQoHtw7vAp1DTQ7DotPyqPrVfaDW
	 mi8IycYGedSkGyR7/pUy8Fz8G0ZdAXomi9aZZXrndKyx3ee0zs9U+GtzpDczHhUOtQ
	 4M9g6dYT2tbS4o3PEuKT5uS3c94ceuXUCcBrMDJfn48k+Kwc5KkWJ1IQgxKADBGHQD
	 0B0+s/CRBRTTILiCkDKPcOReDWOFMwH8iXeFmAU3sqA8Y2j/Cy6VQxc9CGpouZ3pnY
	 Oqnspkeglp+lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950BDC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844739359.27534.2213617607986833562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e8434799880cd967d609d93f5ea8a969ef5ef9db66e3ef83a01b6dd27c093b7
Date: Wed, 28 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748447393
