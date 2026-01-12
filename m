Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB09530F818
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768247033; cv=none; b=mqvurL2peEqlOXVaYfuP43h66nRx/ngvng+CTwQjDsmCQNCjdtTzoQ+YPJwV3VcLumDQl84DmLHnr1Wn2/cTz7CGTcPQ/mxKxqb8qvRdr8Lv8PE/6GGKNW0P9bkKKWOcahg4EG7P9U3zMys3BVqAUFa8UoShwmSZHAEjsIJIgqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768247033; c=relaxed/simple;
	bh=XCiGXquEI58/1stTYUWkClXd7ng939EaWao5kNkmmrQ=;
	h=To:Subject:From:Message-Id:Date; b=WKUqTs8YvEWRffE1midHrQDuGdeKshvV0gSgzzJ04EhlpwpbjIud4aV/HOTcsFeF8wGdkloEeuhEdHnM5p2PUpo4DvI8VUinnYPi5n2EClL2GWgOF0O2rKFO2UQo5k2n2528JrxoVr7iNXrq8SnWZxOknSwzciA5odzYlVQUqgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZC76Z09i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZC76Z09i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AB8C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768247033;
	bh=XCiGXquEI58/1stTYUWkClXd7ng939EaWao5kNkmmrQ=;
	h=To:Subject:From:Date:From;
	b=ZC76Z09iEUlNquIo2u255r+A75ugs7KVa+wQvTV0iuOC9MU8PHH7hOYhFqHEuHiDx
	 tzyYQkhCPjPLItIRrGj+nIzeROVbszWoHZ14+yaLYmTkih7HSybBlywMkxn2+ZvKDL
	 0kSUxHK/SJPKFiAocCMxDFTIuFySUSJ65XbClBDucmwx3pCHPMz2PUIYRBzGCJdenu
	 8xu+SlkunRaUMAFOn9q139dkdrEcM0FNFveeu3W5tK8Fpw63SWNdFob2AcdsIkkDcy
	 fgvmKbENGz6yjgvek8f/VA7GgE89IQl+Sg0r/oe0wFueZGezGc4/mhlijfaPm//4J3
	 CvqXHEIw3jmhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F2CF45C9
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176824703358.31462.6210167225607705780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02332025336d6ff70f68ee589efeefefd7f411624398e4a8190776ce2249c94
Date: Mon, 12 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768247033
