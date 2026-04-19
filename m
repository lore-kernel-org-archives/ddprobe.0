Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D98F340DFC6
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776614253; cv=none; b=Zcpcjk6+omnMBFcy/4DL8IIBSTx3NgRVkW9gd/TP+0sOG08yqtyvDqcp73Qr+Qy9nATjqnO+zla751EMqDk2szNeX+4I1iLApTy/5ZkgrE9BL3FSIXxvu4SZTdNnTTt9pBVRQKsrXh6p6o+MSI9FUa5cGqvOMSP4aBtxS3OmXvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776614253; c=relaxed/simple;
	bh=n8mQQ04uyvSS8wubzEQ11Vl+LgJx0xfcLgF/RsAy+tM=;
	h=To:Subject:From:Message-Id:Date; b=INIw++ML4IxzP/884wjvGgrJHiHmCWC5x1EWovtJN86z2MXNDzUj0rXDGZrc70yAalIgsiQFOrhVBSu0UkJps7YGZHMkyfd0w7n15S8uGPGggLJ+GaaIzaV8kemdJBiSHYOANExteTjabFY2V1C5GxHM5WQvlgjzCCYCvcsNWf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmobRqF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmobRqF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB91DC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776614253;
	bh=n8mQQ04uyvSS8wubzEQ11Vl+LgJx0xfcLgF/RsAy+tM=;
	h=To:Subject:From:Date:From;
	b=ZmobRqF4xg49sShI0Q7uswHG/ffdnLjs5kst66V9QeOI0AEt2+3VW3VKZQiXmqYr6
	 8QVIh3DgvR687pnebwqjjxAelTu7PtXbc6xgc+XvoKSI5yXo59F4u0zSqF4ztXnrQ7
	 QHVZK7M7Bq3Y32nrQlA/PPz/NRvuIaYx/OtL06u/7PcuJTfn/gvwVMas47yP62CgeI
	 1DBUAG1OhJmE2FE2WrT2BZk7TTKqdrzSYv42ondVJASaSx+6yu7LfouUL003j0P3oO
	 AxSstDoIFDbUs7DDctvzCJNETBClcSt19F62Q3uaBb/2qq8rnBIN4mIGW3buOg1umH
	 BCJnObTN66C2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9868EA719A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661425368.31727.772907599797453735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c6d499ffb746b003fc7793afef7c1d9f0df614bacce46f6b4f46c8b0a609574
Date: Sun, 19 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776614253
