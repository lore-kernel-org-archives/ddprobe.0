Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B22329367
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777393053; cv=none; b=KXW8QUig1ZEpAG4X16/WZB6+NA7PxFGotOfosta5xsWktZ79pW2AzPrE1T0Y633rB51u2VIxoLt2OeIGllquIlCgTFzPJVgS3bA2t8PfilXsHn+W3iMetJ9lN+zu+1btioFpVJqY9pkx/G84s6KI13P4j/jC+9GUZcV55Q22ln8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777393053; c=relaxed/simple;
	bh=xDRmXOhZCF3Wq/OUryVgRpo8IAqjHndJAsFsCKjWcIY=;
	h=To:Subject:From:Message-Id:Date; b=roLSKSdDXNV74WCUSf1rVD+1o6+L6aS/XCoFUdMAqK16s3KxBS/xJK/SQjGGvE6bszQUo1R/MM8AgMVBEwKiZJHf9uR0EyV+nUD2RvaMB5d3FOk9byBeJDv+4azFrqrlr/KtjMg+eKs2mlSq1GY0gIV2MmltBfUIrwQTHt+80jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkvXsBkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkvXsBkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA5BC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777393053;
	bh=xDRmXOhZCF3Wq/OUryVgRpo8IAqjHndJAsFsCKjWcIY=;
	h=To:Subject:From:Date:From;
	b=ZkvXsBkPS7I3rGfXSQ8ZOWRisci2aRcjwYkdA0/FwuiTrdrT4j6V0sLXqWDuhxJuw
	 nxEhvdQGKbU7uAayTnIlRfD1Yld/95gI0l+BBfMwJx/KhazG/831OHnHb2MTl3+/7i
	 NUq19pPV/kRo2hJnQv3nBmTbxAbU0VDVeD8GEyxvRj3dy7gZ8q0WOmwFGYKD0eVkfZ
	 hJRemev92RvjrjlYM/bos5Xi00D/c7+Lk3Ehy7l25kcbO+RfoXHeV0H6CdrD06uZrq
	 rpuzRbP5L8T36NSWYd/I0gjHt89mn+/DU1dhku7Qt5SU510qcrsqnXqRShgzyQXwLr
	 BoiAcCqY/jaaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA62CFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739305368.19458.1844419444762576888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d805b40939b30bda1fd7e90a773382311bd3bd60c2d5d8bdb4668b73385c676
Date: Tue, 28 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777393053
