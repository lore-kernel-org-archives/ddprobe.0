Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A351FF7C5
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730838354; cv=none; b=IWST15J5yl7VbJv23JQ40EwBKkbs4J44HiUTOUiELv7NJYtOyRBryRqBi5M1vr1QYnBxX1d///GuBhLFGsFHv48YzqwJXlr9HqAq766AIxLZUGeTogbKUqdpN01YXPyPGSxynrZXCHAZaF/SP/H/EcgksWSuXmzIbWzZ64PGQWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730838354; c=relaxed/simple;
	bh=Fjr8LGhtAQdBkFEa20Y1yvsFu/0Z5iLBj3gCt+NsilI=;
	h=To:Subject:From:Message-Id:Date; b=gDSZso3iulbmEpDHdjkX3/Hcys3JuPjKbdWK6OzjhKbBxCzHiyeZG4+VYXVixxbxbnJ5XPot5cgAucg15PT2phceXupFPNkOitJA/KCGxdPhAwtNXey7liY39JNTn+IGGO2H1RQdY76D1Qvs4Ly2IYW8UMXmcarvqbaGho0VOPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2jkoMwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2jkoMwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6455C4CED1
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730838353;
	bh=Fjr8LGhtAQdBkFEa20Y1yvsFu/0Z5iLBj3gCt+NsilI=;
	h=To:Subject:From:Date:From;
	b=o2jkoMwUKlc/rwiGy26J1IIxMu7XeyZaVhYMhXmx9T/qaIOq64inyLn5vJ/3TujeQ
	 Xq0tsLL8Vlm5ACynHvvyb7mf7M6IEw7I30f+n1SxSnFnAvnVZAdaFI4tARpMppdR1T
	 xn5UHXeX3DVoLvX21VlbrAVYI7+HE24VmAjI58EdUn3peO9WzORgoN5IgM53NnOoQ2
	 o48Z95mEXsfil0CQrnwebRZ/RgtVN5Dossy+tNQx+b2YphBatGnNR/r9Rz9HVKneId
	 dPx7oNWnzBcUKy0neHP16ACi40pzG8LVoKeZCDneov0ruvMLefrx5mWmTRK7J3rVkn
	 J0H0ec+ofFElg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CC8D36137
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173083835360.25044.16725460378855188599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8f10b3be0527cad655e8e2fa5f5f8a22e2d4d892d5457b88a21f2fbcdd2899
Date: Tue, 05 Nov 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730838353
