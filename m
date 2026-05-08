Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B47DC3890E1
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778231254; cv=none; b=gPG5uJtfOV8kUv9ZPmXNdMYzJwpY4iLbxFUvGAQ/NRWcPO+0v/95Q2wR+YdBcrVNq+ufNHzRae2mqCVfwRPdDO+Trsxj0aiCxlMtLgE1HLxaCALUfBJfDztAtDaFBXcr+J9MhUGL7IveW9YD8904W9OMv+QSNSh3IP3RxMhxS7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778231254; c=relaxed/simple;
	bh=EywE359EarjIYIKUUV/TtQKGzgzbi5NJ6i5QoR7mDhk=;
	h=To:Subject:From:Message-Id:Date; b=r7SG/u+xGgrkySXB5ms3Vnj6tdO7Z2tmBbp3JRxzDLna+HADgTMWGMgBcezGb9i/QNgvMRIjqaXSc3yU/Xmo2+Q5oY//VJeson3Jv76M0QM/sg4CGwixKpVLX7MCFBNZsxASkHKCdXMLoNl9Ze9B624XJufddUd6HI+EiBCfY3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2PBOfT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2PBOfT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C041DC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778231253;
	bh=EywE359EarjIYIKUUV/TtQKGzgzbi5NJ6i5QoR7mDhk=;
	h=To:Subject:From:Date:From;
	b=n2PBOfT69+qJHBQjvMu6yQZL/k5YHX2WhobstVSMRDritSkkc0SleozBH5z/d/jtA
	 mRmMNkNavD3+/n+n/ebIQloYOpSPxaarqEc78HNXquhdjlnzA3De9ATRAuKCslSanr
	 nJM02gJJWUk/a9P9iB+cNN2vMOHpoP5KgT+nGK9myS5ahOW4i2KxG4WmVZlriHhnto
	 Fs9IMT9WTbPxLcx86wlaKHtApPBsnm6zi9yyCCB8lrOJZO1yZTwk/EUObVzR2xlHNG
	 RQaSUHLlux9Z7Uwtz/clSvs7I6cnr7adVhVz800BB6nSzJre2GBK1z/tFMbJL/w6on
	 bOUw27wIVS1nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2152CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823125371.6013.4894174969911025045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c853c636d0dd8021e00c89af07043d808fba2133c92338d0915aac21b7ec9443
Date: Fri, 08 May 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778231253
