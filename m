Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5031A23AC
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765449774; cv=none; b=n2X8qH8UeOYDOL8M93OT0J1bW4frhIbHiLFZwswCeJhsAbh3sfueTrlKF2GhKqaptG/RmkF65TrGcN/aGgMNUR2WIDkbhbdKMyyWLQV09zU0SibDKtROxEIUBwtM8vGgGm1UIUu0ICGzj80cJyDqoJseyO3vyDa3n39nfs/vAws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765449774; c=relaxed/simple;
	bh=waFcblvZdIHsuTpfD0aIHXHKSqAyjLz6SC3jNTbJ2fs=;
	h=To:Subject:From:Message-Id:Date; b=V8/qyu7J3sM9Rg6WNTxmR92iHnWdRBR8Ua13YlHvuAIUWasbzg7v61Wne9VCRTeH4i+E7WV8LSP+ltpzrY5WjRGDW/3pgi/OCGREC7hU7Ht/wTJUwKeAwTiKzaTn0RhQeBR3Q05xWP2TZ27FOQX1nS4QuRgfhEfDCRbLpjOjHrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opJv6uVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opJv6uVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B10C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765449773;
	bh=waFcblvZdIHsuTpfD0aIHXHKSqAyjLz6SC3jNTbJ2fs=;
	h=To:Subject:From:Date:From;
	b=opJv6uVj0hqldFsU0F+n0UthokDnWz08oh6/sF/iFFoedPcpMES53ko3A2dAXnoWw
	 2OKax7DMvet/pQuqPFaVPVEy5rmHPhGPXAKwMDNOf2pQqUWdNcSHwwttB3iaQW1q0C
	 j6pPmNvExDjvRiNb6g//2TTjnjGKcVgxYuw5GLL742PY6wKZ0fG7ZwKM1f1BgOWyb9
	 BNHVd9t01mdu5CoT5mEi5d8QIE0eej8R8Y6ygUOE3thxmZIbAZNw4Rdoopoz7avQJq
	 kSwGXtxHvTf0JEsS+wuEKSMKk9I73T3HxivCfyDViWOHtUbMAoO10jFYcvKMMtDuOV
	 z36GHLRIq1+Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9566BD41C17
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544977360.4994.10014983554531472517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cafe48df78cf6e6ab58c849bedc7134405b67760af4e3eec9361fa9d0275337c
Date: Thu, 11 Dec 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765449773
