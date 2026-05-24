Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F5F17C220
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779582154; cv=none; b=J0u336L1e35AchH2w0oi2Vdo+mm8NJrVO3W/AGXil8lacqJtTfp/ZFfegyuXnsxGi9r0P6Oi1MLgyGDWLZcFQfhnrlU8wEOC/F5q229IlokcjXZ/7Wpiry3ChfeYYQAnXsZ8CeXOXAis00zuOpuxM+Zs780mzShY4vrtd12wRzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779582154; c=relaxed/simple;
	bh=3fcZ8e/7S9lY1/qZOr83T6fWMcv2ngG0KV++N97pK5U=;
	h=To:Subject:From:Message-Id:Date; b=KNtOiVCkB75In17W4Kd6BfhJuf1mweT22TcrL0rQB4V8dtqSREE0I81wygHaqtYfshq3hp4VyednCHmeFxCw9qS7Mc0EhT5NSUhqjV5hBB2E0L8QSB93jQQuuDq85fP7AqkPuz70pUTHy3Kludijt/rtBsheVxfU4z5fKYMrtfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORViUK+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORViUK+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8AEC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779582153;
	bh=3fcZ8e/7S9lY1/qZOr83T6fWMcv2ngG0KV++N97pK5U=;
	h=To:Subject:From:Date:From;
	b=ORViUK+pR0Sq0BguithuVj8AvH4eaw1okYnlxMHLTZU2gZGzkjR0xI9N0nuXZgL57
	 aPrVoYr+tKpn9laHJMxJOgeq5byE1ynx1T+vVG9xu4ghhUs1QfCuXPnrqrFf7cEi26
	 SnRPAs+x2utincUfc4+ddPS03LmDYjEmNLx6tvq28bnkXCPAuOz3g1WzpovOEag1LJ
	 R4oC2GYaDfT8bPSJgmOKEZtqDObT8o+ZPaV+oYEb8Rwlu38rNkpTVtP+WBK9r9iI9n
	 RMZWXt7gnQ6aJEJwP7XkKNs286MgCbRRsxr4589bpTw/Hi/cBzJ50IUXv5t0a8D3rE
	 T2qLUG80Esn/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD50CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958215368.1827.14208771721047809297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe766bb1c4add2d04bb2785103777939a5d363f2e6caf5c00f54f4cffe4e641e
Date: Sun, 24 May 2026 00:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779582153
