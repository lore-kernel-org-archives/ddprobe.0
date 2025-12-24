Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052B83126C2
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766552634; cv=none; b=czxU4rZEfglDtB5SeI4bbX79sMAS5RdJtAiyPt7D/ZscNhGQLBvHv/HpsjA8FJ2r/IBiy4B3/9qFJBTSkNeA738bQN8kxv7lV6xLnUyFN3JFclRzfhg85GhP42EGLHS2j/VkqFSTgEJWUxLuIR8WRxI6TUmDxH9EoMQOzMLWc5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766552634; c=relaxed/simple;
	bh=gUwzSRJgyGiIYKPwZ3nyfB4+ZBxae8ASfG+/SaK68tQ=;
	h=To:Subject:From:Message-Id:Date; b=ckJzDGZC6vhsZjfM49YEBLpGJAJD4o064m0ihzXRWb8MKfDKM5eui7PqR5t1Ue1Aak89zK8Sa2QZOJz0f97tfrRZdG9peytVmazh8dRxrhBd3UkEpV7a3303Z4A/TY96CFaX0bqeTfY8dbPjbmK70MOWJlEqXJPUTAXqePnlsUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mF4nE7Bj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mF4nE7Bj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F61CC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766552633;
	bh=gUwzSRJgyGiIYKPwZ3nyfB4+ZBxae8ASfG+/SaK68tQ=;
	h=To:Subject:From:Date:From;
	b=mF4nE7Bjn0E1GAfKm+0FMEVobcsl7JuLKB50dwP/8NEUu29ZhCGxGHAG+pQ74IJM4
	 vHi5lK6TkG4pkWt5CWp4B+LBtx3dBUoYCiG0+H4+jFcwxrlbTnbm+i5CSI9vCiDYNL
	 InZiQAENjslUJKa8UJC8AcNwQSCyZnqbXwLZXJuyOa8R0gqEKd0uxS970k8FNkY5k4
	 ezcsz9tvycWSORVsEdNiYXl2cIHyxhrXWTJQ6XCtzw/6RMu9uHztvM0KhM+N+VIlA8
	 KbFe0n6l01KwuLHJ2cu80/vqQqNa4sj5dHaMnQ926rvlkLObw3/GTjcs8hyRsuUPuE
	 FSjOTX3/t401w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0CDE74913
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655263357.21868.5812048692779389845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ae0968f1abe2dbd6be5fcbd119187958b255727e93e3a660bbc58becb9a7b9
Date: Wed, 24 Dec 2025 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766552633
