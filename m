Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3CDB661
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738156554; cv=none; b=RAerdVaXBFdftdSslBvel+WMckdS9T0pP9UIBD4BGbB3e7eU+tm/iaiNBoUZWE/cWLJ0bjVwhMUKyTPzEtaN4YsFuzNhxIWZWU+hMDtQWbKVAXWTHfyKkCJN3PYGLC2vC8Qk/Awj/RtmqMsU4NP+50uWaDZZ6hge6wwyOY6eMLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738156554; c=relaxed/simple;
	bh=UeWaPIHM4NG13XXqvkyBlgSFVOB1ObU8VuaCsQ8itPg=;
	h=To:Subject:From:Message-Id:Date; b=i0sfk6nmqAKRC/pTnZPAEUt75E1YpUOr3nKuXIRjAKCaaFC9MT0SpZliTOGfVCX1aX12vJmd3NBUG6zioMW+5i1ESFKdAJpDLcA4xFrNGeHGjQGugbCJ6pgOcnMookBGfjPeVH4nSK29ptxAKce3hyxJziYqCTD6yrOjtvalBLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWoLuY6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWoLuY6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0ACC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738156553;
	bh=UeWaPIHM4NG13XXqvkyBlgSFVOB1ObU8VuaCsQ8itPg=;
	h=To:Subject:From:Date:From;
	b=ZWoLuY6y5XicxYcTK7SUpfuSm0UbQjdflqCr8+8oc36CPbhYVeXO/8Za9rw8UUpVR
	 erwgsJ3HY5c3Qo2PjxZdrZb+XnmL4VKD8v6iaLkwOyd/TPxguFO4r8/Wbl9YhbKyzh
	 0NDD5pkSNfOUglCE5MN8e46M+qqCY3DrtVOQhO+mKVKUBegjK2P9TBm4i6Z0XVoxaE
	 ADrOjjKyYRSyO7yaxfT41zjpkOqlzjSp1CNfjRYA+Fb18/1i2KK48Z+YYzAYp1bYB6
	 joE91aWwgQ1Vvh6Ixhstz+MSoPv5I0cugzw7POWCHpKJDpfCwMRur1R/6PiDYE/zVw
	 HCQNvLFCTtaog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2681C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173815655365.30307.12582937566607745117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5c26630445a8c0348a9a33e8a15f4890a8f89604b5db917eccd538d05dce36
Date: Wed, 29 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738156553
