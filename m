Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6560020EB
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 13:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720962023; cv=none; b=sIs7e7n+8d/P+WnClkYGTSxrR59kwTj0SjIwuit+FmBfC3KSsEygZpttZ3pCrSIXEelvExYungYUQKqBF+t1qJEXoEz8MSC1krGwcTj1eCztGiFcbZ64kUst3EEA21ENOimEc0szPMKbV1HlKj0HszLeTh6PqZsZ4h2qYUD/KUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720962023; c=relaxed/simple;
	bh=Lgi2vByVU5jqs3Tfs6ZX+pWRxtRf9pnC/KT7mJGpqmM=;
	h=To:Subject:From:Message-Id:Date; b=BJdQWYxTYhG+D1ucMYEB0BpaQNgzD0TlrxkC1CGy5Ys2mRhL1tJ5WsBGHLt/IovWPi+Q+HsjoJVTYIDN3B6hhDZpLPUKlznsSNs1MOqsvJwgk0JY1HO8x4xayDwyfuhJ9epzBCwe7nzvgdNTVrVc0smzuE0JfqeKHGssTcUHrVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwz4FQPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwz4FQPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA5CEC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 13:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720962023;
	bh=Lgi2vByVU5jqs3Tfs6ZX+pWRxtRf9pnC/KT7mJGpqmM=;
	h=To:Subject:From:Date:From;
	b=iwz4FQPbfoT9VBs4qzFSoS9kbx9HBNZCzoQkF7a2ujS42t+bHHMPEb/IlMM2Mx2Cz
	 pGat01X8WLk4QK+WxF6ULy2pOcVM/r5tnhYcYWRdb72uoRRhzdCAP0aOqeY1Y0Chwk
	 GqZHM792/zPJZBI6kaUxJzVCz8UC6Y4f0snwITPVvAt3tq67FN3WHFQtbvlEqnaw2v
	 ZIQlXcwUIHtbwX3UPmZyKGMW5mauOK/B9y+o8+931UtsXQluhfBMoDOE2yP3bt3LCm
	 M27LE9amwRgM0kEknyv6FKwYI5KOEhfehaeGt/N62Yhk77VGUak1dvpa0stuM37q+D
	 R0kOYv8UicLJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7552C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 13:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172096202287.12538.9701865435384266054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 174e1afc06c0623a6696d48c30cbce08c80bc39741e17beb424623f6a347584c
Date: Sun, 14 Jul 2024 13:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720962022
