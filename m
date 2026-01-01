Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6AD1A3029
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767231234; cv=none; b=ToxkIfe/TFz0DDzSXozKojnqrpesUDdRURip+kLTmiArd/qr07r767o72yq87W12kPHofgd6jbdiZ78vq/J8b3P2Pw3kHVZp00c+wlqLkMlhyBs1sUWtpUCDb+94fbr5ywnHhx7jBA1nGApeiuvvNRVgv9jRB7SDUE3pROaPzRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767231234; c=relaxed/simple;
	bh=W5lJLpeQqtndD56IGGMctDfR1XzJKfrB4vb+YgPfLbI=;
	h=To:Subject:From:Message-Id:Date; b=cBIaZNVFV6SpyJxscOIShvEnypXgE6alySQujHVYvB6EipEXPsLVAMwK3FcYmgvVzjXWDjEJKEce9mms9emgHo/9025cdH6+d+DqTNKg2JjWm23nS5G4mWV/vFmfK5NNRWm6/I94UPAPLf5cWBxcCTDveAJaQjpFARBZaOn56yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtP/k1J6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtP/k1J6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28C0C113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767231233;
	bh=W5lJLpeQqtndD56IGGMctDfR1XzJKfrB4vb+YgPfLbI=;
	h=To:Subject:From:Date:From;
	b=BtP/k1J6UB8Ks6tbVxJPINmd6IbJ1J19J3/McQKMpS1a6V+zDyNK94XBkHNuNYKE2
	 93iSo6Y6FcZuoF9mqZ85r87voZPQZgp6dPbwgxu2I5BI8eXbZovMTPRnec4F12+4P5
	 l7J40bwSJYD26YeHdo/DwiYcQPbTfZ1RP4uZKxdNDYicaDsqSjbDNUStUWY3Gztkip
	 lOItR0njVIInMtQ58m9ttIdD8ZgQL5wMmGZNk6bUETPLzM2cq4B95/wA8ImYmaFsgW
	 n/bBibBZVZE+g5YEBUTh9JQEBARSRGcV6m08gChzwnAd2RuJnrwptWBFvLS1tlD4Kf
	 RvbeBlPtaqfZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9502EEEB573
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723123357.9197.2325174813248607107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ae9ee14688606f11b1509cfb649ed08e3bc6c6dfe583a3ae05d7d01110bf9a
Date: Thu, 01 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767231233
