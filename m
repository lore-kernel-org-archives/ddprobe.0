Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 998503E5A12
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783420114; cv=none; b=W4TXsWL9aZPfFTb/k0f5Z/ny5QNowOYYxez905FsfNPULfoD2uwJrPGCj7NELjtSiByeEWozBz7GGJ6ZJZocWsUOiMkCnwdATJFWxmKHWb/N/wKJgZ5whXqECQFJyp0MSYR0EE7l6CUlXg7zsoB14CauCrmumOEiB7Ql3uIjV60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783420114; c=relaxed/simple;
	bh=pwyhpqmwCfpTgi+za0wwX50Jqu+HOs0O98Gjec2uF1A=;
	h=To:Subject:From:Message-Id:Date; b=gi5U6XJTFmKBX3tGfos8tO7k+AtQ2kRHln+5B2ifJsiWFnfSune11Qv33ybTgXxDRE32NnZlTZVmmGrcHTJLkWIvlfrV5+3LjbBi+u0HlpmssXTDBK8nv4BYrdpLAhuNiz4RpTSHfF47Byf5n8d9x7ud746HjYXzA7IiPeZNEn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWrodaMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWrodaMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3E9C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783420113;
	bh=pwyhpqmwCfpTgi+za0wwX50Jqu+HOs0O98Gjec2uF1A=;
	h=To:Subject:From:Date:From;
	b=pWrodaMKOiCnz1/ghnWvpno3+6P206LjmKKbK0jNZfvR2oPZBleJkgQLBLD2xBb5T
	 mHTnHKrqSQ7xol+B9OfbOQs5SYsj3AnHPtYS1Gx7MMGz8AXf9o6AoRo5jKyC4NwuTE
	 hH6cCzXZ/dYUk1xKtlXqUUqqt3vy1HcxIOuCiZ37BhacK7rb/kSD5LyiGO4oKAtoRI
	 s67BGcU8IRw9Tkakp5bUsT5/HF73Kz03JLS+S2YnlGwrs0qZ96ZV8ed/QORv3+ZhiM
	 suZspGb5GELbCD4M1gy5tiYbb3b3IBEsqCExdiugo3LEVcooLkz3j88aYUAKwO7Os1
	 LnFKaXkrfAUxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FF4C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342011368.5207.4897924696971338094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ea8ac233ceb7bbec1f314a80b2c0d5e44a2a6ab86c9653802354aba3e931e9
Date: Tue, 07 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783420113
