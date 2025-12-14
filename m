Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFD52BCF5
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765681974; cv=none; b=O6eHPoTXjLRx1UfIMEN54MtP2mNO3yGoQQMLBFiHtzHpEG3dhKcAtFajgvPueWw8XhHMOXfCCNf2rHeOPKEYRZpVjpz3nCB4URN8lwxCyswaWi1N3HBbW2TgbqsRov12pv4Myx/pX6eJ2TeghTff9Ei3nO/C9rnCoFX6DRS5FJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765681974; c=relaxed/simple;
	bh=icrRf8Jrp8mskxMfqHJwxhIRojoC7xD/xikGnh9w3Ko=;
	h=To:Subject:From:Message-Id:Date; b=E9WXXxyJNDbcYEcXTMUKbSblsw8+61eRfn8INQ8bVIlSLhQnNJtBNoMCMAROawDNphGUeZHlN9rishL9YvPtkAOVtKRTu3f9m9LGjyprclqkOSZps7EKEcCUt9ZhuK/7HOHDVTwMsboShzZiKXMhGX6YWGf/F8xkiDdagMrppM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5+Ajf+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5+Ajf+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE013C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765681973;
	bh=icrRf8Jrp8mskxMfqHJwxhIRojoC7xD/xikGnh9w3Ko=;
	h=To:Subject:From:Date:From;
	b=R5+Ajf+6ZJP7bLXWoYrjvVq6q919pznVcDxJghcxkWeTnDnIrvuMDU39HpZodTJKY
	 sQJf/C2KcsLGp90QRi8qlkx/hHxR/QXu/8H6vX+oQs+vZBbuY4n0uneP8x2C1RMfhA
	 Q320z9iDxSr9/IB6JSyTq4mjP5n565tQAOwhcFLzjBuQ43bjc0m29PX2gs04QqR1z6
	 qe7q35RsAawsSiye1lNJrf7a5oJZXd8G0R8Z6ilLCxeO6IF2b0e+IbFYJwtp03Icec
	 UmdJoKxCo7QRThL8Wd92PEV1H1Qw0+sH2ZXR0Svl1m85RVlOyhzazzP+5g7MYRwYFt
	 Dd/FUzd1sY2OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A69ED5B161
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568197362.30402.12846795121599369468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86862bca9664f9fcacc2ad36a0839b615c58bb3846cf512e52ca2c9e03998b07
Date: Sun, 14 Dec 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765681973
