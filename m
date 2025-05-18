Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EFD16FF44
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747595394; cv=none; b=lgmX17UdSNQy0z2yDhK9Du5gvsWtG4WQbubnSKhQuqdENYzZwPF1Vc/8OqxMaxJo7/puhln134Mc0Q5wofR2cK3LFNnNdVFxH3ZzeP4rWwxfXidJ+wv8BEip918sys08CeXNNG1Xtj6qQxpcobPQjqGhRaStZquM+C3yj9SU9II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747595394; c=relaxed/simple;
	bh=4cc1tGmj7iNE9twzczqUc3c9+QklugDaV+6Z/UkiP/o=;
	h=To:Subject:From:Message-Id:Date; b=LHgquPrb/AF1rcTWbzMuLcjmnYPGywrks9nIxfhPDgctV8aPL4Y58stxNIM/nw8JDy4BwajuyWAsa453aeuTycym0LXC16YOVn2b3FJi1W25S5QtQlZqEcOGrmXdhboCYKObRK287fjsHQ27W9hxBrRBgUD0Yuzc3TsAbXTM940=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snwFbuZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snwFbuZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A86C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747595393;
	bh=4cc1tGmj7iNE9twzczqUc3c9+QklugDaV+6Z/UkiP/o=;
	h=To:Subject:From:Date:From;
	b=snwFbuZbsPixFehs1qqlKtfJcRRSkxHf/CbVYRkuCnFTMrNRTEIZN3umgvSfo/kk0
	 AFeWvLO/6XG6e/PT2d8nv/CHbswWFdZnh/ntj0xH5UxKTZkh10Y02cTUNQczp4s61R
	 BPkrPg+5WgMc4PExQpSINeEhj0b7m8hrD/BL8DxFZPCUqZNwMysvJXEjFm2njxhT4a
	 gmCNeCb5xI6cGWZjJxVsTVraMU01kOfYsSB+msAgOIQ56r+fk/T7J236nsJozwk+gk
	 XDz+7p9Vv4fUg4tjCjG8FoJzA0XkI7IEkCInkqjEZtEj/9g/1KdA35Nvd6PpcwjqKZ
	 b57T26EDQVOzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F45AC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174759539357.493.394139542432104506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e148278ccc1f8df78a4ff15e44571771307f761b3f70362a00054c8b488033a8
Date: Sun, 18 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747595393
