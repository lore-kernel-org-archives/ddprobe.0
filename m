Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEE8396B84
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782977914; cv=none; b=coQZ41gYU+YY5Lcr9aXxOwTRTtPLQ+SFejNvm5Xw6R6qp4Ewc2S79kuAkgHVByux1nuRiydJRg4KSS+dbSYWLIG8BA6d40943g+6m8JCNj1+Bxk+H7NjOYoWTKWKcNFci8/pL90Gte255JXjNH0hd3WjyOJ9jcSO9CG5Lpvw6YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782977914; c=relaxed/simple;
	bh=7KwYpB0uLqSZw7KLjgADD0V31pcJCMiV8/RSvSgtfOs=;
	h=To:Subject:From:Message-Id:Date; b=nNKQkCamQKBbNsxTN4mli4ItcDnzRD9YY8QDZP/m4iQpScYy2U+/3DxAFX9qzdEuUkte5ymIXMNLePMWvWXASl/CFeNpPEW0gQ8EbMCIEestyO9pp2xuiwRF8blzKLJHZtyFyNIxTvkUt96Q8uDIk/wMA1P2MaJafPemEpXkn6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbNVLDvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbNVLDvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB526C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782977913;
	bh=7KwYpB0uLqSZw7KLjgADD0V31pcJCMiV8/RSvSgtfOs=;
	h=To:Subject:From:Date:From;
	b=GbNVLDvfcXEmApye2nBKjJqTfF3LPvnKUWoaEam7RrH6/jxd6C7dGnCJA/VpOFkEU
	 xS5SD4Fb2QSkMUFQ62sOFXRC0+/JAbLFgk/gurk9aUJHe0/WYOV1jXzsL0uhYs+O9R
	 8nEmKJ0TP+Ozw5CpCp0FTR5SR84P5Npa6p90TwgfJPEJ/enxQtqEVOrFE5PNFPBtGe
	 kiXt2OTbvU1cqkewKeAw1knLSWlQ10YFXdaBMYtRvSgWueXmiaMgIQDGGhJ77Pa2Da
	 37UW5z+uckKd4L7I6hvOY6G0yUkAoXAbfIEiGFDHS8mJjZzZwqPjuL4rCu5FqbmdpK
	 xQ0Rs5P5X+xYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93D9C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297791368.23630.8191240247911997686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00404d6786d77c84223599bc281a8b7b4df891dc2b0c0fb6efd1ab81060566a
Date: Thu, 02 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782977913
