Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570813AE183
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781555794; cv=none; b=qXwq7MKrXWH3i3O8haLYeHdaTCtQ6CEgzcUAduc6qVr8RbYUPo1xXkUYUXo0zNHGXZ0qnskiqY+rXOBxSCU4n2Xd4a1MutJHG6DwMx8NGQ8sZU73G4Ju0Y7toGjcm+9ukGJ7bRla6G9/rCkxnF62h54d9tHoy4o33r8qankJGew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781555794; c=relaxed/simple;
	bh=PQrQirc9EhJL+wRL31A8Mt6MaShwyA13mGkVze2C6sM=;
	h=To:Subject:From:Message-Id:Date; b=UZgdxT9fZktXPNA8Z+C5oSRdFPUsdNJjD6Ro/incTgg78GpiLo26ORvJy4N2EypYuOZuRXqej7vtPoh7lzswSHJX2rZM+QS4beIUernuWh1EXjoxnSkM2Usg4CjR6Cu+uEs0i3x0lIYFwo8Wvp9aaqCYPpm1uOEg0QrQkAzhm3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JR8FL5Pi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JR8FL5Pi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A6CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781555793;
	bh=PQrQirc9EhJL+wRL31A8Mt6MaShwyA13mGkVze2C6sM=;
	h=To:Subject:From:Date:From;
	b=JR8FL5PiCDiR1A7o8LnMNpGAcevXQY/llgvbVikTr/Ikl9Cf2svGAnpCozZ4Gx65X
	 Q/cV3sREYSbuO3jQSz3defudS1bNgbv5FqfeCVeZfunpN/v6VsZ/QzCDL7L1kCc1Fo
	 f0kCPoNbSftYZJTaNU4dLymZ44sKUEI+aAJeylbaPjK+Q04J9zwjPL62ugYtVArSkm
	 xDUyQ2TTd7yCjhl2Ez6dI8B7ibz2+0tRAQkrwwFgvOtcmA8Aje6oP9Lh0saVgqu1dr
	 z8yPuuHvaK30uTLxKIk2mSlZM+kdh7V1CC5ALuK29IFW50fC266cUq0Ww959CBieXG
	 DTril2YW0YuDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0269CD98E2
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155579371.11186.5555734807264560927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77da646ebe09d3fce122fb626fdbd698ae592018122d2152bae1cedb31aad60
Date: Mon, 15 Jun 2026 20:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781555793
