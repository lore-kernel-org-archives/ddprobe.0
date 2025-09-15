Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F942A1BA
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757906994; cv=none; b=HVsW+0EDmkXIY0X8I/GZlGr5iCbMh6a8q5gh2MKM7kKtJyWZbFVeeoxmkizL0EvZn5nuSeslS9ojw4YelIOyNrTTY46+8glKmi0wLW/sqZadKc2gJ+RuedpGvyZe2HwjyGoyyMQJBhT18JnERLUAeiipsZ+wrqIkJjBOwYa5gLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757906994; c=relaxed/simple;
	bh=+kO9NYOTMAxam5RANrXtIBLBKNkBkiLcYvN1APa4MzY=;
	h=To:Subject:From:Message-Id:Date; b=jb1JqgkvdADpNY7ryTS4eNBQWvJcRM66g5251cGH0EhDYGvYVSu9acn8/UUtkjV/EvOLDgDoBQAGKTgTNMIPJFaI5C5o6XTyHetr+2EEQZb/nmXrvyt6fT8mXyN++qbCJQwPJ5aMSEXS8q0oNYP2uPbhBoCgOD0qZSHkuwSlY20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fe8mzdds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fe8mzdds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21B7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757906993;
	bh=+kO9NYOTMAxam5RANrXtIBLBKNkBkiLcYvN1APa4MzY=;
	h=To:Subject:From:Date:From;
	b=fe8mzdds3f8vCNQAWYKHk0wog71N4a03robO7E2ZbMRJK8cNVZaTqmcg6irV6B0MM
	 1Tvf1BvDywmQTmBh9t+bgEVush4bz4xEdEzZxqDJb+HoFsW7AoM24HBls2GCZcwHRK
	 uMvK8pWYWujxvqCYQ0t24CUcUxzvvSiGSH3kGyL1qBb1p/vrlaOuVB12vapZU4dGdE
	 qGAbbfBoRGIa4aWXZqjEHPIMewaiwKKvKbb86D5XO8J+VZyThJGHMyaMXTq/kI6Eqb
	 mGME25/2NP3Xq/5KCyVnPcR8bcYLxukQJfhZHhfq4V4ho+VSOJ0pWAeyClp897tWvA
	 i5x2MIPWfFxmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D2ACAC58E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790699358.2259.11946883409441188222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c810f31ebb32c9b40c2dd5cc8b1b258931a51809c0c1653d27b41e9c80f1439
Date: Mon, 15 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757906993
