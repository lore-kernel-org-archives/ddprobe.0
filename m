Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D665242D6A
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774995294; cv=none; b=T4LHnRz0O6VOHJ44YFWYfRg98LDQ5201mfAlEZJi8YyO/jyQ9029RSyBwo1vYBSHptribxTqgoN9LxcJ8POzqn84lzCSLVmRGEQZuUGYt5SrS2qbzzgMd2q3jZAC/2VsdcQyJh3v2JTY8XOaaTQHXUPxvmP1hxMcFW9gBi/SPrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774995294; c=relaxed/simple;
	bh=OtLtThSqqIxSVZSHoapxmzypuuTaXN+NPkPxrLOhRCY=;
	h=To:Subject:From:Message-Id:Date; b=QKIW6lWllW56CkdFv3CKB4B4CNbTqzVHhBKAQQuZl4+d7EUwjokOJswweTduQ9t1fhVsJwhRt1K5/fwHKw2v057/BOTacmfN5ZhZ2KX5idZo3NPgIk8OQHmVymYL5NGs+QxSN1B0eeMWHS0Fhc0ml9PR4iGO4ew1OgHRX4K49Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1ILIY9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1ILIY9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE25BC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774995293;
	bh=OtLtThSqqIxSVZSHoapxmzypuuTaXN+NPkPxrLOhRCY=;
	h=To:Subject:From:Date:From;
	b=W1ILIY9+iaTiyI2N6PN5Sv4Gp69AxBp8ewOUilwCyMe/IPljS0eHDEpwDtfbpfuu+
	 H17/yWhLoCu9HJgr6ML6Xga+SCdh7UzS79iWO4lh7GzVMsJbnwt2V57eIkxnUR86ph
	 4juHeFk/1BfaTM5/6jj0kYoH6W0tIK+17CI7t9AnPRDmzN4tpxphYOs6vqhhGTPxwn
	 JcuoohbpVAELaaJ8q5DsP5/+lHyoRT+cODrDee8gnN0hcLaPpjR+6dov1GyoB7Ebnq
	 DUugxOdo5CxFl1UTfskZduklejEe59HsYuGtS9foQ0zmiR/wDZ812rAfAFnF+HlXVB
	 +t+Q+eSOQZ5Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A38F10F9303
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177499529359.31119.17235969213946083335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f261192fbbb0f3b2aa4c1570721fd1745c58ad8638b501e771ac9c8eef6692
Date: Tue, 31 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774995293
