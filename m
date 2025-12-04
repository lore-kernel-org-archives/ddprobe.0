Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7823C2F4A19
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764866574; cv=none; b=Ali6GGTaUBHK2JKj7G8pFQ8VkzpELTR+cm1G/znJnf5EHB7/cYOfUKW7GsokvBdab7563gKqGicu/dWbSJ3IJhzoHFt+WJctwIWNiBVtqJ1TqTTZa3b8fIxkS2ErPXrF44cM+r9aRxzDcO+U0D/hso4Mplao+iO0aFv6hLLWwxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764866574; c=relaxed/simple;
	bh=amHGFxwUSnaQO6HS3Xi9aa2DBCNzzfLhrNtG4VPX/yU=;
	h=To:Subject:From:Message-Id:Date; b=l3+0xW4dR0r+1obKWNQ5zb1GA1V3NFgRXRcovu0vHUdysJ/hfdh2n9F9aE0hXB/3QzMawr7VYSHJDPXsrGdULISPkKiEtAWmGUjGPN902WE2X8cf9ZmcPt2nkPF/J4tmwUPb44kofRZdT03SlzsfTUZvuaXSAsT2tdGDykUGRCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCKeOQkw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCKeOQkw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55A5C116B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764866573;
	bh=amHGFxwUSnaQO6HS3Xi9aa2DBCNzzfLhrNtG4VPX/yU=;
	h=To:Subject:From:Date:From;
	b=rCKeOQkw7vR3ad3IrPPliDdCwO6gQpak7UJjC/rds+yNYtGPKg0atn8k1/RyPsRV6
	 bCXK/KBTXs9wCbBpPwq+p/bRV8F60YL5FMEB7B6YZCVBuYTl6y6vaVkQFG6lqAMzyq
	 W49zoiSNYTD33CBhq9hO7mJRKBcVWr2vaSW5A/VJAGKdw00/JvC0XUNQkq6gAwoLRH
	 a9P9y7/LiNfpJrlRyjacyOLmJpQVqWLaFCa25amuXB6VxgRt1ruE//DjGKLMp8uMWy
	 qMpUZeUX4+hAOHWP9tBhe6zZ3Wa/8Ld2v6GSeKCtAEPcoGngx8bpKq3lMXIwzHA1l4
	 VkUH+uXZ8KnsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95274D216B2
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176486657359.3651.6856709083189801142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 218b685870d777d04f2aba8bf21b8b9f2012ed3ac8bdc6861d1bdf7118fc260e
Date: Thu, 04 Dec 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764866573
