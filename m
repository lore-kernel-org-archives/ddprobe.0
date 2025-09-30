Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1322C2D24B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759276794; cv=none; b=tu/rRoJO/yi15jEMCF+ZCnejqit/SWAXABkGEeAWsInoGof2zUemF845iudL2ngxuo9QQxCpWuLbQ7BPbi886K+n3mb1vjZSt8iG8J7+fhzkBSK8z7rRnAnIg+vjKYsyaNPZDToIAGck9czTV17DVbvIHjn7esdnQwSOUjgSzyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759276794; c=relaxed/simple;
	bh=YiP5/+U8TLM5riDYFiar9A6jQdPlhU/4QNrW2ZJPe4k=;
	h=To:Subject:From:Message-Id:Date; b=Be9yEuj26aCWVx0f2aQXVqsXi1HwchK4p/TdWJPVL7/xY9pT3dSZ1YX4pGRWdxeME2Z9Dx3yKSALdOyB0mhJ9+FqVs/8LR7uWl0El1Pq1qj+ibphN0iJx+tomGS2TRdI6x2GtruZPTanU+OD1wELHZ6hB1cRxnM6fejbf2Thi9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdLX2wnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdLX2wnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF26C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759276793;
	bh=YiP5/+U8TLM5riDYFiar9A6jQdPlhU/4QNrW2ZJPe4k=;
	h=To:Subject:From:Date:From;
	b=rdLX2wnJceHPuuOE380UACYbmJSV8Sf8Ku55FTnpUKh2SyGWOz+lmBnwb1DS68IpI
	 t+DT3JhZL31mdjlBz7UgxgLh4uU0koni6Q28ZxqQo/LQC7117V0SAGs16xZ87NsQCA
	 u+RYvc1ZLDfBSvABs+1eadKEWGwkouex9DAkKa+vR6y1i86McyngDmE59T6jlQc5PR
	 EH5MQlHmyXdmd3RUbTSDqjOFtFfzO7hb/rarpPGjkFnYEBclQSmjkPMQWW29c/FvB/
	 JTJE55w5+Suz9yahXc2oRKbbYGeE620JQHdv+kXHn95PvGBtSf2NNDk2eyuZHbNzth
	 lWINu9cyZOmzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9FCAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175927679358.22624.1741791666176067415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0750d6c4ccd106a436290e9e0605390bd0460b0fb80e196924ace4c55e492da
Date: Tue, 30 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759276793
