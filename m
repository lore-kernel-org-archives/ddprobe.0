Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254983FFD
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784162314; cv=none; b=lGKI0eXeHLjtt/t3hR8Qd1ABdDRQsavF8GmlLsEUa3S20UWgTvTGmjf/6i951KnJMtNaLO+PdEtC6+lSaGqjS/Q/WRDN9HqlcER50QeC+tnZ6s+aKEwq+gZKJ5IKLmUwjwUtyxfQdXj1rQRgg6dwhb1aLP/4l6G0DEgxnRutufs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784162314; c=relaxed/simple;
	bh=t3lMoi6uXXNT6DHilDwiICqxS7PNqN86z3uiwCgZlFQ=;
	h=To:Subject:From:Message-Id:Date; b=gg8g746ppmVPNNJy+4BVRSbQtTPIdtUU2SwLwftMB3XSk8D9Ub6reHprFoK1gocqgv7Y25tiUKuXdV0u/K7FrIiz6QKyHtOmzxKTnSh55Af4iOjOS7Vxcm05gYIb4XR9kifDg1PVqkRMWTJvEVilZ1jtWOUzurJ4EzuyAzidJIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+1AJRlC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+1AJRlC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57F9C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784162313;
	bh=t3lMoi6uXXNT6DHilDwiICqxS7PNqN86z3uiwCgZlFQ=;
	h=To:Subject:From:Date:From;
	b=k+1AJRlCFEdDtlT8LBrC5U1FaLv1bcsfZnxMmJ9w+747di/bsQJJ51VkbaS/N/CQC
	 8XDXw5X8p4DySpHyRojrGUJfmf5M9V5dVPvYbhMDOUWmi4X1xqj2LBwuA3aTdiiX27
	 Ka2iC0Hb1L+0c9/rDUlJMQ2M75Ah69FLJ2/y7ka3NehAx+Iu8PFgz07aPYVsTXn0gW
	 crDvf+ujuagaaNij6OSWtc62r4W1YjpzUOzIP76zJSEzY8JN5u9z57Gm8TeXNXSRTc
	 DmqQBPj77Ui4qcOi+P3KtQkos+FLHbhcl784XSOyCeqOEEpHcGQMMH0Cr2hHZgHLgb
	 AqYRS/535bv4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1469C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178416231369.20241.6715638212343354159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9fb915a98e4847eba27a11d38011d2b8e9bb2692fc3b4005a9e39e934413a72
Date: Thu, 16 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784162313
