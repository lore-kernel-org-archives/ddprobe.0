Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E510917D2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706072297; cv=none; b=d4SDpbLhSomVj68ZtJlsII7ym59dbqkr95x0d51YirwAS9lQDROyk+Ls6cDb1HcaH8yWrmRyVJfh1E0CdJ5Byo3ZNJsblwCWL4vzs6gyckDREbsW+HMgQO2Et+h98aGDY0O5U0sa2iEApxxoa68KnCezkw6qRg5lCLqXs8F1lRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706072297; c=relaxed/simple;
	bh=hsqdOw2vuRxAoIUICKJ+EqxCZrdZZBVjcjEI76jwWVQ=;
	h=To:Subject:From:Message-Id:Date; b=CzQytnMtgOu88oIUe6HEDYLluqbod1uBZvz30sD+wOfxamMD1ZjJvd8kyZnFk+KuK4EIp6zhHW47JgK1xrX2KHB1EesQiFoLvuZlUn+J0A8qcVHk4EmmYKBOS2VecOi5M7gaF1eFVCE5y/A/GU5NnTgNvifvWB5zAAr8IGe6OoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBRibsIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBRibsIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C7C7C433F1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706072296;
	bh=hsqdOw2vuRxAoIUICKJ+EqxCZrdZZBVjcjEI76jwWVQ=;
	h=To:Subject:From:Date:From;
	b=eBRibsIYIqUJHGFL9xAnijBlhjf3NtMnj7/t7NshslikotPRk7pq7aeLyMIkASs7h
	 Ny2V/BQB2AXmlbzS+IlGp5lL3UD2Rlgnc0hSfouR54pYTrPUmuAU1MPuq+DOf6vMiv
	 8Tl+47s43voU8R9osEPXncXyVexk7nOhIs6o7qoExTiDTrEvc2nSTgsFRCBR5lIlHI
	 scqA8IRbHsGY3rQvr5UE7WgeevrLOBrX/AzNTBGRxiS/RBh7BxSmyp2R1xbe+u95kI
	 rdVSBjy7Jy/tX5K3sDK63ew++OEr5V/jNA7jeUySGn4zd3vssTmV8ErF5sp5U+A/h0
	 cYbirVVADECXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E51BC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170607229636.18760.9588758817930415196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506436ab28bdc279f33231b1a805d59e3f78c8dda822ebf9f73830d78e7573c4
Date: Wed, 24 Jan 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706072296
