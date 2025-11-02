Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2643734D3BE
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762127394; cv=none; b=YNfITT2YAGAwuHRqp6N41ptj7ovmOaXbTXOSx8oA3lpAYDNd1VkxXC/JhiFABj/dHQETfvIhLdwWVle85XPyq3cKE3MS2xicD2at1LM3/uDw6rgI84+pwhjOw3FuOkNUjZKUItxg9NPeWKTrMGTytVMJKD2vu0xCvnDlM3hLbXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762127394; c=relaxed/simple;
	bh=TIiJBWxo7cyvSIOZNrlGM/haBhP2TPOV8KVEvWTGgQM=;
	h=To:Subject:From:Message-Id:Date; b=qZCsTvo1XuTxeMXtGZeUy+ddz61PunH4U0yPZj4cYbzrbWE9t7eD23Ks8BYuXWvqb0+BcAB7BrImDduV5bHLFzlWYVMxyWOUfUWZ6Hk+B9x12Ona909TnDtU+aRMOGqRW4Q6bKzyRqiLFG4SIsbUDIcV3KuCZkfjCBOXUKRCRVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8AiWgyp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8AiWgyp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DF4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762127393;
	bh=TIiJBWxo7cyvSIOZNrlGM/haBhP2TPOV8KVEvWTGgQM=;
	h=To:Subject:From:Date:From;
	b=H8AiWgypMFPN+pmt2i5fMYbvQvvuHDKIzQT59pdOGG5+9Z9bgN9NtESmd1MZ0HAnu
	 ol2P0fLFKEuEvf2i8Fn74I/kOVhBP7+NA0vryALq6Joty/+rD34wcAXmBP4DGHH8j8
	 uQgwsRHlOliiQ/oeVS3XZ2na+MD2Js7w0dztOXMdqGPwCP3eNNqaA0nYG7D7+pOLLH
	 U/lwqWj1F4xrAvpVCqHjuCh8oYOrZ9E0+u4eQ16zuv7xXVc7YOBqRTVxAHNX6Elqyo
	 +ZOzx67PH9ZF1wfxXz2mllOnv3i2I/Kazwpc6cZOu9lFe4qdSjnsaV8W+XKAUEXscU
	 BDoDh20jrr5Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3B0CCFA00
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212739359.4311.4304182412095110823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe3540ffbbf2120210a34738bd47fe0309bb67bc14189d49fad9a086659a0a5
Date: Sun, 02 Nov 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762127393
