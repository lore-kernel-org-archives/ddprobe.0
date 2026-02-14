Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BF7220F3E
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771065294; cv=none; b=QWCGvNLzGcL4QzCa5ZKFfljwl6fLV3ebaIHwMUsd0npZv1xUwVPxKTTShU0gYvmWbL/aT0q6O7X5HYjbaFj9Yt4aNRn1pfs50dlrxAOdYOWqnYttqQNYToJKNRczcofmX9jS8uw5rXo8y5n/m7KAVxLI4rdgnP9ClqWVpmqKWD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771065294; c=relaxed/simple;
	bh=CAQd+QH1Tfni924sK4I8/SxifL4UuFRBShgSeRS+Zuw=;
	h=To:Subject:From:Message-Id:Date; b=VVblqt+WO0coUMEonoHYH1lbupc5es4ReCcdK2BdxMkH0cjlIQMQKWREnpiLztw2FnHdMJc0U/OaCAhdM3lmuI/PiiSUx6lFWHNMDaCqVO5peNLUeTAfknGL6pN8Hr3b/bsh4KG9JiUYLBKN8tPoROHaFRNhZtD+5DyIXHldlX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpCZS3FG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpCZS3FG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36A4C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771065293;
	bh=CAQd+QH1Tfni924sK4I8/SxifL4UuFRBShgSeRS+Zuw=;
	h=To:Subject:From:Date:From;
	b=QpCZS3FG4K015kTGkHaGDn4MJgRjtCoh2/q6nGhj1zpsBfGSpCxgDdbVHV1ds+uBW
	 /TtJaEaAIofke3T5yxJbWMqceG8D/BvnwqXucRR667TvgyQrmDvGjEsoaL2j3Uq2tX
	 wjnO842qiPz1GeTw8fybPmuB28+qdhS6JkP5i0JuSUa3z+Y67PhTAHXG3OKKwZtuEB
	 A17QlNcjlOIMy9/3WMtRq5qeq+XnDfV+x7Z2k8BoDnRI0xkbFiluydmEbRQ8CXV4CM
	 O0mTwAt+R1DA0tXRcw25nLlkDfK9lY9seX2sSAhTA/oqTFuali7V5Pm9yKmIKQ5B1B
	 L7kHJThoSpRfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A25D9EF48C4
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177106529361.7994.18242174505814187868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6c243ab5893f452e5310d4c6e6ae9407ae6c63840ac16fb1a90104c3008ac6
Date: Sat, 14 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771065293
