Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A10224FA
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746049195; cv=none; b=l9iFids5cxkYhkbRbab5kYFoqV3zS/PWqKER9HNRXHeE6nukhhEZS2Yi3uuvN0UdSaKWBuB/y4xtK0b1wz6dMPTQZ8csjtOYKGFM9fCJAgafeGFbhMTxlCiVS3T+a04e1IuqtdGfEgu8WOD9trk36KIlEuPYlDczNoD49lMzs2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746049195; c=relaxed/simple;
	bh=ABDhYu1y+vKCp4fJCANt7CgW6+AWZ1JRL4pnGKoQeYo=;
	h=To:Subject:From:Message-Id:Date; b=KYxsOmqiMMcQ+mKWijtbs9eCLtMDml6l1hZmoHNbD+dfATwH+IVJBgyxWW2smRRF0ILnf/nCuK+4Vybr+4QoYf7xBtcMEFGWYb2YqYt4ReQbn5PglH94D0f/NKCIYV2KeU/i408/xZyDyhyWdxlksq9vSvlnnlR5i429I7mD3ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXf69y17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXf69y17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FEEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746049193;
	bh=ABDhYu1y+vKCp4fJCANt7CgW6+AWZ1JRL4pnGKoQeYo=;
	h=To:Subject:From:Date:From;
	b=aXf69y17Otl1YHU19m8qOtoIBtqdWom+fiUSUjG2GQYBledetE2isFRusQBE4TwE3
	 BuRp7Di9nzVyNFJCtIxlobmcpm79CG6R+3s8cyxbUUppOoKhb2zbs7wn7szi4yioXA
	 ybJ9teNIC3dw5ijGe1o/6Wg10bVuSYQkunXsWWBeoRpg++y3Auj4zFKLLIiaG+M8o2
	 mrSAr2TgEBqEyi0BPz01wBV1GC69HkVMRSZYiGlj4Z6d+CIscI10GvPmRBZ6Tc3eXy
	 L6k8YLL8QxbnS2pGTjMe7SOrZYXyGys6DOewZQQZ79BuSeEhEtGkce+y4NOTLvGlDd
	 JZTK5yOq6JDHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC56C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174604919357.32129.7709690724035173883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd95124b8d909ab7fa4a7546ff5809488f0d8911dc18983d9ab6249b56b191b
Date: Wed, 30 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746049193
