Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C87D7262B
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754017795; cv=none; b=WL7aOw9gcpA6qZFYQ2TXu+o/ATahkOlR4ntXGE50jMyzY3+1K5m1uhEmlLGDdfUEL4TgPb07a0ORaxSKHKKmKrGt9l5KBPy164nEuvQRSBe7warUkWKBjc3iSXo2zRGSBgEl+MuE6lHpmmj+Istin0bp3pRucNj1RDzT5iXTR6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754017795; c=relaxed/simple;
	bh=QxagGI+l0+akmd3F4jCszCISkpWwubMuey9frmM4ZXw=;
	h=To:Subject:From:Message-Id:Date; b=LBLV1ezKubkQAzMl86A5u2KFMePPVbLibiclV8gSSQYQDPA7lTU2dwh4/4zRyW/+itOcopT5Cw8Ypl5xwJQP4T5wND3KfUwFk+7YY4wTbTTseDTdiDo9Sk1TmEEkchx7fLN/QgjYDbHP2mSB6k6lbsUuRNnY64n7Fh5LzRdP2Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9AoiKil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9AoiKil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A624FC4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754017793;
	bh=QxagGI+l0+akmd3F4jCszCISkpWwubMuey9frmM4ZXw=;
	h=To:Subject:From:Date:From;
	b=i9AoiKilTi/edCj2CBh7qntqm8aU9Jivzop/PPEqNqY+jggKDY+qtTmnaaMecAQnA
	 aMvjn13drxsAmJqXFw3mXcN/ocIdWiC0lyITTkvZCkehnfIlVi1h+bcM1+0O/lzxR1
	 CoSrW9PjZtp7ph60oIOgi3cHuUpPz9tpcA+gDHUsnS7D/ldjNJ/qdsLfZTFOvxRQRP
	 2E4T/5v6rSILwBfPrlAwQgJEasoGREt9Q0Ka/KjAjUFrQR9f/gJKjs2HoLC5mf8zoS
	 bO7ged7rrUqNpeO26gWDQX1i3eY1lyqkNCLhRIMcQMbl/mpbW/+ynR41yDQHBT3iF7
	 nWOp9JUgDFCnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E2EC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175401779358.30900.3339994431130612113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7938b77c14b251894df27d6fc828fbad703aa0e2529d21a93f789b9cb17bb29
Date: Fri, 01 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754017793
