Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F153C38
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 01:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741397336; cv=none; b=dqPJ1gLQCUG2Ewa7i2+ot2ZzqCiFlB0sIhWxql7zSeA+Kiagq+gWb2r5BwzH8lX7PgmobnH2loV8qB0xRdLJQW8gpjcneAyxs3xgTNBqLfTs/3UeV1aZZcTyaeL6Msu5GRmivffL0mRp7bOkNyxTLop5P0lXVP20F/QqLdxA9p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741397336; c=relaxed/simple;
	bh=3TrCDL/UlPDOq4C1KGGoMLIAiwITq2G7UrZZJnjtvIc=;
	h=To:Subject:From:Message-Id:Date; b=LcIb9k71L/8PZ9zqweziaq3Xhrp5o6NAglIWqZRsAEb5s/lZWctCQtqhduSQzx4YL0cQlv1fK2ETzOfUTZU7jhVCVavsBo3zQ3a4bs8ZMm1rUGIsipV3apNV5Gobp7t6jEeNwacSGO/mBH+XxWl8y5hDS2ZvHV1vHPkuGM2SlNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbMKv09h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbMKv09h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B16C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 01:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741397333;
	bh=3TrCDL/UlPDOq4C1KGGoMLIAiwITq2G7UrZZJnjtvIc=;
	h=To:Subject:From:Date:From;
	b=YbMKv09h9xFkT/0DFygzXUHXehqhiBUD1c5B+729z0SuHa3LHtJ3pdnILlOSFIBud
	 r4k1fyVUx/6b7zaOdJt+RtF65RXnVVWPDjmkZx3muxhViMFjfxEdCg+ajq6XBPadHy
	 DpWZNeoFMsAA3BGeSA38swxw5Qy4CA7cFzekPa8/4aN+Rcm5kwKqKsLOmUoTYAPb/x
	 NSUvu1BVJ0STM0N3LoEngm0OMIlzC8bn+xqToeGKwgBFmstxfR1+gSc/lD6KZOZtBC
	 CtbxZmjyghgSoP0/WA5ndBRPwqKx9JNAPcEzX4FVZzZcsThmmviQigHOn/PNu+0poh
	 SrGGikuv9OSkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939FBC28B28
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 01:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174139733359.3161.2907237242893135478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 661836ddc8b36e2105eaef12176e6c3c4c423b23946156f95957e873a2012440
Date: Sat, 08 Mar 2025 01:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741397333
