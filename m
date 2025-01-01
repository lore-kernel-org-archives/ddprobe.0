Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B0C383
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735694154; cv=none; b=snjLFBzt+Vaz36yKoXvS2pJo/pMKDFi20CQ+vQ5CwbwibQl2aMbOaVnFt8QX1wBXl56lmIys3n4oOpEORtUQzVJPKnGeLk13RkC/ftiEKHKvtWOs37WcpVBctngvHBeGaxZGMnGlQWqD0NLPQWCsvP7WGhPq787txBUYMTWR7Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735694154; c=relaxed/simple;
	bh=+5XTRBmjzEM5JRK5xpvivrSD3XqNCf/kupDW8zSG0Pk=;
	h=To:Subject:From:Message-Id:Date; b=BjNocvUWESh33eAIeHPZH+aWve7IwDEz63EbScJqXY1bUm4jHADbCm6vv7A/nj3Kd7EwMvrBiD8XNO4pDcwXZ3l4j7Xh+25Ekb2SToYcDJ1aXo+dD9XZO4DKNSKTF3Wjk1hSlf4NPPbcT9mMI8Hjcvq4X4B/M6a8AxlxQevWz0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8zVxyA9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8zVxyA9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E56C4CED2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735694153;
	bh=+5XTRBmjzEM5JRK5xpvivrSD3XqNCf/kupDW8zSG0Pk=;
	h=To:Subject:From:Date:From;
	b=B8zVxyA9/HT46FQHO57GMjRSXiZQ61vilNhPEYXdp0S+Sjh5dm8+AoxSZ7V59dKjw
	 1BFDvaRxH82jZNAuekfxnml0n+DyljzMXbeOXaQggeiTYuhCAbxJPTvmDiqHZrNi/J
	 /pEs1BXRvTxeHuYy9hEy+qJjkhT9GcxTFg5+QofUwkFa2hmAyykCQ+NlTftkNpXHjX
	 g6lvuEk3rFsVDyhQgszIOW+9cQVfkHgdWtOT3/eL1Tt2ao33Re6ARs2VAAHhkWlYvn
	 7gp3yhIBLcOC9Y1lW3UJzvNBXg7V+ctfmrMJXCJfVyrY0ZYq6WzmefqPbymGXSBvr4
	 7i8e/bIJ9rHJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14DCE77188
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173569415358.16306.8809287662512673408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adee3e88b8b5c6ccb7617c4e91b2a4d7285c92b0ccfe8dbad653552879a98a8a
Date: Wed, 01 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735694153
