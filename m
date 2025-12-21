Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF2A22CBE6
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766352234; cv=none; b=ledsGrGHs2erCpOw9Pkqqm52LG2NogDigXqGhNK/0Fu2CN1juqcMH2gD70mv4EzWrRvNImX7wj0i5vC9TL6+eNncl+ASWbraO4ECeHEk/NEmLEn/MZLNOHo4DL/9cu1bJjN+aI9WUs/ycLPcBulNHhJDsiBJisPDIpjuOIDW4o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766352234; c=relaxed/simple;
	bh=49OQkcPXrQxs1qCYuh7OpaXNJF2dGVERmu41A+wIYZc=;
	h=To:Subject:From:Message-Id:Date; b=LruJVrjK32E23DJIDB4jgAhN0zGSnaBcFdVw/VHZ8I5i6GajLxK4f7W6zqHQpOnLcAGem9TP8HouQf9cJQDQtab0BkaA3ltpgTUwtl3N7WtuaT9Ez+gIGMEE6gxhovTyrDiB5VV5OMYGxvDRmvDdiK1I5Q5GDPS/msykCZfxltk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKVl4VJp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKVl4VJp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A9FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766352233;
	bh=49OQkcPXrQxs1qCYuh7OpaXNJF2dGVERmu41A+wIYZc=;
	h=To:Subject:From:Date:From;
	b=tKVl4VJpPFEStVJAWWPVG5yca0E3HJLGJfzFvn04Dp219KEYeij7P1fnSJq2zmZ0G
	 9orQHYa8UaJfRAOB5NwM/P4eYi7ThfTwXbNxAW+49Hx1HFAAPeljfA4Z8/eUHvrKPX
	 APDeBvF/2nNME3wi6sRjzFxnHzFOfsq8JnKP8Pnqi+CHLOpdERDrCqreoxIhiOKVic
	 0ziKoc4MIJovXogXGtWzAVdL4PfQquKpdMM0Z6dHn+Gz9ABXCAJUWVmw0FeeRolmn+
	 5XfRth0rjUc8qI8QdUjEAzb8rAr/kKG7w/trpMNFm6+FpMykWymkRBZRPofrW3PwoT
	 ENZCe5qtZGNhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB79E67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176635223358.28581.2265603196612084150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba66bc8fb573312e8f25cdd082df79494e989019ebc5bf8d2ad7bb19d03a57a
Date: Sun, 21 Dec 2025 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766352233
