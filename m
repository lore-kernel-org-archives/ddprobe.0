Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9F0CA52
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768181634; cv=none; b=YD6AIPpoSm8p/q3tahoyCXlvxwYNe6m/w+MYbxjS40R36WxCgQ5Bzb8/PQkuPqYSNRNRMeNxRzW8ul3z67olYhupgob+p8nuo6RxT7iiVqyZJNoA56QUf46Sdla3lejptRTcx76oZOt9y5vEBnbpy/+G44mwA7RU0FPSmdZD8qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768181634; c=relaxed/simple;
	bh=5Fj5o/YHkyv6NNX/sgGjZi1ogQABgOgVyBie1sn1Wkc=;
	h=To:Subject:From:Message-Id:Date; b=k7h+Y5SJ4Xy9y3WnI+bubi7o9HBEfH0A4KzQIhaQ5RzD4Iz5kl2lSiey9E19e6cr2h9biefnrcJFhumh/2C+fD68KVir+OKerO/j7SdgQspiyt4fPgO60TsvBwSB95DUymoXFJs/YHdYvcnkTfg7jNI8lrzknRKJYiyksJl01o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLSaVKeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLSaVKeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ECFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768181633;
	bh=5Fj5o/YHkyv6NNX/sgGjZi1ogQABgOgVyBie1sn1Wkc=;
	h=To:Subject:From:Date:From;
	b=tLSaVKeu+nmN2VaJltJyHXH1/px3f2PiUj6F8GQicwzsoPEgaVqpJ+AI99qQpAk/F
	 yxVaCKks9aEp/wUzVNgLGvxyp6cKLeDglBOCEye0MQg5C9MYVYVOucmPUXA+UxZFdn
	 PmyxjvXdkjqIe6eqoCOtvwM7vcDg8ArRnF0O197Nz/hDQGF+dWNodzZthVSpdsdCb7
	 341pd1O8NLsj6iSXPY0kK89APjaiithi6x8cApqp1O/1+T7lymbCOi6BR9zG9K2J9p
	 ++RTmFr8wCMFx4Tep+wl4QE/z4RE0LYY8T0HcdG5ncwms7wo4ILR6yq3ah10fSM+qz
	 hbsPGbUqjrZ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906FDD2502E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176818163358.11642.9836930232565693769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d1c22079c551bad9f83463b0aea3aacc0f0ba954c9e4be038ac5598cd3792d
Date: Mon, 12 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768181633
