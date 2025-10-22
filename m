Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB3E2F7475
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761118194; cv=none; b=DvdNWP4ZJGgEG5tGD0FrkMMHIeW8rYsu3JGf0Clb5R31liI/t7H0sRqwrAnx3fXdgVrOHa4lp/1qhlbOr9av3mfV0iNafhVcS6bDhgT2xUYgMttRwKXuSq9R2EcTX0+NZxOB1vUsNbbfeBVKG7mRe6xZIKw32duaeEKXCglzzDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761118194; c=relaxed/simple;
	bh=UlAgBIdr7cHzghkh1hGAISJcfT3XzDTJRX/3SebMedw=;
	h=To:Subject:From:Message-Id:Date; b=jUZSwirnyJrB0jIbYjA904J7nBt2cDApJB3XCengVEmfDdjelEU3jno+l1HZgLUg6FBEfNbQA78fplHBzDRmsk6em/m/gv5tLP/PVoPDYeRPIdWgb1FyhSQt/FvYLMloHpNTyU35PP1nDeLtaK7Y1W8PC73snXR/I0nefTAkM2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nzwx1I7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nzwx1I7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E0DC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761118193;
	bh=UlAgBIdr7cHzghkh1hGAISJcfT3XzDTJRX/3SebMedw=;
	h=To:Subject:From:Date:From;
	b=Nzwx1I7GOCd0Djrp75sJ494o+RucCgngyJbOg8f8sHYeARTGJky2yiWluuC/mf8/M
	 +NF40eImZo0wuYfKVqzQ7owsZRtdDanLYmUfGDxieI3FQUCteoXrlM/6Vl26OxK88v
	 bWaSKIpSQRIImSNUqoR6XDnTZCOBT5bAeZDHGKJCVDS5fLyZTz7kcw6jl1eHZlVnP6
	 P0Y6IYhW5zEjJEpo1mQsIpDl8Q8lTlOzqH66LOLp+2NwZkCkpo7kV0YfTVrmKqx2df
	 KtCOTFzBwyf2LlkG6rLFR6CBoNLia5EsjurDqVyYezHscg7l3WNRi33F03ThlBCesx
	 jhkyvsvvzvTsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB46CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111819358.19828.15331680379407181372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dffdf3478d796b479df3966bdb050ac7acb47c2dd6dddb9b469e0845ea1d9cb3
Date: Wed, 22 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761118193
