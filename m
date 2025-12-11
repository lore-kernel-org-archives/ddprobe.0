Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3124B2AEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765444974; cv=none; b=mhN8vh/6+HodNu0p9Ga1yel+fEHeC624qY/TXd5g/xqpigjw3Qc8kyrBTP3KBTRQMF+v6NNi9KimZ0txcLzinz8qXOQCX9xtnLS4wAyDNYxVNrxcczVE9ZYb1FpkZ9FSh/VPoGnZTYy+cHJz1FRSBVnTMueKOQdLPvNSVZz1CHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765444974; c=relaxed/simple;
	bh=XBVLheRI2Dazh2O2Plgqf0plRG9o65cmqyT+BL08QpA=;
	h=To:Subject:From:Message-Id:Date; b=lytpi/QmfLHFb1eUrAR8EI7aDSoVZLWM+NSaIWfc2wycrPvkAfavXqssEnfTErvOoekAISlT5Ski7FeGYe+suabBlGtZH7dnDF3I2KgAmoEC54YdQfaYG3iFrLfpMZ7KhMgjsSzy/pcoK2xIc+L0KMZifpipvzmAbKIe3d7ywbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trBAUkcE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trBAUkcE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B11C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765444973;
	bh=XBVLheRI2Dazh2O2Plgqf0plRG9o65cmqyT+BL08QpA=;
	h=To:Subject:From:Date:From;
	b=trBAUkcE8F8/Kis2+5V7nyEU9phvfdVmQYREX7MINlBfAqZvz4+rXkjH5DwikmP+E
	 Z0plYBRoe9YEc0b5gX/OKtaAF5+UCp98SpD6Aov4oSK6NW3XhG5uK9Hzhwj7UjNc/s
	 uj/AlRcGBPDgU4EUvBLpeg5WAm2Kiwn+9o/n4rmQkssSpySJncQ8dd1S0T0ka4MElp
	 u3vy7ZaAqgUJHlGoXViGpxtxKT1kR2Agz+/OH95bgOM/z8JFkiH7LslbFs8IKlRPpL
	 kIIrdok06JbpNq/9y4hetdsuBnmC9R7UJinGIs890FBRrc5hlwcMDpLMZ8ZSJ+RHLw
	 5/D4RJVYorSOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9256BD41C12
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544497359.16099.5540379790730991954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c5c58f9e581d5cc41307316b43b94ad3687cf4a3a5176e0f1aae9fa2e11f30
Date: Thu, 11 Dec 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765444973
