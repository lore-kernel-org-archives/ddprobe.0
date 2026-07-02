Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3328535BDC7
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782969514; cv=none; b=j2DVJgPfvpqE7HBaQFRMwUkyXGlv0DrUCfmve/5gxWme/IErEjg4XbC8yCTXF6Rqm3YAXQd1XMOGNKtGtonIzg+ZKkwt7r1YQl0/mDRm9lUYIMCIIRExTStpz5FyvqWXhN6+EgNrHLmK6TYSlSnSsZFM88Patm/EsYENeGGM1oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782969514; c=relaxed/simple;
	bh=pTw3FRaedrepFs7XNySWIgbWmKBtPhv+X+hBU4kL/9k=;
	h=To:Subject:From:Message-Id:Date; b=uet6NRUJtFZLtxZDsaSiJgAesLqQc1MquiJF8m69XIYGfc34hwBWXqKDsyucjS6sJ0OzYuUwZ9wJKglwcmqpqht8P1o4qheiJNuqLdZLKPjQj0J905TXAJo139wYE8QwHZS8r89V6VcvoNPNsC2sBQHYH+ggjwiuLDN0ZoJ5sV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHH9RcAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHH9RcAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD0DC2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782969513;
	bh=pTw3FRaedrepFs7XNySWIgbWmKBtPhv+X+hBU4kL/9k=;
	h=To:Subject:From:Date:From;
	b=cHH9RcABHASButshgVRHMiIl3+17AWXj5poQn3gcm31ufi/Ieez8miUCO5gIdhC51
	 4Z8WWAX9mwd9fw1kEt2RGYobovF6DGgtQ95XjI0qqd9DvcAvPtbXn4bvGlwEIaOPts
	 COIug8znUPkaGSYZ9V+0kgJLadDt3Qxr4V1fgW1EVDAgiY3ezyPoWZXvC0OnDW+yGX
	 bmjBtOxuih9UPwYUPYwCkBKv4PMDdBVikm50isyM82N7Le0/ygUtNcF7BIEHgT9gjn
	 roAH2DORXDefQhOIcowE5mAgmCHiBxhSj7idVtsf0cL++V9Pb0VjRRlcv+6AgjQ8b7
	 hZIw37D8EKQoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D30C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178296951368.6606.4582094089567288146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8efc1379beac8c07b9f465e010e19282f4ac9fa8cef90305a9bbd75a5dd404f3
Date: Thu, 02 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782969513
