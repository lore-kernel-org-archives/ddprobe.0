Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DAD2FF169
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769594034; cv=none; b=WxdJsNl4dvoQIx+tyEFWG2TAEcNmBF7rzQZSMAPNQDX1u/cpMT4tC5Ybk6DSSGbjpEF2/Ybh6Q1eeELD4F++QYAWxcSWxzlEpCI1kaQYoiSeegxX/0PZpg9Fb6grWKMyjhTB5pHJ8EwTchfPJx8NY+qCkbIPft/6raHQ40K6pns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769594034; c=relaxed/simple;
	bh=SXeJ5g4hyIAv8yXSghO/yCAVpw46UyPMWDgV3iQ9rfM=;
	h=To:Subject:From:Message-Id:Date; b=KW2X6AnLRDd5HbxwZJOVthhblVPioxyvbYTqfX1rB3rfLWgcJGU0m1tOm3+b+nOiGjEb6sKGxIwR27pkTHojhLn/aT3QFUdSfuGY4DhVK2UX6q3b62kqwBVSr2yqA7DZUvChFAzR2GNvBENREApBzWZI+esXdQ+mi1FFKh8ludc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pk1x9ziO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pk1x9ziO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB243C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769594033;
	bh=SXeJ5g4hyIAv8yXSghO/yCAVpw46UyPMWDgV3iQ9rfM=;
	h=To:Subject:From:Date:From;
	b=pk1x9ziOMgdp8tQijAZrWZZWXfAY9i7GlGnG6UHj15hV2GsTVQZ3vRkQb9DYWWSUM
	 p0TKzguXsTo5v3+5KddHnZ95I+HFY46E7MITvZOgnjNCKaxPSbmf3I5devKULA4/Qt
	 AamXQrW3DPKiCGT3VcKk/PJPiS+y21QWmp/rTEMvF/tKEPwfnyxzDYYTB+D1EMC/6j
	 ePN+4En94cvOTS7w8aaVY7SOrUQdX+yMOsUX0Ghvj/xzFuJ/OJekaRy6o9nfbdUMye
	 bc49czXkOgzLi1UK5TTYAXmyvQ2x3Ep7dJGis4Gw+KLnAfo65YLvcOHaiLDkEJHj0/
	 NuJxgBo56lhlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9688ED35698
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176959403360.29241.585711186602518464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990fe18637e68692998c16b92946302f9b316cc5dbf98aa6a2e927f55fbe72f6
Date: Wed, 28 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769594033
