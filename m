Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F444284880
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790419234; cv=none; b=XPBoTikbjKt6S0dwWIXTOIbytA0naf/tU11FZZWl/YYQTrDu93Bks5S2NcNwXcoMLKhi4fvxrsly9hotHKpRpr9Y6tx5y4S2qxmUrIk253MKdWoyB6a5/l1TXZDNY7tKz1jGzfbtE7mXtzPqfpt5D3t4LoYNfiAl/P1fVveU/Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790419234; c=relaxed/simple;
	bh=Ui1njfe6vL2z0wBQtHrYjxT0DRQSRe03WPeE5nFk4fI=;
	h=To:Subject:From:Message-Id:Date; b=FHVRnzwyBN+Il6gktekWLFBaYWBVvDhUijUyN+XcF47LsqIhvBsQvvhDbC/lbLT09oQE4a0x0ZDMeOSJhDhD+vakOQftoA3+wxYmgwTEu9AyBBRNgJe1EvBTT7Ll/DE/yXJaERc/+Ct67TcViihe9Weybs3geSx7UU+qHlTWCAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiQEEQAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiQEEQAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC16C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790419233;
	bh=Ui1njfe6vL2z0wBQtHrYjxT0DRQSRe03WPeE5nFk4fI=;
	h=To:Subject:From:Date:From;
	b=UiQEEQAFkO7Ht8kgwjADs2RU3EDYHhSfCUGBVDqpVMTm9cvVXyj42R0T02I70toOL
	 cxldbJBPd+1jeLAWZ4GA56S6yQQ7/xZUH4YjJKnw8ujhe/x7YyWjXmdreiGnXn3ODQ
	 +KHtpi4pJ9cxhj4/amQSPqy+Bw+oageaMITUk26eTy5koJDRk5W0ti1jl6vHQ6bySz
	 8MTqd/ZL8yCIm9wZAtlIuF4Jr2uST0KvabwRzuEvXf/mXzPIQrkThiL6cW8hQiv4Bl
	 InfUzMDHC9X6orY7bl8ZdmyrteugZea0xRydJ7PDYHBNgE+W+G+pTy9vRt7q/a9ets
	 tcHpo5D0wextw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9FFC98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041923369.24405.1389623120710637742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e83b8332405235fc02c9cc94bcd0dcc6291caeb09197a70364a1fd20681c52
Date: Sat, 26 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790419233
