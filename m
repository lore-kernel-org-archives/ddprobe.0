Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A10D2BB1D
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782778714; cv=none; b=dtLsaIe88iPY8ghhXijgvlihXJRwgnjRWVa0413h8dfqbZ+9+q7RRex2M3k7d6/gaob0G01L0Km2vMGVxsREbXrjQXKlODpgnXtoG+gd+541V376KTgVvveebaixR+ZxGWrMBPzS6pPpiIhdEGyQ/+MxmEWeO9ac96UW5YnqbKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782778714; c=relaxed/simple;
	bh=c72ZHz4Tanao+BhvLpbp+G6i9kETpkCDw6O9Q5uhorg=;
	h=To:Subject:From:Message-Id:Date; b=WAjoEZsBuJGr8qLkMhg16JgUj6aI1/TPTz1Mo1WkshV6zSLmU6X00ju07a9o3tdZzEDwkDFjbmGuZNzKEDrGoyh/9zTECA3hRJevI+cz348jXXASgCvyxcowMggJPNoBI6fp9FsB9qAlxetDnpG6g7Os+U6quK5lCj/PrABEEhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEB0cZVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEB0cZVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C370FC19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782778713;
	bh=c72ZHz4Tanao+BhvLpbp+G6i9kETpkCDw6O9Q5uhorg=;
	h=To:Subject:From:Date:From;
	b=EEB0cZVQwd5fzXJQ4kkWasMD8YKo0pPbduMPH2jEaC9I5QPh7Z6zLhe0tPFL3+sYl
	 h0NErWMQGIcZktuelGEZm+LHdyeYDPsp7QFYnOLOU1TqGnvlEq1XgJDn9ZFAHHcwiG
	 9J9o6o0CxqcdMYr1UBh2FaQtrfXxfOH6+de/6meUW7kVO+OJ4764n3Y8N/sLYMcFpA
	 wAtz4pskysQfNLvTzsYGh4KXUvIgY71Jq7utca231GR/wrfPcV420cxKIGoYAxrLUP
	 CaUWKldKA+52CGUhVj8cKQtlgs42bYXdZWxjrkSLv4ZpeHo+iNaQ1zLSXTWGpLQEJA
	 at0UzXJVD0kPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB09C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277871368.24529.15198002126222806439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b4a6eedad678154dac2788b17131eb0e17a19defd2d855627d13af26ad78e4
Date: Tue, 30 Jun 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782778713
