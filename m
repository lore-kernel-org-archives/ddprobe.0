Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218021C54A2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745749194; cv=none; b=Dfrgrd/HaegozKZFVwKd0mnr1vI1GXXxzS6wedPuya32bq23gAuU46qGyx1OWWPGWE1waGVpg3Xck+hUAcqwuH0Bf4csLc6c4Dmbx8/KOLKyH4/HxULuAo4Bx7o/MHYVJasbR6QGzce0O51Syay61ltTz8ao3L0YWy/Chh04N+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745749194; c=relaxed/simple;
	bh=k/kvv8ymiaI+tGrQFMjMI4oWSe0tkWbaHhGW3IK7+x0=;
	h=To:Subject:From:Message-Id:Date; b=iVTC8/hwWwn/wu+ugQ8ZETZjvU0+qIGr+5jrbMHJtEUQ1LxSuwsPQtMpwINwqZPEDBdoSRO8AXVJsdyHZ+QX0RfUPlKWCwk/QCeEdCC2seFsUdBh9OwScaKe7dhZNEpI+wD60ISAX826jsLqitsmuWs+MKfLkw4MbCw6g98QdnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iArAP0c2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iArAP0c2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DABDC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745749193;
	bh=k/kvv8ymiaI+tGrQFMjMI4oWSe0tkWbaHhGW3IK7+x0=;
	h=To:Subject:From:Date:From;
	b=iArAP0c2+FSUWVIpncV38hbydfOQ6FC7yw3YRbMHaYmwPV/A2zpUXqX2ztjxwssZu
	 /6B/PIwEAx/jGtUmbQbF9Qmt12ikrknSaAOGGorTZWBdEqWRjJO42t3jD77Coii+SP
	 oIOfoZ8bFEL0a8350gOjA8X3gCIiNdRIHXDxRlWpvSSbmmiSSGtRlMTlp65C+JuKHB
	 TOW6u1IpunEuIcE/jXjiTckiSwD7hxsL+FZbxdBf8+ZDGMNK+3jKGJd/QSAopnLJ8m
	 ZnhSmPYYXJyDubmSW1X6VkDB79r6okdhocGxJqtxcDtQ+WzI666qK63Y/Op/nKLa2E
	 /AacQYIm+Fylw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E84DC369D3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574919357.32484.6743634383182703308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89b939adf29da60e4c618f15982a4582c79e61cbf0febfee53d65d886e7236c
Date: Sun, 27 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745749193
