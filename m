Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325D33D9661
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785748834; cv=none; b=ZeAHGubw3OaS1hfBPX8of+GN+fh6SPuIOEWBSxDszYAXVNU2Tz7XnRPyGz/OCxO416Vqi73MWKR3vzb1SwzqQ0Xv91Be+kiiv/WX3ib4Y6FFw+HkVQMdL/nA64OBkZIZUGZTSwXy1pTk8c2xfyYm2PmEC+t5/G/y7/rEGo49BFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785748834; c=relaxed/simple;
	bh=HQ1r7qay58fkgifJnv+R+HEKF+sXlDUtBKHf4zx8yV8=;
	h=To:Subject:From:Message-Id:Date; b=CZINIZ3Q+kH/BbHYttejNr1aOpD0XC7s86+vsUJ1Y9+70d1B6LegNdTE1a4SAvc1xNafDgFBSrbSK/9H1LOn3vLppbGF27YhiLqlQqgfIXT+8ROZNa3b/QimEC5HIlwFK6x3y3IpFNxrXsRZLZGaBK7Wr5XVP6XZythx9CDYB6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHQGkMjW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHQGkMjW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EC1C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785748833;
	bh=HQ1r7qay58fkgifJnv+R+HEKF+sXlDUtBKHf4zx8yV8=;
	h=To:Subject:From:Date:From;
	b=cHQGkMjWDAdIY8yQLjn285PV+yyjImnbD9GyivC7nrlwWAnqT/DgFQqoNCzDMMJPC
	 4ms0OlM+4C0VGqGHsl6RgQL087MVyPiQZNv+OLEoI/Ju07xZ7THzpMPPAQFsq0pjqE
	 c+kXqS74Qvz++LC3A2SyXd+mUgcNLt1hObtQITatGUroU5i71SL+Umy6Z4WiOqdgAz
	 OpBTI4ooReGQaWGB4LRGjS+c4kL3xj1uGJWm+yVurqadwsZBeLyFEWy2NhlHGzb6QI
	 zM6dINdAJkm8i0P95FJM3NPjlCKUbJz3tERtzWdiRsmsJHWLAKjbTMbjNtL15ykmyI
	 tUXsHaqprmYqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCB1C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178574883369.27892.608218777201878606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c1703de7e31c57ddc85269a3c4d63a49835a1e90e992216cb80c53385e5a59
Date: Mon, 03 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785748833
