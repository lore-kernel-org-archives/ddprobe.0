Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474ACB64B
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 14:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717340123; cv=none; b=HTYpnXwuZKspNmde/8VyBZ5kMJpAUEqwQaqmisn4m3mTIvvR2d+v/k2J5EaJDUr+z1nY1VDMPu9LAx8z3KPlw+8rXiOjPhKXDpxDoRoyNUdmn8oA/6/I8HtxVzvLp6THxaa17wGeBtK6Lla0NBariFezGLevkgLJpBDXehiqoJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717340123; c=relaxed/simple;
	bh=ZxXgHWF81+ufZm1oFgPu1AA6aWr2Zrod8DssuKxjkDg=;
	h=To:Subject:From:Message-Id:Date; b=Tf8e0yrekGoHpwQIJi8SNW0w4+Fdf6l5wLpoW0SHvW8Q1ZS4ZombE/JhuDBabRHvBaJ3EP8rfPlLNnjsMZDiuG4DGoj+BcqpSu/pE/ve0iPqjPrK0gtVMEMUHo3Ws3/S4XghUZzr/J9dSEu+G3ywEnWnWUvrG/Jv2+acT5Cwly0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1ZnpnQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1ZnpnQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D644FC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 14:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717340122;
	bh=ZxXgHWF81+ufZm1oFgPu1AA6aWr2Zrod8DssuKxjkDg=;
	h=To:Subject:From:Date:From;
	b=s1ZnpnQgcnp3x91xTl4VEBX6aV5JSY1FEjulCZdXbvXCa9w7gMVCSJVe2+0p/Y6aw
	 zS4tyAyupcnXTGzkm3ff+7wIXceBEPAZUHhmr5e9bifW/Ck8eRtw9HsPZg1slEXAOr
	 CZjDvZ0+mkSFc7dj8PmhlBZuqc9/cj9BNSHVTQ+qHLkYi4PDZc8tzYR8txWMXMUx3J
	 5NQ/0TE9VGNfevxTTI+oIaN0YqDPa1E5rPUELxCbX/LNptFM0iP11oAQdjrkRWcwyG
	 o2a4SvA5Uu2/Th27Pl6DS//hUVQyQ3na5EZDRZQIbY4h+zCShL8IXKEq+xuJCBnu68
	 pTZ/vVB//Fgbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C41B6C25B7E
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 14:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171734012277.31033.14580013086551815153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fdb486a475e616668d7d3540c3174e1bca64ca4e9cde4daf4b2be68ae7ec7de
Date: Sun, 02 Jun 2024 14:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717340122
