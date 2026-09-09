Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5972E330D29
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788978034; cv=none; b=HugKKnxaR69WY6OjGu0jquq9nENVrO7ozuCSDEWSdhqe4a4yJOzpYNbJ73fxvDT9o8jfKXkoDR/rUslQ5pVTS7dW1qCZKS1g0F2z9kjJLI4Z11VZzprll1hQMjoNxo4EFMyWPIxciW+AOFIlqA8rUBLNaMeakoSWsm5Y6Tv1H2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788978034; c=relaxed/simple;
	bh=2MUAt511595VzLVOdEiy9Jrvd9gIncR55LLbumPyb5k=;
	h=To:Subject:From:Message-Id:Date; b=Ttnhz+6Nen4TM/eHA8UxI7dl9Om7QQxr6oH6F5AkurQ1rC654SJYjxENTf6292ppB507SIHqskRNZAq4JAkJ6SLchadazPCmhdKn+P8SDkXh78rWlvX98EmqI/sVegIXjLGr/oj5cLRueEtSqFiciKKcxmA6e4r+C8UsLyiMvpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWfnC/UO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWfnC/UO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B87C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788978033;
	bh=2MUAt511595VzLVOdEiy9Jrvd9gIncR55LLbumPyb5k=;
	h=To:Subject:From:Date:From;
	b=QWfnC/UOLlX4mvZ33y4sIHX5DmeIrJiTewko5GPOJV6AycvzBfCemPd18xHrarav0
	 ZzDVFh78nLzy59ywlBE/hHtuo5nQXfpzvycYFncjI8agsxSmyuGrQsc260un6IsX9K
	 kGT8CxQbYbBHn5sJojeevEFHSo50y8iu9uywas/goK3Lcrg09Et0hhheI6nuldIsan
	 I3c5pFbmdk1zYGalHnL98J8GNcRm4e5IHbQahPKEiQi2uaacywGRPBBdJl2QtQCJvb
	 lxExY1AQyUnv/XR+4JmWINsODq5S5NbIs2SV7qVv3PCE/uvevf5osvARap6e3/P1lh
	 GU+pbdJt0/5Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9B5C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897803374.31785.18029339662885648451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb867d9b2b99eb21fb5242bf70d8de034b1fa3c1ad3c5a2671b7098c1845419
Date: Wed, 09 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788978033
