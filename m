Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A5D8F49
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759940394; cv=none; b=L7ikxLypdWoHLNPsVYc0qEOHaRs7YW0RPoM7EzZJYBSbrVJIqHlNKHKdRPW74NT1D1jExw/jancCmQJykSjHB7TTv0LoTKdItTMTxFbEvSUd9PytGxstjitl7KGPFpX1PUBE1Crfu+WmfhDmpEEczZ9+WG9bhH/tjVhIPE9TBdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759940394; c=relaxed/simple;
	bh=Hwj7BHnLOH0HpOvo5yaWMMIIFRnPN2Gu9FU2ahqrxis=;
	h=To:Subject:From:Message-Id:Date; b=P5gy+o2bBpozAvDNfjyQwKyDdMLIWylAB5T0ukVU9uAzoWbmCYdDPW3lEXljhXGzHRF34BqkhpNYMbS7787PJJZ6NJo3eANFfXwtFhUZQTlUyfxCw4AtebeD5MXdSgxRL7KRqlwhgUajbQWE5XDnfTthESBcgwwmiTy7aA+H+O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ea55Nwdu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ea55Nwdu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5625C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759940393;
	bh=Hwj7BHnLOH0HpOvo5yaWMMIIFRnPN2Gu9FU2ahqrxis=;
	h=To:Subject:From:Date:From;
	b=ea55NwduBAD49wt/y7Ay4pJ1N/dhSCvvjxb21BpwACv0ooSQMcCnakE3RxESw58Iz
	 K4fbqFAQmL+95LGZOYTpW+l0gv7XgUJki92hEp2pW3zo5J7WkRLi1ML9Po/cmmyx/V
	 HP14ZSGQD8j/viCEbKdT03zuxdaDAp8GXIQNw47Q7acHSRgoq26RHF3lDVcc4lsMr/
	 5ghiNshrEtRMddcL4Hjx+afEgyt1utORNR2opJK0t45Xm7XQJiXT2NbHYLbiVNftSh
	 JvbNBmA01QSoeWWsBi7hLC8ZF5mppj1qLI509/nkU6Lmw0+2xJJTIqBKcxDPbrrj0/
	 JhFyypU2Bilfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B6ECAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175994039358.23972.13902854075006275760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de8a288123b6f38fbda9ad5eb0e6bc489aeb7fc04daef02d6e870f62e0e1f72
Date: Wed, 08 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759940393
