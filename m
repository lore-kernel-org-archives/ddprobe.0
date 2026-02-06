Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C16FD33C535
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770368633; cv=none; b=PqO9OUD/jakg1n8j3JPSQmLzzgUrjk+oeyGtGKBMU+R17BEzhSR68aazcu6g9sGaeLH+t/pT4FNLKWd4AgWmdlUKUDZcr7MZVLWLX/vTByaiPwzyYWcWWXq2DnmqyK4nc0at2CEcHyfRE0tzZablXEIvnwOxAElweNlzzvw6ZOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770368633; c=relaxed/simple;
	bh=tWliODPuoPIPyXGOgR6X+AWa/t59BMXivlaILz7wY/Y=;
	h=To:Subject:From:Message-Id:Date; b=oNFKSksdx0Os+4LR5ABMzt2h+ZMGNQDNt8LvZKBsX3O1k1my4UpybeDS7Pzg2PjQ+JZ8OUfZhv+89m1QtjfgAvchwqICkdrGbuutm6P4huTOu5JsPR2qO7Ks33ybnbCTXEkx83BdWB9kpAShdmcOmPTCRcopbMmXUOQix/Sqyiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FyrWMC6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FyrWMC6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A506BC19421
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770368633;
	bh=tWliODPuoPIPyXGOgR6X+AWa/t59BMXivlaILz7wY/Y=;
	h=To:Subject:From:Date:From;
	b=FyrWMC6hVUFDZ2eCcLLBDuK4rRsiRl0IFClgbPJkUfjdj0YsiD0XU2NHktSI2xLeu
	 DYo4XizntnDJDBH2GdJrFFLNXTHvHrnMcBshIxSjHzuy19e6AVxXwynywTWqJOOhx6
	 r2DPmHUXnDIxGvPRODhpetJu/kRLjDfLHcmcQQwj2UeW8KaahSztdahpzUE6W8RLcW
	 G6bWxJMUQWGRhVKnu7kECFP5Ndr9UQOxb+fD3s9+S1DJsO568YdHQlycOn7H0lFDZd
	 VUWEz8ObaQ6Dxi06m2P5qlqeONRWmPG+L2LF8C3UNrZZzQ+9/xJSjiWVd87/fe68di
	 ZQHXFMB4pa+Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E30EB28F8
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036863360.3614.7825484496623639951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bfbb862fd14e76317e18312c7415e7c337b645d68368ca6fdf6d8a958cca520
Date: Fri, 06 Feb 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770368633
