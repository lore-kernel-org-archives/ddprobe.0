Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE36EC5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744156794; cv=none; b=nZLV8v32+eYTuHLisaJCWiFG6wK07OwLhSWS6Ydf/b9tGMLv5oP1hNm48bQnPClLfyJP6fvJ95Ae9ESWgCqmE1/scstyz+OL/tmngE6kErQtiTju8o6mjF3RPBLRdIr2lJuTEHFrwzdZYghIDFN2NPRiWMrrLDJs09SqlhrIOkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744156794; c=relaxed/simple;
	bh=2YE0qdA8cc+Fus3/M9j2O+3Mm29t6om8bEknjbgWBeQ=;
	h=To:Subject:From:Message-Id:Date; b=N53gPQS7DRh0y1PlXy5CTJLkElRKFdST6hqt0WylMdcz7AEOtFYWBDfqLFOeAlsQPAgDYOU/X7Rtdy2v51ZwAk32XlVxg7surBqCnbzfvxc9ODqR9/21v1phwt/O/zd+Gk+xXDP7Y2eMRsKJigHHegpJAMrhjY2smGU87PGBDKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lf577xva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lf577xva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF51C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744156793;
	bh=2YE0qdA8cc+Fus3/M9j2O+3Mm29t6om8bEknjbgWBeQ=;
	h=To:Subject:From:Date:From;
	b=lf577xvakltzsHy82OI1ew00FW6Hq92fxiaumo83/HkPng5EmjxogXNB1Z/iDXzr1
	 ebEJH9z81t4ZEAFqkufdMyQ+AA3HpUsRpM+zQj1ycDRaLPSMrs5nyvcT+K76YrVvov
	 vM8m5bfPcbryIdFTsQfca5bRqHo0YY9Z35yz5ExY16DaFQW+FZxzQw+8KSdtdZcpuK
	 ttpF6kLAe8o5M4F6iyV+i21Egl3ifIC9WGuIaaqxWXKQ1tfiAFP0OVag4CXRLzYjLW
	 6vtAwkWZ1MZP+UMXODJSSWqd+X27JymT4tvt+fHMeziLr6PGAwkPg0jvxpua2AZwoF
	 1shSHrEX4Yi9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A5BC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415679359.27873.1920356693869780747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f002e4f8ffcf3c30095047559d518a8583189d3eccb5b5f349bde11da1480a1
Date: Tue, 08 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744156793
