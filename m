Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE173AD501
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789702234; cv=none; b=vAjjcKz2tonxDHZvUBJ5xBqgmhMDjd/FhOadDs1e4znNQNOioAq0bkWJjRQfizwJjnuyXDMc/trGLtMW+OV+LCTiCvGNPAb2zHOhusAeHysaDWYUYGmEz5DM/LRVQmH/mZn1YrC453Q3E5pBr2p5rSyRY1sAPpZgiz0eyXDWJ7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789702234; c=relaxed/simple;
	bh=S8op6Nt6cI9zyUs/l7u2eEKBfsXa0gHft3YbA3/3rF4=;
	h=To:Subject:From:Message-Id:Date; b=ZTI5bCVM4NFk5Pm19KecY5XJ/wCpfRkWWMdKpU/Z/052kIV8I8qLh/MOkA317uI3tkzzszQb9U5JIxFMslbdJtEbO+tfLbv11SKAxvlNHgLpn/RGs+JQG1izUcltjnqn4qRdTeE1q/FjXi2rCUE/IgXfgRXOF71DxA0qHAATkQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2Zz8rfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2Zz8rfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7951C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789702233;
	bh=S8op6Nt6cI9zyUs/l7u2eEKBfsXa0gHft3YbA3/3rF4=;
	h=To:Subject:From:Date:From;
	b=F2Zz8rflacNXgDD6372hWmDgRQKrRDci4OOp0qM+BqdLQg6OS6MCGZ6IKDCCUkt10
	 7BnRu0x3ap/V1Wup34IL1PsD4MZ8wDU4ayBFtmNJetOouPfnPV/X5E0k3ZXxHMl4po
	 J2z82wDPYw3equS6Y12h3f9WpE+MX6YGwEadC5EFfAUHSjboZlE1zWeYRdsnNEk6Wj
	 b71LEr9AddW8S8BagxA0JcQopv9PS4sHLUMWWbRPUFWx4rCn/cUwSOqKjhEzK5SnPI
	 +q+OcFnQJdDDK0rZmzWph4p8qrcojSmB6BvUXz4y19IVOfglMqIx8qDxYeUkDrUvjp
	 VwFuVkqz66EXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BD4C982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178970223372.1838.3084404839844694123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a93860d2038e5d3c0e0c96abb7ec1bb56cebf918ece8b10391804b030ae1c8
Date: Fri, 18 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789702233
