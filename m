Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E90C2F691D
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776403054; cv=none; b=QvUGJkxF+sHp2OVV7dh9/EK3pZG6tCVRCo6t39ZTE0gEN/3plreBQZ5+pLIDaSkDRQY5FRNV8thfp1YL+ZOKCioPd9455NzrzWxTXr1gwDR4ozYtzNRzAaq8dhH5JxDGbHHvXmZoJTL4vriuJ/lDrnjN0KIV6fZ6gje2btPmO1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776403054; c=relaxed/simple;
	bh=oJOfF0uB6DeSLY+HQehi3ygy3AopsW2399XQ4/6e3/I=;
	h=To:Subject:From:Message-Id:Date; b=AlwUPjD4zQl8pxMykRJEalRYqzX2DAY/vNPKj1Sg+cjCVayFm5qImG+KSiAWSsa1NPh5VC94/UnHboovVcG6X50iXAev1Y/RVLHU4lmZAmxT6n9cP72Cy6azNW7o412G78OExt7XM1jyc0pmi+iKg1zFexIMCuU7CD4Lg/BIM70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irPp/8RE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irPp/8RE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA37EC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776403053;
	bh=oJOfF0uB6DeSLY+HQehi3ygy3AopsW2399XQ4/6e3/I=;
	h=To:Subject:From:Date:From;
	b=irPp/8RE0i6nEmT1VcvnE21s35BjgOZ+770NtkKyVpTf2pk13tr3UvW9XeX+6psK0
	 LRR6ztL/iJXWsaH4kS7QYmIAuNN+AFJYtRsDunCG3QwZBGeJLkscy3lipGh9Kb/ayj
	 q4RDPg3QOcuTzkxjbf5zDvtkn2PlJyqHApFx9tdbBK++4eih9rRArczg9rVnnDdxtv
	 NiBTmff0PbNCsZrEaYmSqsYcSfPDU0BAwMPvbl6S5NF7bCSvJW1GZKNk8eRzvwRjzL
	 kXQj4I/03Zy5/wAfCb78RqbixpeTT/+wzz12CBHG+34PRaGuqsE+hylgpIh+WecJFU
	 EUbNs1D7LEmqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C4CF8E4A7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640305368.30740.1105581993916689765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5dabfcca8dd1f9c26c0dacda618cdc0ab17b42e3d89c8f762c5a693c4a334c
Date: Fri, 17 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776403053
