Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4795C218AB3
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744694394; cv=none; b=XhlX4q/CCAtZMc/bH+uUv8DScATByZtKGRsxDV6gEx4irg52y53XUl8CsU0VekTsKIaq8cqaC7pYb31KfK9WEBKqZ685ReC78w9PZ7r8I53Bo4aATQf+RoEn8dpbjAt39N23H1j/K3eWE49aHWb7e5TqKI2NPwaClnFzWDXKjRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744694394; c=relaxed/simple;
	bh=5vAuUuMMC6aMUnRNfrvm/JymFul8X8zsCauonoSdENw=;
	h=To:Subject:From:Message-Id:Date; b=QSYPYtr0XeMuK1dxaGwZ2OlNgEO1L4Qw/Yn+IyE14bt9n/sPI08vrH3kp16oIXbQqBYmJhhEgMxp34vlmvUNWgWitCiKOemeY17hgK/jQIE+pqtvWrRjvFp2MPjpoB7DQWmRyJsemLDMxTZXsOiJmcyztobgKFGOD5kPfkhU4R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGpIN0NM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGpIN0NM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DFCC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744694393;
	bh=5vAuUuMMC6aMUnRNfrvm/JymFul8X8zsCauonoSdENw=;
	h=To:Subject:From:Date:From;
	b=VGpIN0NMFh73W7JPEr0BPiQ3L5+lsH1nPrY7ioR0BkuTMrSGaplyCCEBKAMqVT7g2
	 fIvw8HwI9U360YyjZoQn4dmqUpPl9m74vTBA9B5VnFWfy3c8EpMzUodb8BqORwsbK4
	 Er1ZgGxmeY3jnLpUsmJY98mbU4qZZa9wvjt+Xh3Ch0zqS5EA2zMXgTsAxzN8YRXbwo
	 6H3lRXAiOPJdaDJDZn8m4FFcP80+1zag5VipMzrLFpwbK74kGXtkQcgP5YNP8elmCb
	 bnCffzPYWS0jnsoia9OIXCA2YYJrhAJPoi4+bw/Q19ERWqgNQzWP54acCJOTgHNcDu
	 sWRwTgakuwKww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DA6C369B8
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174469439362.26499.2028953627408792774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f23553664cace3a6bc9aea5998f4b79e5b8692ab11e639fd8bbee98d53781cfb
Date: Tue, 15 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744694393
