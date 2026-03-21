Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086262D7DEF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774080894; cv=none; b=pSVgUwgirGs1dM/7vd2nQbSyHxhxySwIKqImWCYqiCOl7oao+2ei6Fh0vybGa9eeAxgcvtcge2AiFta8LMaIjRhtQvzhmdNESRoHhXTRdLI7CcWWoto1SxcqSw0wVcDLOX2SzZBDeuJT0VhbO10RSW/4FX1ugo+/28rCV7WKBr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774080894; c=relaxed/simple;
	bh=p+cDyK+dDgc7IIwqKi5zLKLmUIHiBV/eJRiX6yxnTgM=;
	h=To:Subject:From:Message-Id:Date; b=WmJFwCLKIbDEDvx+GMP5IlJEcebRmbY+uA3wDKfRntg+ZiixQ9hsUAO+UmobkGWDnwvQaxVqPJeq0rQ8NWJiEvOn03hJQx/0TZPTnWvw3TBKEKODNpQWDBKZ3osws/Y5VecfmdTAKy4fIPqcp6qXTAG12VDQprCxr+ih/cKVK0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmYvPt4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmYvPt4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A522EC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774080893;
	bh=p+cDyK+dDgc7IIwqKi5zLKLmUIHiBV/eJRiX6yxnTgM=;
	h=To:Subject:From:Date:From;
	b=RmYvPt4f0ZYoO+Stvp89T6gAOUftkRL55M8YOSEy0skekJs3qvYHXWdfDOv7igIWU
	 iDNWYmfS57DkvqSYKoj/ildIvmJSwJV05sNPNE+0O0xvQylH3crUEe5yXy+bAHx0s5
	 l6GsNNNU4H6ZKklgQxZlmg0ndJBIKQtN9w/M3VOpatudBfozoDqVKHCqTSXoCwrKaa
	 LbHB3FbpESCFAcsovnqemk7G2As1l/RMt3UTJZFjmHbnFeTotTlst776mWACKZRggg
	 6/1fNghNL7ayz4LBq7UBxgrNQ0Cxesuz3qP6cLnxXwGkukQcHPMNk6NPCo5JyaLKMi
	 MjC3IRGUhzToQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910471094461
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408089357.11078.11311054367768902119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc5afd739bc5a0ac81ee7a60e797b8f84e39390ac39856a4d011c6e4d2903f8
Date: Sat, 21 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774080893
