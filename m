Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE0435C192
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772994294; cv=none; b=T2rDaWg4FPDpM1BgooAwdF8t55w5HxQvdJmmsIMJY7KhzX2AKlzNEq22nFKvopBnkT8sSn1TuAaHKl9odGQ3R0lSwBCM4IAbq6hwWGh2bT3uIbwJPa89PYMCuEjwoF6w7HM0zoG2Jo0RnQOTrCT1af11GJql98Swu3B9s+RcO8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772994294; c=relaxed/simple;
	bh=pyb6DoOcNZAlVIjSYoX11L9MnodFwufAqLSUX0Fh2G0=;
	h=To:Subject:From:Message-Id:Date; b=J1wUoMHO20K+jw5EVlxFc+v/z3qLvQ7Z/3se8V2bD/ZjhyE7oPu/aVKyH/t5iUXXfKRQ0Jd3N6Iz+T2e4Gjr2LPOHJTiJfOTnL6yd03ow4aHSgqFVG0DESi7qDqX5z3JBRaNTu0Em564mbUzCAoJ/VZdOBNlJchNTLzFHoqgZ6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXEynR6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXEynR6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B437FC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772994293;
	bh=pyb6DoOcNZAlVIjSYoX11L9MnodFwufAqLSUX0Fh2G0=;
	h=To:Subject:From:Date:From;
	b=cXEynR6J3tqsovzZG/Xw90d5FlB38MsEHBRPAk6ReOOwNY9nUa/7potu+rWWxspZf
	 HC6XJlrbWauv/QTq8UA8+gE3rseMQE2drFptmsHUskiQ8V6aLI7A1PWOvRw6ELRtdn
	 QwqUI7+P+5DT1RyaJKGFrRzOpGFjJPzik739nkk57sK6IFs1mlTJiZaoACqa+KE0Vz
	 jf4JWJUlQtSFMzYzVOYWKFQUWG4brPizTNfGeKeLuuPIX1TeWfcHwMGHHnuE+5AVn6
	 NoayDWTU96hiLwoB7UakBI4ly5a55t0/37zOG7rG+wjnLv9qKRqEhI1roWKdLM1F8C
	 UV3xsgKbA3tGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08FEEA853C
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299429361.17072.4775684709232737960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f2f3ade821ad0d06c4ae1e8f914e99dd507ff0d9f4a296d784af11e5348f71
Date: Sun, 08 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772994293
