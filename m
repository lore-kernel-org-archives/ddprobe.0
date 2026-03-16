Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12212320A0E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773699894; cv=none; b=e6ikZAmdR6mVJ75CAjj4e4fFhox6EQ9bgG0vgq21LBKmHz3kCt9vAQmyz/p/9XTHc/irXwALctBarATWW0D7/iVU9dZavSH3r1o3zD57y9FsEB+QNwqtvUSTulkcC1Zsqno4/AxnUnu8xQKah2QK5lOjJAcL1r6o4/Q1raHWz/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773699894; c=relaxed/simple;
	bh=sUfkMgQer3jaUTRQ+GkWaJTzcUPkpukasU3T0rLHZc8=;
	h=To:Subject:From:Message-Id:Date; b=IhgBqPyQ3XUVVuu4U4p28JTdS3R9etjzVwV1inSLzaCyQauukSOyhljSirXWSScrtWJ1s36czhAECcQX9CvUWhxNFVip2JWx21erg/3xzqGC3tQmJ48phT48T7Kftc6nXk3NNV0okr/yB71ZnFdtAtUDp5aRoPpVNNYuk3ICoac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpQriDji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpQriDji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7B6C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773699893;
	bh=sUfkMgQer3jaUTRQ+GkWaJTzcUPkpukasU3T0rLHZc8=;
	h=To:Subject:From:Date:From;
	b=HpQriDjihesskb7Ic2704N0Uk18FoK26F7fS74CHR+x/bkzzRwdAOfM8mbDTf5+L9
	 cSlz2E89yanj1g5f9QdIGoJcCoOIm14EOkwyz5wUXNFaiR2P7UOuSTdIE9vWufqMsV
	 FiIW+jz0ur4xdplnOA7xg3ccMUHyj4wxJ7+k+kj5+4tiDOQgs+Bu79AeC7mZ2iBHdC
	 ewmHczU9W38XSI+p+cEYryUc//qVCciqPw+1aEqrmqMZJJ38JIzdsXsIgwRf7+Ahwf
	 D55V1X63Q9uOr468FXYFc8p9Kker9CqEZ6jurfidnBVekUSAS8PuUoOBHZlK2tGTC3
	 SRnHky2a6e9gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBD0F506DA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369989363.14322.17067658018529910592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f782aaedbb0bbffa374a68b388684150af383bf676f46b4a8f9c0fe8e3e9f967
Date: Mon, 16 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773699893
