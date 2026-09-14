Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2025F1FE451
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789390834; cv=none; b=d03BsP+6VESqEgyzPo/dyCKDAynmp58teepXBQ15Ftgv7N6bXkUIIChsq//HmNIHQw98n9Y5zdkqpbarBWMgGKvbBv++mLb0IdU7janXpoG4/W1yx2Wjo2vavdrKx2yhTntMdC5hcHlk8TlkICHNOcj9daXg5DVY4cW1ox8H6XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789390834; c=relaxed/simple;
	bh=oypNTp5k6P/PdTzRBp4K7g9IMukE6OuEFWfq2BUt0ug=;
	h=To:Subject:From:Message-Id:Date; b=rxGHIkWC4zNCARIoMYenhb2h6cuE0ltQZA8ndEvQyKKBDQlFQSE4qc7N7tUmU0KhXbvTrITp3StRPgHBxFOS4TXPGtDyqJ2WLlAWSlMUFry5/s3sZB7AFPanspNfSlwZ/eDVyXaiLWI8IjsUXH9SEpGD4ddC7vQUO2lTwxKm1f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NL9ZV/44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NL9ZV/44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9801C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789390833;
	bh=oypNTp5k6P/PdTzRBp4K7g9IMukE6OuEFWfq2BUt0ug=;
	h=To:Subject:From:Date:From;
	b=NL9ZV/44cZoleoTvan0h+bqJ/bR/RRLJuIN8/jpG3y85tP7kUqWPKs5FxcnzKytEP
	 it9HBSJkvphduhqoLZ6L+UEdcz1+ZRjz3r6yGCkcsx0VyoGf2aI40tgIzDJNGbQsct
	 68ulxG06Z6RJ28eBho1tYnTeNTWW/rt57WfG7G/nNzpsasyTRIILnTvcuQvN3Kci7h
	 2DIlocYpE4SvByLmPRuJ2KGy5RewaueJla/LHay1c9Syr8KEd78vXYDUY7oA4jspHO
	 iYL3FYE5Kt6rtPJ4gY/F3W/Lz/IPdxTtX7BvxZmW4yN/1LizTneBMLMiCrhlI6Woqa
	 115pRBx1tZ0UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD72C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939083369.19909.11279941334115258814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34093fd7433b1d622d8688f5bd07f02170214183d60c2ba1f511b0e3191bcb1
Date: Mon, 14 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789390833
