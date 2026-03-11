Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E764419DF6A
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773205494; cv=none; b=gqVJ1vi4dwW4GH6vGpLoe/fhkyrF9hB5HvEkeIg9rtZx5N/1fxysxxcNvoPB482gKDqvA+sEF56f/AFYqnCXMNb3DlDm7bczIz6k1qXU6dBGohsonaPMmebniL0AAW3wh/DANR7qxQqwi92yU0fzoF+baWq8dpNtGTft3EUhw3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773205494; c=relaxed/simple;
	bh=0HC7pHXvc8ZKVGmcWO3VcOSXNTtdZW8Zu99cCEsvGII=;
	h=To:Subject:From:Message-Id:Date; b=PIo5v0oEsoHsPA+0Rmqe0ra4npNtPV12CE/iNd/EynCDorePz+9M5cj6gT6MCXWJEfQLUOUXsgtbvX5Q9fqw0jv7dKUWZvnHF46360nn1PHR6Wy59ur5rNc4lm/LN/sm+m+L9LJWlMMkAvqb7Ljv6k4EKSnFRCoCIDQoY13XPrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ww4YjEEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ww4YjEEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECFCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773205493;
	bh=0HC7pHXvc8ZKVGmcWO3VcOSXNTtdZW8Zu99cCEsvGII=;
	h=To:Subject:From:Date:From;
	b=Ww4YjEEldYFpHTbCMGRnMYy7n0F1LXIk1UjK/yRZ+jxpMOUP5bb8TqxfoKNC/tDGe
	 tYVjxqkBe2AooC1QvbQb+BVjBR1iI3SW70h5H83eCMMdonnQAGD1nvrWEilCwPvN3L
	 TU1U0jfNN3m2OXFVhuxdRlPGWNPN6v2NDH2pK/sVtsIPVsCr+s1V1/qYNAx9G2wiFk
	 bJIlnYJY3VqW6F6BaWx69BCnrOkLpPgYhJD0R82OflSJET8lvDJjTYCDWQxCScpAjj
	 /OJFn7tbFTJjwez+cyT1NJU3huIDRqGsakfYe6Z7407mQ42YYGKTaqmCu8hy1Mbodu
	 JRzTWVU4Xcv1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90089FD88F7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320549357.21634.12803940520999835263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 282d4de55febcf69c2a662d2bafa7ef47cb1ece9b9b4bf7d13a334b61a5c1b71
Date: Wed, 11 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773205493
