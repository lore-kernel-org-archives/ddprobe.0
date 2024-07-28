Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FCEECC
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722170754; cv=none; b=SVhzVc00WPGhbdtQEQSxojux+fQDYL5qR4MlvnNLODRF0mFesqE0jQYt/gf5ZdikmB+U8PVsxYPDMB3b6JgkloeV/rbUsyxDMfGm3hZkpnwc7qcbovdY1sDsGndZpsvMJDP9RPCzx1z9JUbUYGwpl2Q89Jl/0lq0olndgeCzOeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722170754; c=relaxed/simple;
	bh=1AsSP6wBBZeve4Rokeo+Zi3hrtBouDlKHgJc01PRr9E=;
	h=To:Subject:From:Message-Id:Date; b=pLoCZ6jN6QCWpMGUs49ecbtzHvbtBPc7CVptuorjaN084iqzS3SmVzTfKzEDvGLSWPS5UGhpSdgUik2sOzPcwlhmr73JJ2UvHdJiwSXwO79HqtYqVLH/Y7U2r1CdfXNkagwvrmm0ExmqLBZ0OtrEWiOqMFFJbLHqmq341Y0ngJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLvhpHHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLvhpHHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBEAC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722170753;
	bh=1AsSP6wBBZeve4Rokeo+Zi3hrtBouDlKHgJc01PRr9E=;
	h=To:Subject:From:Date:From;
	b=sLvhpHHF/KTrkJ/Wuiim1TWJ0uuoIdcsuBbU64CDdtMnY1DqRmUE3oXZmwX1zx2CZ
	 hqdN5XgVe0ojT5YQCsU2/QrgmrOxBJsRNYglnyPnLj3NHVf7g9ix7YDNxlQnI1j/G7
	 ChQPe0VVEs5cnv0lKItVlgwpCTENn9wG1B7ya7h0zaGE+XW9yQKa8TUWZjhg/Wt+++
	 epsF/sBAsZ1Ce7PrYfhoUsvGZqTUhSpiXozFBkvrG+G3+e1XU+b8Xm7vH9w3zGC3YJ
	 9CEp3mEMlaaLj7/riHgmBNw7BNmWZsxjg+fs08c3LtkmdXuc59AbQs+6Xnwn9yrfCz
	 DiMi5ekDJakCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B122C3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172217075359.5106.7573026372085319159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7a04980d638d8852a1f4d63c052beea1dc0205aca11e21e34cd11e7a8d76c6
Date: Sun, 28 Jul 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722170753
