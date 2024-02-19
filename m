Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89041DFC5
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708354096; cv=none; b=ViIZa3aGzcr9hwn+vrsumy8JJSQt44k9D9l7NAKdFdmitkHTjEscnx4FlpdXiW/Ko8StDjkanyMaW7KaXsvxYzLDuDZeebKVnLDMlbijDaEkFi4r6yr91tzvKPzhTvt3TZZnbKtKlY1QNlUPaHxeGnUVsG7wDn1ZYvbktyq9Zw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708354096; c=relaxed/simple;
	bh=7XkmyfOzez47ts4HESnXjGJvBbFwDrClSvny71xSXEM=;
	h=To:Subject:From:Message-Id:Date; b=e+eRK4h8V6WHFJZJWPbSnoSJAjebS4E1iWsrEQSddiWdv69+fuEUcjh2zqobfkUaSp9Xo8CpXau6qpGBpVhgz7bVYSol2J1HAUvk62QhdewLH5+qPmW5RB8mWb1R7/fhxRHV3YM18Rx8Xw/xldySp6rORELeVdxzLvQewP3VuvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gak+bJeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gak+bJeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78BB7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708354096;
	bh=7XkmyfOzez47ts4HESnXjGJvBbFwDrClSvny71xSXEM=;
	h=To:Subject:From:Date:From;
	b=Gak+bJeEPxiLc/JDXPLoK/yZsYLvnvLd1NO+sCinDisW2+0H6MRK9ZWypBxf4E+Yt
	 kQ8QHZYp6y/JCgXSUvaxei2QZQ25Lu87JSe5uH/Z4AAR/zEmM9qHU32jlCsxVsrViQ
	 AnZSRa7HDQ6lasB0UgmFKQSf44w0rZfGtiGcuwirKKpDrvuoAZmydpYj2XV61EWnnJ
	 Llt9oFcvdkDVUbrV8/K5V6OmZHj9kkiyuskBecibboqS+CeIASFYzCyCkzOg4E8gXb
	 d4cEZOhC5EUvM7RWZTGAz4y7MTAVg0BreabJVZ4wFz3FOkzLeam6dt4NWS/BU/z5BJ
	 ZcKgj0XucYzyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6FDC48BC3
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170835409637.21811.14536397578346108709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e1659032fcd968df4ab469d7f9137aefbcd66257c17b871912d9db0ef56a97
Date: Mon, 19 Feb 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708354096
