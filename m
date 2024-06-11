Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5528A172BCC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 08:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718094503; cv=none; b=KuWzkdZ8w3iqNq32i96BMG1IMmPVAi4eu+MhTclbGOCzp++YUSLNX0S+ekYhgmG09lysQMgadgy8WIYqAT8F1+ZapCSq24hsUfDXXPHrv0uQqSJ4oOMboxZnhL8bxjHsX1dXoppOy0PueryW5Ft02DRczWsNQ1MvUdVlLRmXICM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718094503; c=relaxed/simple;
	bh=VbwL6f2NMljZN3an6yvQH0dftsyVsztaZemALXRK6WU=;
	h=To:Subject:From:Message-Id:Date; b=r57wuYjQamdE/UszasP14NS+g1nmLLdtYLC0Spows3Wgv7yibaBufjp9NyJjoj6cWp62fZ0kMQb54FX/kMjTtQR2VTxMQz1xagvgjKovoivAtGQWcfBhItipY7QC/+XTCgu5XaGuh9EjM8iW7owXIm6vgqUf0MA4SXXj25eIRhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlhT6ZRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlhT6ZRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6820C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 08:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718094502;
	bh=VbwL6f2NMljZN3an6yvQH0dftsyVsztaZemALXRK6WU=;
	h=To:Subject:From:Date:From;
	b=jlhT6ZRRjLZQW9769DPKYUVJ2xG3B8BEr9dAr4JlcqkhVYOrNYu8drIe8geJ9gRmz
	 uMd1IF2hGsX+B7e1orihLTWaPOQ9MHDCRb+VxIhxkwHdOKKIS1F23ds7y1kr4uworP
	 7jA+y4xpoVt5J1WkM0XGw70LUotSe1i+tj+afoOalI+iAixKiLTomQodK0QHehc17o
	 4fr3JilRM4CYpjsfKmqLZTxTtsd1nKtzMtfrRG91Umz/3ls/gGGrpBkyaX+wVh/PO8
	 o+PxWzSuL3nVY1t8fj48EAXa8wQshLHZd16vWZA3m7hSH8NaG11XYs9jLvSEJk2n0B
	 WTm5ku4lSrjIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5729C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 08:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171809450285.10878.1311853225229259410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86c6c54c065c000fb477cd2f2c4bdcbe7cb26cb2fb816b1058b1d7090d877b4
Date: Tue, 11 Jun 2024 08:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718094502
