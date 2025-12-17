Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FCC33F395
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765973634; cv=none; b=IOg6wYjZbD77oiw5FA7FJsX3UEyTiNiaK2E+LqsDX+5t3KCCiEku/A4fRgQjE5xNo5prjq7XPTtIKzCWSUoAhAQSIkewBUnBCSiGat+djpkuKFWT/eMuG+g2mCNtK/B+24pB9+Qo41LRlB9FFQ2PUhhUExuPr6ux/tGVly480lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765973634; c=relaxed/simple;
	bh=/dNZh/P5vUFBHTIQ39qVZ7WfPMw9S2nThU9O9Rh/W1E=;
	h=To:Subject:From:Message-Id:Date; b=qSofCrfelIdOe3tg9v97NG7GTl8WXfThx3e9Q93oIXpef4PzijtLSNMYpLGaP2/RxgUP3Ej16q5eAmLYBZca0xxQDRT5Jm03IbYxO1UMzgxgXIImPJLBo4yNT9l3KUJ6uHfAFGFPXbj/V1ogxEjdWsaxcw88+zsFdr9MW+5+C/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLG5TCYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLG5TCYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C6CC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765973633;
	bh=/dNZh/P5vUFBHTIQ39qVZ7WfPMw9S2nThU9O9Rh/W1E=;
	h=To:Subject:From:Date:From;
	b=fLG5TCYDATg3so/m7EawqEOeiK5/D+8scIq3nfUfxZmtB+Shi/Rs91iAgQsT2P9CA
	 TypeWO+MTnc4hWaF4uEAYv7S28jYYAA2IUMDynJAj+HX07qJ8jrEBqkh85sdKiZ/8e
	 yitjYKYpSa9GZU6fMUs+Vaqv3hqomv43mXY46yUatEiud/KKmTFi0X0QCWJWO91+J9
	 wRtW7F1jQxRsV9k+QhFoTA1EWtwi7kfh+O+bvh0l6O255SPP9u+wm2fNblv4dLBGB/
	 5wnx1lLnv+LM//fn9dpKjGy0qU3aN7F9OF0lfLxIUuJoypv06JwRqNyaIhBT8qfTiO
	 V4BKHcF+OVO/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924B9D6554F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597363359.3453.12563837037642771576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5acb1270e70fd1783dd3f497a17bb537c1f7709da913d6b16b3d5f801e19372a
Date: Wed, 17 Dec 2025 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765973633
