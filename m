Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC6E28934D
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754489394; cv=none; b=Df9cQ8T9vYOhlZqfALWZOlEm6Q4ESWMdp5xdHv86hirB6eZgtH8oj9vCOuclCvC2pGYe6NVxjOVtMdUrv9+dhTdtPQrK2SUwKXwxyRaM1NzKMoAtUXEkEtghrdr1QNLhpUtJjxtFN5/vNZbC1Q2ufhtRaKTGGL951mEdLV2E3cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754489394; c=relaxed/simple;
	bh=7FxMvz/2DdGoGJjKTI3rmaTrbSh6ho2TNJwVm/jP05U=;
	h=To:Subject:From:Message-Id:Date; b=EAeV1PcBz+ncUm2tWj4+XaXVePh51GrKfo26DkP2EbakFi75ffOJr9mmF600Ihgx51Zg/Xd3qlTaqyuyc2bqQ8QOZbUwV9yfkxsBADLG8jmnSpDtbNe4nMxAWCkoqaMoiHwn+fgwrC65q+YdVmn/Wt/XbrKws5QfMzFa5rDAh7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTk9ol0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTk9ol0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDFDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754489393;
	bh=7FxMvz/2DdGoGJjKTI3rmaTrbSh6ho2TNJwVm/jP05U=;
	h=To:Subject:From:Date:From;
	b=NTk9ol0mKIS27b5uz4OOfOs7AP+FfvVW3RXbVjCrtLBK7CVLwcnPkyzovJJEV/81X
	 qGzIWnMjQAg5Na0eHKWX2YPf5ei4xE6V5emCtMKHEhw6+BmanWm/Pz5IeDQ7wtege9
	 fqo9/uaWhC/TtvM7rKUk3OYMinHKQ1DfL2/6vWxlR+yL1B4qMuBlmSPuPD2c+sY5i8
	 JY0CYYB3+nb6Q9HctD6wXuGJ8tCDsjNFIRgHCx8tScLnrQjEv6pqbp9b2ocjBGFBeF
	 trso/08jptRldogZc41YiWwtXh7a08sxj30FzaH28pzAiRDEMn7rbF24ivArA2mdn2
	 6hluKQwvwcyHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FFC87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448939357.9989.15243418068688086637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1c47fb2f1cf8d25edeaabceafb2747db2bb6b2a557933aba9ef9b0493b602c
Date: Wed, 06 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754489393
