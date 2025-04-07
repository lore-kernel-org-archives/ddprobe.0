Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D322C9A
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743994794; cv=none; b=Z5ofLLos2ZB3jI01LETL9uqopR92AWcOQQSc/ws6Ulov9392hklJjIbnG0VS59wqc0IlJ4YaEcn9ysAWWqMGzWSzLRFwpeux8ckTA1zmys1JX1Uj/2EC6dccITLtQth1luqR5DqnRLvVrpBj7u+jt93OE/so1pAzsk3nllc6ccg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743994794; c=relaxed/simple;
	bh=t+1pWA/KoKlD4xjrEqcJ5kz4UbnOd//J986enI/DrBY=;
	h=To:Subject:From:Message-Id:Date; b=C4Fi3QlI6mY3LifxjgLxInT1mxBQMD4uNf4qX5CtZ1RhVNcdnoLWVTmHiLeArfwYa9AOiSegD6QlXCeMioxULqH+SpXnKU9VBNglzMLJOiakmgv2uXpdPDTe1fXq8DEcTvgCO3npD6p4RoeSJfTAu0spHAVAuUm6AI5FMUPgDmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5V76k23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5V76k23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05B6C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743994793;
	bh=t+1pWA/KoKlD4xjrEqcJ5kz4UbnOd//J986enI/DrBY=;
	h=To:Subject:From:Date:From;
	b=i5V76k23hp/ojm8uIl2MvZpHOojq0xSUFFZQnVFe96OBnbT0d/amQ3h2F0xL+j19U
	 d2Te5AFPEju12ZHVxoTIy9E20yMgzHxHXCqGkhSYelPwITgutReVHBBFad594oVGEz
	 11nj4OC7ppldtBEWuh1P5RevKW52bNYFFdZVIGd32ApJaL92ze5hv8F5GFGuSi2XIP
	 PnBrtEU4KPgqWHlInAMJC/tlP+g+L4fu5Q4XWRJ9IaeTwfi9BYcUreV5n27MXmycn0
	 xonon6ZYv3gUx7YKID0wQugjmcNHZH/J36PwyqjhihG6v7x9sX7byTvl1nvbcF7cMZ
	 hsjmlWFLikxyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2D7C36002
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174399479364.7972.4069344371039156718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed7cf069483bcbbff03fe214935e58b6bc5a2c61d8a43f6a36d3405a1da58ce1
Date: Mon, 07 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743994793
