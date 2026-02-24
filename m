Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F38B39FCE
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771892094; cv=none; b=CdeHahk9UP1+TFImdkMKUv9oPjhpIN2CTLu+P46evvJI/+TiIHD5cDMpBdENATl4YezrHGcNdf9QUBKRLqRgRvv36jcYORrYvz8M0/mcn4/4b5Myhs+ebfmyXsBL5WNYVII5tLmaO1RWZtpezQUifkZE5W/VYMc0J/xRUKLgrWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771892094; c=relaxed/simple;
	bh=6yAbRo8b+Dkmz2vn4PU9rgbHHtu7GAPQCKCuqITAAAc=;
	h=To:Subject:From:Message-Id:Date; b=t7EWc7oDxZq4oJrU1Zmv+UV4Yr5gXJdsD/IxXmIJLLDegdHkAkfGCGzk8GssliIu37RKWHQeT8uKnsh2ALdCvHVuSEa/Gr26ls+ixnGUf5xTcd0kSso3z9viopRM7R+YvKYrwys0Ph3q7SKm0HPfUjp8ZVB4u8V59VgDhwdCydw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTHC4ogs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTHC4ogs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2963C116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771892093;
	bh=6yAbRo8b+Dkmz2vn4PU9rgbHHtu7GAPQCKCuqITAAAc=;
	h=To:Subject:From:Date:From;
	b=PTHC4ogser/fqRVAHWccs88PhLQSfVRkHST9F/kPjZJ8oSF0Fnt7sHQsin9iQL7SC
	 y+b+zan3+qYWs1+YiIxk4zP30kgldrw9F28Vc+NcK1mNd1xKEJUvD56cev1l5+Pps+
	 G80veqglydlNAHpMMlut0n+E6tImk3rTovrE/K0o3lZr0gRIyum9KFcXeNpGbCUl8A
	 7WFrlPT4KmZa/9GXPoXqPyDqoSe8TXAK/iKrYV9lCf9kwzbqLjOcuKoncVrRCn01a4
	 r1mKHTFtWJndNLeXp+aKzqhvXBYW3LSjFcZ88Zx2lqFur7mcKPVpQgxp2zXnhaydYs
	 yDR7w9gletgcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC0EEC2B0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189209358.3625.14753174081397080933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 793445252e1b6e307826f43a252d00b80525eb1ef17e1a80c5da55b755965cb0
Date: Tue, 24 Feb 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771892093
