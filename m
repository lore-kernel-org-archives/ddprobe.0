Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405F3410D0F
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785411634; cv=none; b=SWboHnuFQpZPHLLIxiKvEIS/uJCK/DhFqmS8Rfff77CO+dPYLpFsuen5KF3MpA8fkKLVU6j/BvsYUSVw5xqCiiytmVKQ9dxM4NZykE0cstxId1+Ina0CJ8p4bBGxal0KteLrrI+cCQcwXh/1nZSi2H/ievNLyPOFBaVecr7dZBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785411634; c=relaxed/simple;
	bh=ehyYrp2DCfTfkgc36XMCm/lcNW72uZ11OHqFLodqd0M=;
	h=To:Subject:From:Message-Id:Date; b=D9tc6Li0VmhbzerJIHca5T+3qAkmRtKUa7bN7jbjXYQpnziQYJtc8EERv/ox5MsC8GTWfMbe8oC2WPNcaZTK+dckBmZAHe4jgve2J2TYlWRTZMcwuuWEn1Oia/lhHet11MfneEMTasnasfYENfUO6MwO7MkL4/tqj5OPdjHKCtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPDzrRH+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPDzrRH+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA501C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785411633;
	bh=ehyYrp2DCfTfkgc36XMCm/lcNW72uZ11OHqFLodqd0M=;
	h=To:Subject:From:Date:From;
	b=IPDzrRH+xmzjy6M72qbjS/9D93X7HjPUmDFx40efa5YIvcyHv4AoKUtWqqJl6pw2h
	 iI61xoYlhyq6XjPPab103xScgJgWMa5V0w73iIgsPWhXBtBCDGF6uS2uGIqeFa8UfW
	 flO4TD9wEwBqmtYVqIJZSijL8LZ4K0ejvbytGi6NRHt5oCemIV6LUT9tF9UNZehlaJ
	 3SCS0edQCF+zxwrzNVBfXsXVgB1Yq57BpacwqpbqCa3iFs+vTkavpLZMsC4+akijm5
	 fS+QTfj7HlFBP4DUjyfZI1XLWCUdFztRfmipo6Asd9PQw40Red+zX+ElO5F2Db8nyb
	 /kViCE0YbN1Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9293C55160
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178541163368.14614.6579095121934655652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a740331249697a1e6cf13bf56153007759ccbaa9f518a91a2b23414d885e1ff1
Date: Thu, 30 Jul 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785411633
