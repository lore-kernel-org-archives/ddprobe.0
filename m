Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1250711CA0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766051034; cv=none; b=l9Rm6nUhwKCNvqKrjfCKKn2DwNWHsVZAtlHOkQezk1G2pAYMve8hVENEhtdeYS4G0NLGfSyQXk81p5J0fwryCicj4FPR7pN6KQWpE//Oaltf+aNVj33WC0gbve0N6c7FN9PCOqyFwx4+Ct3C8cBQRupKyvamiSyYzKj12+1w2/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766051034; c=relaxed/simple;
	bh=KUJxaSwu9IA3fk6UrOqYUK+8hfoMzrehbPekYK7+Hfc=;
	h=To:Subject:From:Message-Id:Date; b=svsLpXkWeJeqkLa4LIDDv3T+Ky/NkjZfzGcSPyGUXMliU83VbAmyiOtHHEEA2Qm3ALHx4ZcUksnZ5+w0jjEsTGIGGgZCP49w+oRHVwEKGm3sHCNpmjG89vTORN8CHNd3TDC+ELhGzYufjQD7SHN6Hri2CfkIc6Oi0Wxhvbb+1X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRexcPgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRexcPgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A423FC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766051033;
	bh=KUJxaSwu9IA3fk6UrOqYUK+8hfoMzrehbPekYK7+Hfc=;
	h=To:Subject:From:Date:From;
	b=QRexcPgP1iZUvZaL9NCu8lMuIaoFUDrZNg7CAyCv/JBpeqnryAGVZls/xlrL59Ob2
	 /Z8lfZIUCGWeGwy8ndIejm5M262Fdo9Eh66ouJE3UMn9xMDW9hIq5jvurVqrSIuFVC
	 cjGNoMY3ArJaaLZzOps+ZFUumFuN2V9hcqJ43piVfY/XjpxgBaiELF8jVtg+OJYg5l
	 ixcxlyfcw6FLwHXR0HVuOTLktB1BkG6eTy6PUm6o2YqxbabyLAonLiyGzuu8tHMhzX
	 Jo9QN4Aq7YEUPslbiJnufHVvIoQLYLoikVtoZ9TNTF3oO/Jtmeghekip3lSZznXqYc
	 z7/wFCWUuQWkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CD2D6ACDA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176605103358.28756.12442538083724835594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320963abce0383dfbb6a5dc970f5070c2bbd79189a77787a55a63d7cfe41e91a
Date: Thu, 18 Dec 2025 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766051033
