Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742851A2C15
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 05:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715146943; cv=none; b=Dz437cPp9kwMDwfOeMZIWMVMdj//kVxQ0R+zoAjOgtA2p4GxwvmJ72Zq4ZAR9aCDpu780DpJLAk1uuuqDJik57GCMVeAYkoi1yCp9zorQu0uz0TLilMb7oxhzNcNHU+lJRf23qfrJDyn4mh6u8ieprSsONmKR+xhFSRHiFK4mg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715146943; c=relaxed/simple;
	bh=6+xV3qQykZ/QvMGWkbYf+/nN8APWAfdkvdUA7H7hs4w=;
	h=To:Subject:From:Message-Id:Date; b=UcRuWWeTw/ZxlJKodK0FUiMJ3NXZZvNZSdYmFMaYlbQ8G2XNmuHXDve2kOlWqXtR5eUWtzapD/R1cwCjDYY1SKOH31l2ku2SdYBKURbA2v4zSvK28c978mUrTGlPgcfhMWSGl/VWzRlK9rQPRqYSiP+jo+7CZb42b6ZFMB7u7Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZb25y2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZb25y2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE65CC113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715146942;
	bh=6+xV3qQykZ/QvMGWkbYf+/nN8APWAfdkvdUA7H7hs4w=;
	h=To:Subject:From:Date:From;
	b=cZb25y2K1jFmjJ7YZ6JLXvLsOZe7DMJBGj6nmcnNqsfAEA39vkl7WiWQyYX2SPSu2
	 Rut07qP4LG4yrVDu3BBklZkpGfqInTf0knFT5X1PGdILrj0n51wd1HGoxPUpY9TX3a
	 Bbjm/B3CfzE3kXGkoPdq2SFxGdA6apF8zFHxwdqaVaEKcRl8jV89z6yNURA+gOC6Wa
	 MwQ3TYyUzABg89TpQl/s3R8OCJqZGhjk8rH8aIcHb1Q418+cPkntE58S9gohlU5V/v
	 JGXN94fB6rHvCpSy1GDubopqSs12HAAYarGAp61dDd0uWu5if+DVp/v3qUOItqDWkn
	 he4bAfQRtzdsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5938C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171514694278.12775.12838766512189188112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d2f6e226dc9c3382e2f5e16d84037d8fc536d630e4821787be55acaaf40ae0
Date: Wed, 08 May 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715146942
