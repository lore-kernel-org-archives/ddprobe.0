Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2D428935D
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750843194; cv=none; b=Pxd5Bfg12ipU7xwvZOxrzyMNfQYHdqOksxawffIwKxqM2DazzQq+8X377NbDSC1rxZHF7MXTI+0SaRRSgPIHAsOVuZEph8ousAotAaZ/8bmPsCZybk2LuY4kTCd1dYgFLHUPT8l1oAfHhxMgrJQ+/5E1X9iLvgKOIwDiSOihxnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750843194; c=relaxed/simple;
	bh=SVap+ecHyaa9R00sMoe0Bu0A4++VIB/6sojII5/Xvqw=;
	h=To:Subject:From:Message-Id:Date; b=MtmPbHlc1mQ3ykPLG9U8wEJkdBz3UomVm1lNJj4tSH9LdmypCATwgCkElZ36UcnHt+MFRvRkM5RodvGv/e8VE7yvGJFLVcBb+Ow3Q0/7DM2UyxWoZ2Wl7fDwYrnsjy73gwA9BSyx4xs8677+wIY3MtNH5iNOieGD7w2wpu/T/xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHnZthZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHnZthZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA25C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750843193;
	bh=SVap+ecHyaa9R00sMoe0Bu0A4++VIB/6sojII5/Xvqw=;
	h=To:Subject:From:Date:From;
	b=IHnZthZ854rQywoC3jBA185zKjYKlQjafMVwbzts7KqBK+3O+y+b4BA835MA7s1mw
	 hZM3O8I6NCLpw+LhwA7i/9xkQvlfo0x01vlZv19dH6dzUl7yH+HBuhgVvG4VChNtTM
	 ek6g5MZn0P9l4v1JgSe6WL6yeWvLapk56kau8F0M9q5XdqgVdpDHa2CIpjrWmgKr6R
	 zM/N1N3OtfyAdh4OS4Jd1k5jQ7zZkEbQLXf/pA6giJgCgUSvIkNBVSUZvdc5ET0j20
	 WGAUazYKFSPBpkiEQK3spOndIe0WwZ2nKmEE/DD7gEzl7S4S9PEVT43EG3iZ/LEjto
	 4G/KHMP8eOBEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF2CC7EE31
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084319358.11272.5634144057834879559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c66f9172703fb0772c657449c031e29169362e36bca9e9abdbe3a8352c4ea9
Date: Wed, 25 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750843193
