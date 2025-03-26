Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488E32B9CF
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742957394; cv=none; b=sGCkTHTf+zkgG9AGtiU7xpyHp49Ru6/JC9YppNGoDDm3R+/oJ+b2Bzs3GTcx6XwOhZXGFJ8Gbr0cZ4hgN41VPQKaeE8Po80Hz2yBHG9I7gF2Gs7Ssirq0DkdFBOIukawum6RtylKrtvjcjP8Ptmz+uaq9mHbdjHRgDZWQqiEHh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742957394; c=relaxed/simple;
	bh=9lPUx9TyO0vkXesLu+kR5AUstzI32W3ZBIDLau8q5p8=;
	h=To:Subject:From:Message-Id:Date; b=heU75I98CIJUnDUWyzmyNaTwghmTO7iDTM6rTjgkYVCHuH6TGcOoXPNPVYJm1EQub3yDcx9qglWu/JEI3shSMYgSQ1fLzMHPUcjx+FzR60NaLvrZYOqhXadvwjRrOlXC5M5BLuWoN3F2Re0+Qn80JZJmljgXDpSQ8n4dvuQd0Ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1AilnXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1AilnXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B902DC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742957393;
	bh=9lPUx9TyO0vkXesLu+kR5AUstzI32W3ZBIDLau8q5p8=;
	h=To:Subject:From:Date:From;
	b=j1AilnXg2fOInBnAd4pT6wv4PWQrGI6q/d+Psu0IzpWPYp4ogf6NA1E6qUbpJTLth
	 AIGcd3EFIuaycVhEXF1OGblZfGMbp8EObGO2pAOCMtop76Jf40v7WUE/1W3blUJce2
	 yv0TIdzNC4xTa26Ylt8rlS9XbCz3jJbt5enXuZAYRfwIOaDN96hqxhxIXub4LKNe+T
	 ZCCWRiv2eAmG5ZZtEuiQBgTaQ5jTnmjBpB3M06SBu9pzyqqNB1pkK3i6tIuLgfkGKb
	 QdxFpSqFFhy3zJqTRDSzomOX1P+NJcxoDUhBeS7jwQ3DCLgOfHZdFahlMSNExfk+uB
	 OTLszwB9ly2mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8D7C36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174295739361.19231.12428090592396814322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e4a1d9ae76e3f6e8acc45a3e5b43af8644008c1364b6a3f28e23277b2af7b1e
Date: Wed, 26 Mar 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742957393
