Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2893313E39
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769656434; cv=none; b=eanGn0yJTD/gwdbQozjuBKJi/FmWQEqWIwSgTxhIsuMFwPk1/EhCKkDLqTsKS6lV5bx67YYgnE+H52j0nmuSEbuzLENwgltxSCD3YVZ44azFvoSCiMXSD/cSE6ZtfKz19GajpFYEOp6rzSE2hUjoKGUkTZReqWD3DaXdKt8mE0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769656434; c=relaxed/simple;
	bh=AyF8BaKTwWiQMRvzdadMusdRx7czlNwH6hyVyKIMNkw=;
	h=To:Subject:From:Message-Id:Date; b=ZdzvEHpISGj9qwvTzrF6nm/q13+jxcBbHwV8cpGfRv+6mW461ka06iXfI14p8Ow4rt3Gj0qV0Voxi9Z3oZ9+ZE0I4BPOER/ncS+CbtrFh248WBnU8RTOZD11LSfNhn0ukIumptAds13TGD83h+ir3xQimcrgOf8zX6XVgMzqITs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnF8yj8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnF8yj8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22CAC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769656433;
	bh=AyF8BaKTwWiQMRvzdadMusdRx7czlNwH6hyVyKIMNkw=;
	h=To:Subject:From:Date:From;
	b=hnF8yj8M9zapKTAzdsucXymGqpwEB2FLMUG7k3eOvNG5AyrmmYIMrN5ssjTdbwG7V
	 2O2Yf9lz4tTmU/Re/0fIe7RQGnEdwcl8LsQupkHBkRBkOQVh42aZpXj3xWNAaZULtM
	 81QXaADs5Z14Ah26EeYMrVjjAoG9ms5ofBf5iKpkbsx/EExX8RvB5KAygCX28xTqjC
	 jn0prrqI7s3p4DOfwgt8n43E3IuY/OtGSDZmYKojpfUzv/axn3ciFbAn1SLamUiPCH
	 B0zpPKflBTqOApcGkmNQFZYsrmu1PmPOHZP4S3Njny4e+S6x0iMAyEqM8vizGlcNvo
	 W2XMgO2p2x+Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F518D46C01
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176965643357.14533.11655847960591585060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45e26c61a96cf65d9432e956f9579b22b025606f0a5a57caadd1e353e8a62b4e
Date: Thu, 29 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769656433
