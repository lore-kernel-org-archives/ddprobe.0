Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356EC2E5B1F
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752857394; cv=none; b=cbTMTMT6oymp4f2L3lzrzGVDpdYbzn0ZfKaKBt5Vh+jpNGX72PGFycJ4uKluz7PnP+Ie9ZYP44kg0ifck8NRirtd2/qQhfuDKafPL16ohfRGLyiXh/6q/3HrfGQ1i8cvRUHyKAnCKp2s4QATnPBo44/1rBuaosqHaA+tZAnldps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752857394; c=relaxed/simple;
	bh=KhSkl6u6m3glXSYZNcu8H/K05oULrftsQKcfjjvKFYw=;
	h=To:Subject:From:Message-Id:Date; b=X6SPCnzi5fUI7O61190z7ZX7Wz+qu9amAM9ae6ex4ZRe+tsOPyTEJ3SWWPXQsTdA5bjj+iwXDaVkCurIundhkhwKofrO3iJVfGGiJXQUjUuuFznxJCEp8YxHh6OsiKwVN9DnIyHQcqYqzfKLrf/P7E1y9DaceJ9ILpXV7qX9I0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Amb1DHrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Amb1DHrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81F3C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752857393;
	bh=KhSkl6u6m3glXSYZNcu8H/K05oULrftsQKcfjjvKFYw=;
	h=To:Subject:From:Date:From;
	b=Amb1DHrYaPl1sGv4Q+TZBxsPMDTDGTH6WcJY+lULB2S1mr0KiLjYw5FyEqEP8srPp
	 PHq138ECY8ziezb3jPNALEvT38edXk18cDQKs4mW5Ml3IdZl5uC58a6z+Lz4bu+loY
	 VqPH8kVtg9COX6aXOU0hIEeQpO2Ne2MNuH1IgTR1TnV7HwJLkqksmxybOFxPARj4k7
	 fFKu3+rt335A5iXnxemC77v4y9uRNxWwOUyyATVRRB3zja+O2Fbmif4F1F3Zo1hgfU
	 b3YTbh2WQclEnTyUgMvXnYz+A09vv3BUEA07X904gbCwO6MBm/R/Yu5MaLC1D7yMMR
	 IxjPgxuWncMkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B4CC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285739359.24164.5292129744838046061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98de742c22724ec640bcbfa652c289a32a0763a14e6b657fb05dd0d40393a248
Date: Fri, 18 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752857393
