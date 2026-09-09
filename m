Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC2B22A7F6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788919234; cv=none; b=nMDcUhP3X+BvdZ076yT3k+qzsYi/tOx/Yf1yw9gsJp5CtxFG3l5xnRID+Vgm9Tbf5inN3Ixmu7myMQRjtAy/3vS9vHPD8k4sdv/uxPkJsl4D30TiSyoJeM1+w81xwX0Mi15SjH8UW8ea1japIgXz7LUTwYQ7f9xycQ6mHYVMoos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788919234; c=relaxed/simple;
	bh=m1UFi69CLy7KP91R+7TR3Woz/Viz1ThZTS2oT1JMbtY=;
	h=To:Subject:From:Message-Id:Date; b=SWRYm5Ymwfd9f4l1+wYX7m0QU6+H89ROaqTCjtPtvUJGY2Q+fYpQljsU8tSLVg+yVOUcKzVh20lWRIx63xIp4r1VaJilgbZMvCdTMQX/2Wv67GufXz4GAYwwcXYlwG56vc8bH7chrKGTx4A1UiNe9jsrBUI8YGquSqSXT9uARX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMoJR6A4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMoJR6A4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFCEC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788919233;
	bh=m1UFi69CLy7KP91R+7TR3Woz/Viz1ThZTS2oT1JMbtY=;
	h=To:Subject:From:Date:From;
	b=qMoJR6A4rmhIXbVCunMBHIeXUtY7NRhSfyLIxgBt32ubNPIi6W8yUqXM4SXWgwoBZ
	 oc/hH3mVgggt08OYxWMRtcNxZ3DoD7hWajXRod9pJJHj/4kUl3himun4Q2FSIG9Po1
	 nS4/Ka0j1yF4ArlUJMllt663HTjcPrOb5g12XE6lOaUL/YpGvQ8Kn1v0QFNTenQSZr
	 u1irgxw82kGqG0xFRBk0TMzdGl9Ewl+ynWQ3o2l2ADWM8L0ETOMAa8oiohpr+mojuB
	 PHZ4s1hMo7OLBOqtRSCx94P6cIXdaMDiA2bd0KMRsr59rYlZmy9kEOnevaE5StkeYZ
	 diZRk9BNLZe/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB85CC79F82
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891923369.26885.3668744462586724062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f710575b82d745b13aecd3062540ce85ceb2c2f348a71e75544a65db1f53606
Date: Wed, 09 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788919233
