Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA1D1A9B24
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751803194; cv=none; b=Uv5R8cyGovLrn/jfG9DtWDf7aCSX6xMAx0ZlPWvO9oDqPQ+0+Cz/qbG8RMCbmEx2Qa59Vlax75hU0IryXtjUJXk8OVAt+3R40HTLK/0F9il56z1NW99daR1U69pBCZPr+HPW7rCOLaNSc2Ug1E8RBikLD/SFC2GpK0vW/JFud5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751803194; c=relaxed/simple;
	bh=Fdt9vGIOQ8F1QIITGAwjugNfOgnxj/1JtTdzaqdTMJE=;
	h=To:Subject:From:Message-Id:Date; b=cVaJfkoV7tEfKbq49ILPmPJJBbOdZM8QUvIae/0i4Jx9absRQE5eMmmR3km9snbDwtUoJEvkgEUEKMzHeYqoClDJZgPzEW/OQzJ1G0JUwRnMhx701p8SR2n5cpNYObANpzUUk9w0NUCOPYBb2BQ6QUMygb9bwvHlENUWfLD18ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xljn+4KR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xljn+4KR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0086C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751803193;
	bh=Fdt9vGIOQ8F1QIITGAwjugNfOgnxj/1JtTdzaqdTMJE=;
	h=To:Subject:From:Date:From;
	b=Xljn+4KRCcj64WBPeTd8X+0AxmgEO8+hJSh/q/TATvPL3LZ2R5sjyYfNl0zlGaXfm
	 1RE1cv4xABEo7Mat0G2sTqWUxU26s3xCN3U/oOErUWY5dJUSSZ8Z0ug1L4KI4ZDjA6
	 XXsydZLxP6bd1x4CbAIzsQeXfLPq1v7PdmDfX++zcaOJ7Sofwxgm8yx7G+MScWlUwU
	 cj2UivpGjSaWbMF8sejSiBj30S7k77vTezvczrT8kdhpkhRRG1u3nLd2m66db9yFxP
	 p9N9WMJUVRUgOoJjbnupnDrLIOkY6aXWmC4DSLo5bDnd82o+rWkbEWI7n0T3xvZZrS
	 FenhPARIcrx3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91733C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180319357.20798.13032546046121425659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47672a076f7c5d0a9fc0b95ba4601ddb33da2eb550b54995f0b809ddf42f207
Date: Sun, 06 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751803193
