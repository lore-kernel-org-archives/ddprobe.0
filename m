Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E26224E4AD
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754380194; cv=none; b=j5exPZbT9wHj3KNjddIqYgCsAHmGwkd9fhHOkP3Ytdb7TlQVbkXM7X0uC7JHJanQZbMQ0BfkNzglwC+wqNkl8CdFGVXapsX5pAq0O0YYv7BCJgnLIPUyQSYW281juoEDkuvgXH68TCgX+8PytGn3pqxdjx2OdF2uOOy8saYcIvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754380194; c=relaxed/simple;
	bh=bhu95cjnl6ryJ/A/JCOEKlIEBoFvGJb88hlBQWhtrxI=;
	h=To:Subject:From:Message-Id:Date; b=Y/m7ELLopDrlcx1Mmfxb5S/63DHW2n9GG+UQ11VBZ5e3GXMNTZeWf70hof11PQfuKroM9/Zm4QD909kINUwZavFE2vOdo8XZ0PwNFVaHTDniY3+UUOHj42zKiGGuem/Iakd44JCJHjfnNgELAg0+hDKFAkLbsc6f/wa4Bz2v3O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnMhA0dQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnMhA0dQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B12C4CEF9
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754380193;
	bh=bhu95cjnl6ryJ/A/JCOEKlIEBoFvGJb88hlBQWhtrxI=;
	h=To:Subject:From:Date:From;
	b=TnMhA0dQTbt1baQiJXXA/3apguJEGhL0SUtmrV9VzGPrdTpx3uYUWRobwsOq//ZT6
	 KgH9IckjayV2XsFt9gjrTO4+T4ayq5EeH2H31x6vhWG+GDRKOyzIwFnIiYcJr9Jy0E
	 l32wlCT4JU91SwFCffuzkpg/1+KQvJWlp3XYGKn/2R4xUbLAarxtO3GmvmBASXZrjs
	 O0yLKx3bVahYBdxUAEvoqVg87zpgbe5vtUIeARYAO8UpvA3MfFnmssxl5KUAIJ0JKe
	 NxPm9uxS1oRUkgTMon8Jcv8kAOD1mnGu8ab9VZUUyVD4w8yuZjmRZ2J5vOPo9hlWRz
	 gNnjmgNyZgBpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9359CC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438019359.10023.15166013004611452216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f771c39ef0aa22806e942d0e018a5da609bdcffafb006f8a70d82b9a8c094f
Date: Tue, 05 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754380193
