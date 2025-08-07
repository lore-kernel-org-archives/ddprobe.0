Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EF010A3E
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754563794; cv=none; b=Y7BAQheTqJCn8fyh18Ye0rHihE5zrx9Vx0OFRvi9GJYlMXrRWfkCZphclsXRdkEquZsdMEVWyv7saFtI9cPilB70e37M8SW+hVkwUMFZ0HQlSHEidSlNcRsOB4bo+lXQsrEvnmB0iqzO1sUj39rBkDpFoCueTU1rDEwT31uzt7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754563794; c=relaxed/simple;
	bh=8nUjVFApQcSw9OH6vEnwSPTtmDOicvqzOGFzhsTrbbA=;
	h=To:Subject:From:Message-Id:Date; b=pxPEDBpKRjAfE6MczNnrJoLVyfOpiwBlpva4Ie+aJjbGKKlOU8kfqbcj82D/umcdUSzYyMhnHZ7+lPJAzrUnSKZgSr2h9BYfHtaJoOmPhCs//kVCc8KgjR19a+1ofW4MfaTthFJ6ryR3XS8ceaRHn2dQOzvBCic65BFdclYtgfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kA2epa/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kA2epa/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B83C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754563793;
	bh=8nUjVFApQcSw9OH6vEnwSPTtmDOicvqzOGFzhsTrbbA=;
	h=To:Subject:From:Date:From;
	b=kA2epa/77kvH7vx+XHt5urJFGVJFNAz8AepbnDBeMba65AEaoZsa9Q4B6CiIE1BoM
	 H2zsuvk2pq6yTOzNYmOS/8cdHVfbng1BeNhUQcVBEfEoX31bUAmac7FEkH0U6+CeaQ
	 QILQqj8Kh1TFjJTws0MJWMRkAj3YD5u5DolHC6o/OkBXmvKQcBOeKLDDLsSUU9MYOT
	 oOByoWZai+FGU4RAuqMkCU5+y+oLmTFCn17wjim94lDU7dBGZmPiCe6cmbBQ3mcVRW
	 LyluU/4iSrbgi7q0M0DjONrgK0OfKV4OcvjTv9b5GC+PmCi0/1rKukezgegGeJhSLY
	 bdnz3nGHSlb7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91144C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456379358.19137.280619497925224440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b86db28e734505d763ee2e6169cc0c63346a8ae4bf865948f7104506a2cc30
Date: Thu, 07 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754563793
