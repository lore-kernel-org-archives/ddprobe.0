Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5543926D4C3
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784958634; cv=none; b=Kh0oYct1B1VVbO3CqqOp1S6O7hXZ1YSGhLydMCyTtS31HupDBGPSTIWHYz5urJcn5PhmWk5LuViaT6Jpu4wNdu7FR+IQVTiMNSiWXkqc4UFUlH2Ef9CixWRAm0PhXdaWm88nDMpP5IS7BVQM+zYGvNHOcIcQlseeRvd6KrM4IaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784958634; c=relaxed/simple;
	bh=MM3Mzu78mzHPDgrQ9d4UEB8juQnLIv2tvys61EAIEys=;
	h=To:Subject:From:Message-Id:Date; b=Gcvus6UxP4sSf70GItcPokJuk7duj1buYN8XRSWd+tKLVONzNoCiZ/bAvs/avPR562sbO3L6C2DZxVCZRFutIMAhCpL2yEVV9fbbEjwrn76yWfxsQPrJqZYWsZLyI7N7eBhnesKqHo/5vsecTFc1P8ybwOXRJc7tKTw4vHS2Ov8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXhrUZkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXhrUZkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D35C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784958633;
	bh=MM3Mzu78mzHPDgrQ9d4UEB8juQnLIv2tvys61EAIEys=;
	h=To:Subject:From:Date:From;
	b=dXhrUZkLoj0eibDwut+R7cX0UAWWFybCZOKyKIdGVT+wl+4BFYjW3vyL84psZfp3D
	 YpkBW04wwSIyDAap73MGgZA5dNS8eXcRMCYjY7OIawmt25y94DDuHD6JOGHEscRqTu
	 jLfpYIwhig4i4L1ey6Nix4ADISUTqCkdHmdH/edGIDmFly207p9Dweg4XoozStL7Hv
	 Rq7d4rx8X9qYAtW6bV9Kp+bJbpYSmh1A4VDdVtTpmussDgOHr5z1bW7MmI1JaJ+bHG
	 FBGHCr0IOIScDcia3v2Z5wAxPPkTDErwP1csVW+XoGbDScf2/lJjr1JLheSOKDKtR4
	 c2Qgx+NFP3TBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF133C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495863368.11614.291367252474742330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5652d4d6f49f411766bec7bba5b83d8be7d106a4ec7169f39e87f4821e39d60a
Date: Sat, 25 Jul 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784958633
