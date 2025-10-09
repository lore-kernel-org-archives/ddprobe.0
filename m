Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285DC2110
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760053794; cv=none; b=snacpA6rS5tFHVbmrID4llkDUxGKCwFe4lw2v6RsOVp1ZP6ZkNhquo3wGxivfY/xkl78aiGTJPc2wFzgWDRC7N3spEFh8deHYz4DY3/lXCEggivCUUeHJ0zRW9u0SjgvxQYJAw9n/WL7hsi5GJ5rpxlg0TmrI1ryXGsVdNPsqgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760053794; c=relaxed/simple;
	bh=mfi2ppyhPsSPwTxUKiU7DqdjR6vUsky7C8aZoMXun6I=;
	h=To:Subject:From:Message-Id:Date; b=iwIEUF0QXD//JQlQANS1cQFSfnxi6JRwmXQ6wbuLffHcPA2+GEFbQaC3ZXLvCXBQH+ijmWhoVwdjFye/TSBprAfCbqBESzWfMu5GxqoF2XVk5X1rxsxFiPwbeQs2qHIMjVf6VCUuguuycY3OfYB5mXP/A6tpBVJ0Ey/tAVA11cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLa2GR0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLa2GR0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4284C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760053793;
	bh=mfi2ppyhPsSPwTxUKiU7DqdjR6vUsky7C8aZoMXun6I=;
	h=To:Subject:From:Date:From;
	b=BLa2GR0BUUVnH1eedUIjIe5R4cF35OkO6qMc8tw3n+LFN5malMUOlYNzMv8ikZo7/
	 EeyvvZvhWloN7xPUKT4XqXRLUaWoPVaTSq2nuGzn2I0HIaRqKNXZYSajVaBEpKSzkh
	 moMOjjp+JeQuphZ4q5k0th0Y0vkWKxlRWTbMlq+pe6bggJ6Sl2epAg0kEcHyIVlbHi
	 jZnj15FGzpL2CjJoP29lNMjDJizf/6VH+5+XitxrbZfZk45h/9IOoTajjldlUWPp3B
	 H4mRi+FuRrbL8G/dhTX5jNVBsLZ09gfQmQrHU7UKhAytHbm7C7pgvdk4b9Kc5+X0uL
	 sgLd8BShbFhOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913CDCCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005379358.26611.350107002236980518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3baff120a61f581331a2049d27005a6857dccf577512579b1dd44c49bd33a2f
Date: Thu, 09 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760053793
