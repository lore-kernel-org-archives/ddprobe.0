Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142C1320E
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722910554; cv=none; b=rky27QOgoNI65rf+dNN+gNen5ETutjqM5fsJ3kRlXTghLtlb5ngfPnZPfaGk5Ap8wrgy7PsnB40zbCl6sEQBVvjjlZvMImgoj+g7a0uRKw4BF63I2yFZihfpuVuyJWTPDoJcPko+CGVNGZ2haZPjWb+EMdK0KPtqYxzya1TZvqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722910554; c=relaxed/simple;
	bh=pASIYwQNxyFD8Gshv+9LqhJ1qfUeWg4AN/NHhhl2Wbs=;
	h=To:Subject:From:Message-Id:Date; b=C7SkJNL2MRditvLRi8d+V96GNkjOhzXiDpovNB9TejYH9aqnae92o8segskLZM0kQkPPes4xHHrq1qPXW3B76CIBzhWLnlvb1rHz5L5vjrjevHFrfOkBMObN7P7GZ0Ok3OCo3LNQihjImxCCFubnbuQFNxrkfxV2/mOLD/OhRyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADTFETuj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADTFETuj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A449EC32782
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722910553;
	bh=pASIYwQNxyFD8Gshv+9LqhJ1qfUeWg4AN/NHhhl2Wbs=;
	h=To:Subject:From:Date:From;
	b=ADTFETujpWk26g7sBoJNPX/pZtZHQ1AtToP2xUxUTAvECU7/ujo44pYZQttQVWB7d
	 aO1cc7KMCOr306Yi9EcTcThnOz8JBWJA2bxTuVYjmDJxD3PSm52LtaOkSZ5Pq9MTW0
	 lXGtSr4QCRKn5zVNLa+RW8DOXTjknomEZW1exNf5W0siIO9q5liaPbcZdO/opYv6UL
	 8kINFhsIGPzmPaz+PoCb/cA8Q0j76pxoFkSjoGJmT1T3WKo2HUhOE7LoSXbu3Rm69p
	 X5W0VKNsxXzS+HSVA+2k9T0bvfnnhIRSO/w4yU1itI8LOkhxo64vLumke3HvkJ2N0u
	 KE6KBpuwnLtCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF6DC3DA7F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172291055357.22561.10883297481902572555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d8e6f9ca941fdffc01fa1d9012286ebe8ce6da0e081eac3c741b95eebbe3376
Date: Tue, 06 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722910553
