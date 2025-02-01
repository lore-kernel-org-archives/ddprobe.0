Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6235926296
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738383954; cv=none; b=G9SJn981Cn3nAvnvL1vZrzOMfiuvSNc2qUAgjvbnmuv2GGJM5tBZ5zcxeUHpM80TrBFd+xZoF5YHR5yLer53Rs4LR6J0dy9q8fmfMM4VCGNtzh1/YkrQo82VfBsn8rbsxWb4rfn1iUeaTiB4Y3m+Eprre7zWSP7e078Wa05iXTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738383954; c=relaxed/simple;
	bh=+3oodlUijrqkkw1LIbLEi+ZG9ZRezkfJPiYdh0624r0=;
	h=To:Subject:From:Message-Id:Date; b=DmX6/IAu/Ta/P0G++jr03hQicD9WlQWGbPt+zoWLD/M93UGVN36j5Ug7M6j0wZ3hH21kf1PTVkpRh7rXr28ImOGulbM14jrP/1YwqoVAJEp2Xlbh7iQZvHB5BFRVzfITGOHEJa2Y3LPmfm+Qy6xygrIne600S+sYKRVz9//ZPmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4pSljj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4pSljj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2AAC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738383953;
	bh=+3oodlUijrqkkw1LIbLEi+ZG9ZRezkfJPiYdh0624r0=;
	h=To:Subject:From:Date:From;
	b=b4pSljj+V3/MEg+RspXCrwymzDgPAenuwrkFAY+yXoWdT5s2SOvN6UQyxlRAQvrXY
	 76NZns4+N89/JCScqKl7zuk10IHHZGufC+HpM7FAB9e8RtJmrcbTDnNq0Qp91LHG6p
	 yRipn63stJyjIynvNr8v4bs8mKDijJPLFVn5QWuXaSB3u5WkEJHemXLPJrQRo1dfmk
	 fXUeP1UVas4tCd5ViG73f1iLSCRmlEfADYcAEhNEY0Q6ogT7zMaxHSpCFCZ4M47XSR
	 ws3t4OVF1mk5pKA5rskytk3evv35q8J+xWzjalBJr7UFz0XvSBTPrelhRvKDOxtAD9
	 x4LHvTGEI/B2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6C5C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173838395362.27746.6147956881472828674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f56e1e17a910dd4f0f7585c30b365ccdb7ad5d116660ec86cad3d0417fce593
Date: Sat, 01 Feb 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738383953
