Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2F620323
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736000754; cv=none; b=qzogWJKKD5Azl8FoxqpZOf4IELokLTFZmmJDta5e4o/Z8pX3XdT/WqAqQruSza9298NJl9hpahJ3IWZ2Jc0Njme6OsevnK8kY/e4f20vXIhP2Fao0iyePtSap4jm9fHkKfhq6ZjC3Tbo/OIQODzwKtty8l7bfjW5NtELqBoXgFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736000754; c=relaxed/simple;
	bh=z3F5mgOrLTPk4QrLSU8ihvKM5MtIx7++a1Ps5b5EUpw=;
	h=To:Subject:From:Message-Id:Date; b=lxifwr6+sufQbNWHSO776lPOiK+2mM5j6HhvWyfiHcy21l2kkvF3acYQ6NWUjboG/LbZs+xjG7lOoBQb9qKCitgNdhyqyfDjnI01Tt3w9S7ejgreORzAknx35iDcEfq4/4aaPCoIsgf73f/+JLb6FAVVJaFKBuj41GGrBz5vj/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vwll4JS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vwll4JS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB534C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736000753;
	bh=z3F5mgOrLTPk4QrLSU8ihvKM5MtIx7++a1Ps5b5EUpw=;
	h=To:Subject:From:Date:From;
	b=Vwll4JS1zeX/tUkg+5ZUS4b7iL1qXhuUjDtjc47cA7z5MpJ+4QCjBtoVi9Sj/e+Go
	 2NQuzakWiQwVnqKYVAozoYk+a8H5HCqzLzFYDFzwgU9hoe9SVPN+C8nRdZBZU5xVrZ
	 C2YuJ/WTRMRS6YaLWUW0mwvxj6Lh2w1LFwAMQ+HTbThOvvHBiCCW7XX2FRumLh4KtT
	 b6WzVg75X4QuVgkkLKLgoRiNukXTCVGs1LnFvXRmrrph/dDltwI4PqhrMnaL47Rqqr
	 6ElX/uZc7Q/U55qXrbDK+7o6C4AScw737ERLJFHlr27Bz7Tp4EMcT1zFJhYae1K8S8
	 eyQMSuh/DHNrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B367E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173600075359.8306.17887902542798682321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3517d3f40321b73f170a221630425792f379b0d9f66fb96215226fedc9eab444
Date: Sat, 04 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736000753
