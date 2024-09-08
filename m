Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3732C3224
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725800754; cv=none; b=lh8SjOhCafU6dJ9ykcgAiQMrvpqtteZW4fjeoGuEj8uJEw1FSqj1X1lXTWUFpl2wvac5OuoDF74DqBSdxzi1l0u7fWwxAjfIyvTz1ikg+0dIMPsLfuY2CLAqvF8tW2MqvFsPzyIp3OZDpEeU5xbdUkgz3SVQlbvv9FtSt21YgYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725800754; c=relaxed/simple;
	bh=21kvtRHDyWsLJDMdsu1DvxVIWvtqWAGKIEWpOpyhsmQ=;
	h=To:Subject:From:Message-Id:Date; b=koUzv6kdMQlZ04NzlPSHXF34UF+0bV/AP1qKrArJTCDjwN2xJjhxze4tNR8DJ0ZuSSTMl09hXxlnLlRVr43LPKYFsqpMaix+NItWPHP7n9lhcea2rYOz0gzoZNtIB+/vy6xwgOioemYyX+JDM606rDPHH/NgWe5TxlwCk/jnPYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcoihhOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcoihhOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B096CC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725800753;
	bh=21kvtRHDyWsLJDMdsu1DvxVIWvtqWAGKIEWpOpyhsmQ=;
	h=To:Subject:From:Date:From;
	b=kcoihhOPAkakk5bCinPQJSIsq9XkcAT8lQIFFtbJSZ3YPVYUB1nwwe0XfC1dByAxY
	 fQvIV4SKakopWx8qowIz5H5pbLg25e6OEjK6wnb4AYYwp0bf90i/60lo2NP/QWRoEB
	 wKJZFUUexA32hZJ9Im1St41YOqeAg+Q4I22XlJLDiVsZwEsCENWPF/VvcVfqer8WXK
	 6l3ohGX7+C3IgG+bfnvVrf15B0MtAZREGGREvIpMxZzIS8Hld9kef3HHKCGSUf/09p
	 c3GWgpvRwlirDDsIH0Cis7uCQl1OE9QUYUC9lQS9EX8Xqh7n7eq3TSNwWnUH0qdxsV
	 F6WhOPLcEgzJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE7FE6FE49
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172580075362.5209.4226263813605089197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 436aff79267aebe34dc5aed074d0b4bbf20ef429ecbe20482508a16555a02308
Date: Sun, 08 Sep 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725800753
