Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C1039EF1E
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779428554; cv=none; b=GYZ2gCo4ngZPmq5Cpr8dtNFIAH8z49vcW0QJzLjGBsbIREAK7oe2NfP+Iff1CaxA0LVDGHIzbXwba07Edsl7+2p/isgQHiKHkwWNdKLmUIjiW6ZNOwF24rrN4tfptea1tys8Doclz3ew7DBc3rm106lSIxCbLhd6V8D527IG4Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779428554; c=relaxed/simple;
	bh=GTapv2EI9QX2Edn60lsVsarlAnkuFgCQqL8YAWH+1Rc=;
	h=To:Subject:From:Message-Id:Date; b=jyy8qqZTWwIHkNJsuZYJMiLxsJhAEhDH6561auTuxGTVYqD+xJuEGy7Do+IvFU3grytVtO+FRjZMJwjibYLj5FAwAM3h/drhFNx84VcaLk5hjVCzancc4jXLL0D3suLVaJ6jvatoyXtO0ubOkvUW3ne9vCO0AZyq6Mnkoos8nhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJEwFkt6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJEwFkt6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8116C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779428553;
	bh=GTapv2EI9QX2Edn60lsVsarlAnkuFgCQqL8YAWH+1Rc=;
	h=To:Subject:From:Date:From;
	b=YJEwFkt6QnXVdl3vgBK8I0Emms0s/BhoMb2Vty+rR63bpMpEdDpIKN4vzni3W9nr0
	 A8KVdaxzK6G24PKiacZTRsWrU1FoSSYUdEpoPNOnIUoFcey+A3e2zJ/QJsZDrbRE9A
	 /qZNPhAHt5eYXMIVyj0Rx2xG/NhbaZGWTiV9JvfmZySauCRdjRKmDE6AZzzkJZG8nh
	 hoJycZM52hTR8Q6om+Z3YLEjQ6OJYKtNMn/mAab02ubhvhAMhHlkgRCZnP4ZKForuZ
	 FFUx54sz8UGqMpHEd0Mjme3Buq7GDIOxHlJySgyeX6kcNJ5Z7J8KloHNIUkoFkEeYO
	 KyxcuATbbHGRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA48CD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942855368.4858.10210087650273525535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9b64b53ae2ad5590f4dbfd869e5645af6b9b58131357621d89276a5d29864c
Date: Fri, 22 May 2026 05:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779428553
