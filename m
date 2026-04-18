Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CE240DFDD
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776539854; cv=none; b=L97XekzybEH/rfwoNEZ5NicAorGKqf3vuru3Ypa/1UtngPoZ2hjOkPgy0/+T9sI6ncAa6L7vTCEldaUp3PXgZ4UeN1/TtMm8Slq/r6FDPPX+B3ZEIRi6J2V/fzUOIbn6hdW9bO3ESqBTUAY2e5Q9xRugTLA79GEX9EFAWzP5EVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776539854; c=relaxed/simple;
	bh=HJts/YMydyshnMpSKbv40UaAi+p96S8CjxkGaIqtOdE=;
	h=To:Subject:From:Message-Id:Date; b=FQfSS+K9h2NTgflembIyddBaD2CM2RbcdZ+bksETCemZT4haX1K+EYoAmgFgy4knwyKmGWPFV486HQLMBlVNUClQ3BDOmAbJeBiaI1tGFIQoD1AgG6pnFWcvqhFpGnFKhkvUrubg3i6GaJEyJj8/Zl2TxlnwN6i1AkB0W2JQX2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kER95HKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kER95HKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DB8C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776539853;
	bh=HJts/YMydyshnMpSKbv40UaAi+p96S8CjxkGaIqtOdE=;
	h=To:Subject:From:Date:From;
	b=kER95HKt3NYuZAFGbf8D8FbayoskQ8thNQ57qGUJSIuatc8gpfyDx02NrLEdjaNDd
	 C3PDpfBRH+YLGhMEHUUOFdOEJzu4SAVmsZfrlORiyTvlvkB1fmzPGpMq/mTz4NMP8L
	 4chEEQjADnR1844hUocZl0HvbLl7utEXkivQMMHpn+bWA/HYhR5UXWl+TOMiyCyqWM
	 IRZHO7/YyJZ77GJJhJ+yRmn6MN4XPOaW2DfsT2OrkZUZ+aux98NkEhj1O6JTjRvUT+
	 lEm5rNxoaVgQbcmUg/X1diqTFKNffs/ngZtjE6XER6mJ1IBVkcJXhhTz1BZYQILIHb
	 4phOMmOZ73BtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B38F99C8E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653985368.16400.14595111997119039282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9742f3a81b62127f551daf6fe82fed553c132e2a4fb360429095192096d9c66
Date: Sat, 18 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776539853
