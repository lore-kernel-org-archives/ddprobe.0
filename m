Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368A33546F2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780030954; cv=none; b=EwINMGIqQVsc1HmqYM75vgoyl4kdzWEKmuhWQqlvJ6Tn84stvYw63QMGqyvmvpQxv5TA921dSxaDHRF6HyooVjcNxz58DpFL6H+YeKn54jorRnUVUiaI3nCM2qTCx9zE/snudQwKP33Xp5roKbB6gpZAu5Tl74oMdKSltE98GxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780030954; c=relaxed/simple;
	bh=98PzutZxy6WT4zbpLnDIZlk23wjLfRIkax8yzEaHiBw=;
	h=To:Subject:From:Message-Id:Date; b=tBnGTJ2IbyWjR7KsC37LyrnceOg2MQlVTJEU8hffBeG640gUV6K7K1mAlAehUqStwrPDfFEslvq4/G6V1bMItiTRGAogEvYSEZN5uUcodNllAn5QUjVRRvClOcxs7oN6IIQBusqxzartRYnJjuge41+62HZFgiBF1zkJww7Aq0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQSNSaNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQSNSaNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD35C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780030953;
	bh=98PzutZxy6WT4zbpLnDIZlk23wjLfRIkax8yzEaHiBw=;
	h=To:Subject:From:Date:From;
	b=MQSNSaNPi5CQlSU0tW1gVrCLAfslAbmGAh8m9CoUVAlvpR/lbJseZpW0tRtP2rO5b
	 6d2eoVE2QzspgMSQTDhBrc1mNYQfM4TVr8L7GHzG9ngA1EWPCrZR6hjC8KP04en7LZ
	 7pPsDokFtM48/EPwmzM1d3vdhSpCaREzEPxWrtbej3dpMSa3DgxV2H9i8la9Ccj899
	 XkfiPbC5JvoX8k0feK4jXThiQsFQftwMKEXx93sBGYIzu25q9ABieqLbI4OACFd8Tw
	 B7cGQ6QsUz/ElLTwBgmvvs/lUPQfYhhKqhF7DiMKdtt1ocxgSvRV6ZxTh+++lnncXZ
	 vIrgXiS/xRGOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9373CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003095368.1901.6357633434448931364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2386f1a7ba7f5da1298f74f76bc10e759eff5865094a8721a12a8fb88c5b6254
Date: Fri, 29 May 2026 05:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780030953
