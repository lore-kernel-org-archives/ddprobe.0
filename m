Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487A035AC03
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784068714; cv=none; b=I2o4Ri3+tx9KHhCNMUiw9md9ZGTLjtilrIzc46f8Ju872365xuwJOQaoKj5w/Mw/xYrQY35ON+qV2EaU7S2bYggn0huz3Um0UVM+z8MHcSKVzX0RsFxvzJpL9jle14pjKvGL7jYE88UiKl9MbegMHOQRWMiV1qvIlMEmqWo4IW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784068714; c=relaxed/simple;
	bh=k0zdTEXsCruKLD+2Q5SqLPDYYrhJceuBydJCfgwOiv0=;
	h=To:Subject:From:Message-Id:Date; b=U7KWJJrj/QS1Lhq+GKPX70YwlPY6UyCgeb5cOJiSAPlvVVKhXDTwSSdlLi2PXq35EkLahvZngyKaGegWUH/f7BcoaG+gd9J7Lsd9MEr55kjjtROKf/W+bGw12jLHSOWWih0Y3hb0/GJB4jBE6lPthBd3n6oYWQHHaWHpDhL2/iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GiKCOn8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiKCOn8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B1BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784068713;
	bh=k0zdTEXsCruKLD+2Q5SqLPDYYrhJceuBydJCfgwOiv0=;
	h=To:Subject:From:Date:From;
	b=GiKCOn8U+F4b07ws27BwnyTIaRXgRi2X4/TwtE7fjMl9I/f/LfGsVsMKo78QYwWr6
	 LvPRrJIKHFmXrh7D8VvUCEWE/vm9LinLNfm9/9zsjE5A38aXZTfVCR8C647A1apsh0
	 6L9DVBdjTZ5Vr/UgJ8u3hsAGJIvsekJZYbhArcXZbci59IDPj7SWxoDHSNFdTVapW1
	 bC6PRDIBLUvR8dFT8xK0e7ZduJ6FJFxMatwcx5WuLuW5Qz1YrUgJXP+IScOFbpmDxM
	 lAZsKZrC/J4zn8Iy26z6BRlT2KgldTsHxi7vXVCrKaQTQN+fqHWtd/Ox7pDsCEadrf
	 LJHO7VQwA9SKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0354C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406871368.1078.81188813474555658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1b881281bd2461692a273fbd31fe04b1a08c88d4d5e8fdb8542e2250949728c
Date: Tue, 14 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784068713
