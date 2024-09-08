Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D201803E
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725789354; cv=none; b=MFdr1d3zJiLRyjFGhLp/u11lwVErjMT8EE4ph9BKtl/lFQUff4jkXacWdCuJeMqr2LRJx0mkN3exLle1DSLfKiozTg3GTJR1tJIXUr3TJnDPUKx2p+0iNULevaoUhqrdwUwpsUJryMgxrXm5UWj+LGye5/HOD984C4Gq+BWu4F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725789354; c=relaxed/simple;
	bh=TX+0lJMxUrzg7AL93xbk/M720Oc5I3o+qTuEH1cM248=;
	h=To:Subject:From:Message-Id:Date; b=s1xeRKkTobDFzptIwsy+jGLkGLRhxmCM+1v6H5ZRMevqgw5TwvHN7OGoTBMPhjcJ05A0PZFhoqIM2Mn51U6tMGSB/vVmxu6YIf3GVxWpHjsoBiJKGCmb52Nl6axyMQJ2e4JjOBOAQbWlMau8sX3JygEmrErtoWzy88tzvEOhJAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXOzv/vg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXOzv/vg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A17C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725789353;
	bh=TX+0lJMxUrzg7AL93xbk/M720Oc5I3o+qTuEH1cM248=;
	h=To:Subject:From:Date:From;
	b=sXOzv/vgmbZpgxBL+UV6o0ha02eiGJo50hhLNm7J0QJmXl7WSsFzB0mkPHomH3QPL
	 WaZz814siYZ7JOBZXMvwRFTXpP7h5BOLDRSlFu0TGfHSWD6OZLlYyTYTtQMRBHJzxk
	 7xevtHBchdL4P1kbCoA64zhYuU5CKhdllaAdAr6Ixf1/UzN8b6/YrSM1pISXmwIBdz
	 FJXA4AipOY73zmRpE3BZ1x/QbBYGvUZIKSAqZlEyESgmFCXrhCBP/R1Ls8SAJWcdkf
	 phBVtgQ6qotrYaIy6uy3mrOhLu0C2KyR179kd/ID1vBq4XinjmgcwqGJlcXwEvrfWX
	 5Dwz2GrL/hwJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCE7CD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172578935359.6658.11061996277804791278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5792bb979d012fa5891e8307e0edca460d1d7dfe47c94e7af8f7d64ca9d2ae42
Date: Sun, 08 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725789353
