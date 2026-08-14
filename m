Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738533BB67B
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786701635; cv=none; b=rts7JYbK0TtgH1elh62y/i0fj/TjHOW+QXjr4s2mi4Kbvc75LhOdfMjpgapEkaPGWaTgSvG5n1NuYDUG1sbCRX15K5RcZUk9CQnoY7bSbpCdDP+HpdMyGzNOi661J4TZrbByDHLKGu/1/fZXbzCJH1Phmsb0LxhFUGelFtiKIs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786701635; c=relaxed/simple;
	bh=9+Ul/ac1JxfWwlETJ5M5BdrOSxQVJ/DboL7KB5XcQvc=;
	h=To:Subject:From:Message-Id:Date; b=tb3yGB50En4p8lWx2wgyK6LYGMVSQCCgK6ys65EgSR2Ln0zFGTQAZjkge97xM4r3WV5MFmuN2qUa2wsui9MoToI+lMkFt8B8JkjvRZFSodcCuBi+JKROsedG452ZPpxFkhB573fI3kGYxpTO6xE+jzBjWVyV6ohc7Z7FMn/8IAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S++PHLOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S++PHLOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC660C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786701633;
	bh=9+Ul/ac1JxfWwlETJ5M5BdrOSxQVJ/DboL7KB5XcQvc=;
	h=To:Subject:From:Date:From;
	b=S++PHLOm1gQtjKUqYJI+QIXMLJnb5UY/IXLdWOt00dCHhvtpVz4MzSnl0NiiBlw5f
	 Egq8JDR7uAVEymm5bhqviY9EIzT8XzMXE5NKIFBLyI78OKdzNoN7neUw/xYu+LFDYM
	 Y/G0sh+tC/5pKcFDAQJ2fhBGHXTFPPMi5f7EDIYJ1SK928oyaaRHXHaGMk0D7aTSr2
	 QYwaK5XOEOBKO1Fx4u/CJCjz3De4gb4PtSjSByjE05Vk2HVLKUt7qoEguaY0qzMJeQ
	 7E2K5cphxcSC9MP0sK6WVOX6X59l1IbKqGiFm4TTif56G8DwVvKQdbYtrKe9zG9tqx
	 ne5EUBw0e+TPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CC4C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178670163368.30405.12633998591992315056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de138f986ec97145ea31f811cedba4d860cfcd25a3d97d5320564166a5acd815
Date: Fri, 14 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786701633
