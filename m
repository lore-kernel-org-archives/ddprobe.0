Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51FD1427A
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775363734; cv=none; b=gvU6mNfbjF6UabeMBAQ1gjt6jYBf3yK6wLpP9qMupOuzhBFR/n2A0svj0+ElBVvdNPjDDill+cipQtrdO8B98M8qXkB+eHaYpXWKNFG4X3fkYH9ej8UyJD732iayz1uW0yrHXT+zwFUq2EwiBpi4P9LPbKDy6x0Yv/+PqODMSIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775363734; c=relaxed/simple;
	bh=OhT7bykO1obcQOPnqfpyqaKCDoh/U3HyIXOD/euRpvE=;
	h=To:Subject:From:Message-Id:Date; b=OG2h5kXtAqU/zfmAAmPMGpyL+kKE5zVuL07rQga3DasVIGZxhCuaC/qKX5oSL+1Z0tyUg8QGGc4p5CCruSpXv9qEPo4aRFm/d97HtiqqWUbS/34CI+EivpK2NE02aOeHXrz4XKaI6AeihLYjPqbu0NKRNLhAiMtwRYEiibheVlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/Us21AD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/Us21AD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E6AC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775363733;
	bh=OhT7bykO1obcQOPnqfpyqaKCDoh/U3HyIXOD/euRpvE=;
	h=To:Subject:From:Date:From;
	b=r/Us21ADbvZ2mkLTJwA3VhURzZs/Lp+0CCwuJtReQBE3upv1/zMUx8fiH+wqDTcYG
	 QKJ5ZapvA4+6nPAShgY9kNoeG/L5Hi822xzt+6T4b2lYbg/Nvy+zcD8JOMFQ2aeuuD
	 LO+zszjSOo1nHdfdlxlipav6p4LhyDx/sq43pYPcWOeH+e5S4rQip3czVbsGt2ac62
	 aLnUUANnu5Iefyn3j415KH2+9/KNWO3+uwE2c6C8+WX+sDXUJ9XmAVNiFUVh8iCuGr
	 QU8LQkh04eSx9TDZG0ZRnEjvQJUzQ5t2KZQovw47IjB6glb9hxb5udIjGMdT6BG/qn
	 Gc6kFNydtmS3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5387E64004
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536373370.18398.11976942235595663693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43dc6f46e0aa80abf6937496e3f0852511ada0fcaf2eb34c2f226e5a5bc25b65
Date: Sun, 05 Apr 2026 04:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775363733
