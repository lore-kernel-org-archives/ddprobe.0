Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1877F30F951
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771103094; cv=none; b=tlMxB34v/3aqUaGTO4kbdG3Yk5n9Z7/SQvBO9ziU5KBhtrPMwrNjANVNYY1W0Ci1PNcWAUSp2/9OWaqds+/tA1qS3/uB7kxs3q2Tqx9LlStot+tO5M6O/r+bkF54i57IQbINFwzk6isvUzsGcp3ZCwJRgJbXSMAULEb7BG7Dobw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771103094; c=relaxed/simple;
	bh=vpoABTqk6aB20/62Y0aloYfOWZkQP2GtdB5mvcoYlkI=;
	h=To:Subject:From:Message-Id:Date; b=Rld7v5XcP8F6alOId6O0RFaSmyLT9Q/k521OzBKtsDlyvfwBIuD7frbE+flbKal4Hv4qm8v2DBIAdva6c4tJXPMkwXbWMgvI9Tb/3eRBPNu978Wrwouq4oID/gc+lY5EGFfp/TeCWQDux8Y037Xc2U1Q8Embh6D8daDp0wpsRv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R30rtDZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R30rtDZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F37C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771103093;
	bh=vpoABTqk6aB20/62Y0aloYfOWZkQP2GtdB5mvcoYlkI=;
	h=To:Subject:From:Date:From;
	b=R30rtDZBctctUiTyNiTXRKu3+do8YTm+BSxhuisRya0b6XfWlsQR2IqJkDu5AWthj
	 k9J/Pq0USNQr5U8yqFZh+nkpd+ibjCEU87OZpvnijfDJkas1S7107s+FXsigO69YgG
	 DgS32DZeSmDKF6mqc5UnzqnK6QJkk59Tvk9Ly6ba5bp6BBoWifXhEe7DouABwW7LwH
	 GKrvXM1nCAq3tlxXM4gHt/fsIg1++7F66amrNp6M/C9XJQSlCVdswYQnGUf9Uv192v
	 MFqzmyvAsyt63yQxf+yVgcxZXrLSPIwHkUfR7lvopVfwODxc0RDusoqmZsOr2u0bgE
	 iyiDaE/ezI8Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F192EF584C
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110309361.9878.3364793687114489693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2f7d04997d2a8392584aca0af7374befffaf1ca0910c26d9a12945e6455fe0a
Date: Sat, 14 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771103093
