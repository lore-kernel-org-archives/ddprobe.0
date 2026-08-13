Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472DC361668
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786606234; cv=none; b=XR8+NUyAsgVZebNpcBcRobO5nWeg9uheA4MWvkvBsTXPcmOwVKYxNfAQ8BwR4gQP5q0O26XCEy+xNGs6U2V7ewQgaKmzISvlPP4/HnkVBvlOV1DorkOa28a7mFvCwUjBFuzRIERzqq8uRP+xGetFdzMZHjg1VmrSnCkVPhkYBww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786606234; c=relaxed/simple;
	bh=80i0tb63K1PPIinq1u3Kehqhg2t+BtzCiVhcpMlTnRo=;
	h=To:Subject:From:Message-Id:Date; b=BjGLRuQpdIO+lZFMdzQ4W1yqgn9gzl0CVqN9KUeyHJxSK/rX0aTvwR9QqSjnHijE0c0P/b/pe4EyONEKjORZXgbeZ6JKksCiy0t0ZY2xQwhcJmW2ARX/iQAv579Y2lehg+MiFAYOFwgbRE0CpU2oslkEwZsbXkAwNuEd4BVkCEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4/wAv96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4/wAv96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2A1C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786606233;
	bh=80i0tb63K1PPIinq1u3Kehqhg2t+BtzCiVhcpMlTnRo=;
	h=To:Subject:From:Date:From;
	b=f4/wAv96ekLKawcMrfOUSHQ5KrteZR7sDyHxeT+B833CBM5GZRcnYxRInMLvZnxvh
	 DVsH8DYhjm4BZgD3ETFx6hwUFCrAWa3DGcBxMQhriQDL/wYE1pLD8h/7wFOxm5n9fQ
	 8enDiJYxhihsfL/xJHbDM2BRDYm5GnHpP25FM+QSNQ6WqyMDAZF4Z46mse7JiDvdZY
	 VS0CI4XiAfm4Lf/eu+OBeN/YvAzTdmtOmOCXosFA56wYUza2KZLN5rwAz5EdxtppWM
	 rd3ePvXf/YPVrcy2md8IN2FRBQmC+VehlYBiB+3j/yebKUsn4RdKBsKcVSZ1YQM+gw
	 52g0FoyKxiNYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B98C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660623368.13367.1053994755406287942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8572b3583448168d559eaa83548457b3b1913b39f4733da2f03886fa8bf1753e
Date: Thu, 13 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786606233
