Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504E46F2EB
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 19:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718221703; cv=none; b=mRbVLAvu4ql1CDr5vDWZQsXSBiOZs6yHkVmVzraoAbJ39HUUuqaUebB3tuMJV7tMdNV4VLL7Rl9+zT+aPlKizr5qzqWENCCHoemF7hATNk6Yh12ovIuCiLq6yQ90bPB15EentxpLbN9HxOP2/Oa0Y+gDaTD3zZpVCqot2XY9z/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718221703; c=relaxed/simple;
	bh=rZjw37XjTqKaPce5IR201IsRyiWiAuNM9s2urZQsYbg=;
	h=To:Subject:From:Message-Id:Date; b=nWCFw4Mu6ZLGAiu6vAzqL2DoojnEnTnXk+dbblvabpNNNQPU2Eqsv2tHOfUJfrH0FIvI+h1jT8/xbZ+vVdhOwC4QwKOQnWxVEFe0vC3O2kCB00sUuQ7ZFuYmCy+ybO6DkseplbPH2Vkpj2VI6xs5K1dHq+9RTyDM5XbvZwhhwiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7Dr+1w5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7Dr+1w5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8001C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 19:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718221702;
	bh=rZjw37XjTqKaPce5IR201IsRyiWiAuNM9s2urZQsYbg=;
	h=To:Subject:From:Date:From;
	b=I7Dr+1w5xeYGC2CiGDOi1yFvHULw8GI3LJwRiYsPohQrClhL4fDTkHK8WuJBzHj69
	 qHGl0SWBjx8Vrge0ibdKB0XzGxLC4TT6EG7yu5QZTomq466ltDkWFdaC6Hb/ahCeaT
	 9d00nzG9PSTunNgPfQMUpnz1Skuny/8Sd5KatT7E7a2gPs+ZrVEyPSBtdOTobjvITU
	 ksvSyqMvD+VWMRU+IqzruoifDa2O0aqVKjnB/o3jPo2wnQnM72ZEYpQ5lxd/5ulhTu
	 H0Rl32JJTiSY1bDFf4fns5BBSlt75d4Hp6V+5FBbhKfBgXm+kZoJB/nAzHINx2aPvD
	 UgH6zSG6eu8ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3CC8C27C75
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 19:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171822170285.22727.13791715013016446729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e209fe47f8639107391ca96b2ebcf083b0d983773bf3fa7cf3723a20eed3a4
Date: Wed, 12 Jun 2024 19:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718221702
