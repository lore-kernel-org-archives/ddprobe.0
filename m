Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91965140E5F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778341054; cv=none; b=TSiy8qewjTkcCeZXZxbLQzo0ulXZ3NacJwSP0MF3mHP56S+E1fbg2pR+xq++boTqk498qClA2141KzMklojYymrvo8Zu+ZfCxFGNs6M9lxqoVqkeYaChU4C+WkFxt33S95/BoEFpAzDmYDeDFs9qHmCB4fmq4uSsbI8xgXJvcoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778341054; c=relaxed/simple;
	bh=CZwuSUQd6O2iZIC3oy9kVSAX2iAHNHtZJ/beOGwA74Q=;
	h=To:Subject:From:Message-Id:Date; b=f/LN/47gwb5WfGijqOOVBmJB9nrjzTJRIO8OfPOq/7+dpZ7pxk7yyUC2wmZWdNiiLZFSVe8iOvYIc5g5JKd/xQK5k8NKfy6Y1RDO89ERs09xgSCl/AdWYi3hrKaXuNhbhZbD9yQUTGQICCpLRwxh32Td5RfOO/9mIKUWY4cR2tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8eRCGV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8eRCGV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 184E3C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778341054;
	bh=CZwuSUQd6O2iZIC3oy9kVSAX2iAHNHtZJ/beOGwA74Q=;
	h=To:Subject:From:Date:From;
	b=G8eRCGV6thv3sEYjOkdEKtKrMBT/o3ku5DsHgKXvlXfqzPnDIfT8oon2pTp5nZImx
	 Xq6gMkTd4IaVaPyN/oYxlL2kJuI5MH9NVCast9y4M8oXrlmFxbPRuy51XbyA4CS7Wf
	 D5v1WkyEWNzwPZCkKsmENxYczj9QLIprH4Bgucr5M8hwSrxSeg2vlNd11n1rfbn44l
	 q5al1SvrnZ26yvAHXVHqKirGk0nXgFukO673YHqW43oTr9++YvwHrCr9LXH6aUU07s
	 p/tmFzoLsnRVR2RB7bf6tP/lcn9/SRA9mMfjGEM36SQJl5mRXHJLMd2cGl/7nnfjS3
	 NeNsDCPrc7Ltg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF26CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177834105379.17047.15619551036666794094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95fbd83b9fc2cb417eb02e5b0bc7cce4a86ce923f211d66d654feee899b86d1
Date: Sat, 09 May 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778341053
