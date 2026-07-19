Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449481F936
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784437114; cv=none; b=d3l0FX3hqgY8rI83LvNUS0GPe1jzW2jSx/WrN2K5PfJaPwvKh+oIIn43iZVabVRglGEK0DXgA3jgct3M8Br23UfyxpHVMOcFmph/z0+2bbV7S4MI4TUPYWqUzG138Zo36wVFLPigCJPHscF9Lcoy7Xhm1mMlGBk/WSF+UnGMsh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784437114; c=relaxed/simple;
	bh=sz4He97rS96Z8cVgUMapm4/dfv6JsU5jaIhAXvZf3Y0=;
	h=To:Subject:From:Message-Id:Date; b=r4DsCEyoHdnDL2d7RWYexPm5mAvh15shSCAa49reQlcvHstMAKW0SzILo8/6FSw1wIlvYOLjuMuTMqJU+ChasaTypRNaPMSqK8p9JlOwqAPNMGhYHbDNa0I3Wq2SCSH87z0hTj0Sg9Uwh+h6O+NmD7tD/UAPuZjbj6MIhQsYuYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axNDSROZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axNDSROZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17F6C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784437113;
	bh=sz4He97rS96Z8cVgUMapm4/dfv6JsU5jaIhAXvZf3Y0=;
	h=To:Subject:From:Date:From;
	b=axNDSROZkmVolYkXryEdDTov711zf5sZN8NPu9zzXTtXs1PBgypDRc2joa704+ZKV
	 /7OBQPzEJCmw2PqMwCNrCPHUjWH7DAy/Dc95sJD9ZuOHTCyJHttinmaD71BauUabtO
	 lNF7qCAeOBhcnHUFJ2trCdOo1ILLQP1f0CscXXg06GDWPglC610N5wqbNqYChhcIeM
	 Fh2GmJvKncEFG6J0oYvSwg37J9rtiA8VzzZu915S7I6YCilHvc74+sYzyUOkson63x
	 7MjwVXNsZWcvGVfxV23MwWjWyfqQr0DgWwP0EheSe0rBN3skEfZEqjTJka4i4+HgAR
	 ozGaf7+pu5LKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1B1C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178443711368.11832.18200698882196288872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 810088d9371623d75873882e677875a41d3882ae9599bf7da50fc3a78dabfdb8
Date: Sun, 19 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784437113
