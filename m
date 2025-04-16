Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272C522FE1F
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744838394; cv=none; b=hjWJxz4NH4UahM3v8Kn2AEKuYmFMuXrchPFb23jMLzFOP5tnFIZBspfCZ+aaflQkVGg1xJhlUocplOpk2fcJ80CQzVjD72DK4CG5rUlWWBjPyiZ8sZDY7Pc6H5CJ7q9/s1cLzX35eSfa/p8bI0uy/6IBNNSo7xjZiqWxEUZovnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744838394; c=relaxed/simple;
	bh=BzT4DwLgdJe3HyT5ejjLIIzRM7KKA9Ku+fOUnSdOKdQ=;
	h=To:Subject:From:Message-Id:Date; b=UWz42DRK0wnR9dIIQCtwPsFCyQosn7GpTBZlg1VwFhVfMj+mbQ3vCuE7c9mJDPGjoyzrD8q36fz6xf/6df6U6BaHbDDOmFdPD09jzNBcJyPMCvT44RaKrbUKpYwsPOB6VK//7dzAsyFInzxi/kDMaNNyzoPhld4tiBvrJnrI/0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGYxsSXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGYxsSXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A163EC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744838393;
	bh=BzT4DwLgdJe3HyT5ejjLIIzRM7KKA9Ku+fOUnSdOKdQ=;
	h=To:Subject:From:Date:From;
	b=IGYxsSXNRQawHkthJas/qwXJvIOyYvlVAmpFsLoSRqjGaymnaUgLFH5tX7+abh78c
	 29fWhylNOZpyjRrRIXksF1pIGfLZrMv4Y/5E69d546dPDblp72ixNSrnEP5XAuKFKo
	 eMP4CTvy8aH5QKVZCTWpvw7T+fUJNokLniU7taHIeU3QZ1Lu3CHPDolAwuTeqYGbSH
	 sELMUaI42+1eNYE7EPe/r1WwYF0DYuJoJuRrQad2meRf9WEa137Cd6qiT7h3lHVOJ4
	 5y3JSVN/1sVLDZ3aOAQoKWH1CDw26jbmrxELo5aWjMk8mcyxGuDB52WdpyVWuzROB1
	 4SVqVTrGttquw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91854C369C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174483839358.29310.3105390660222875371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4257cc7a1555ceccb68153478827a01f1441c71346594c412f8e907f4e3a38a2
Date: Wed, 16 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744838393
