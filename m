Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4604A323418
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758632394; cv=none; b=eWJ5RiiDyEY6nFJGJ83qtkModbbCOnomv6I4YHzu/bBdspEDUhy3VzFqO+wG3e68YXGObFEU1q63InCbp3gw0Dg0W4XcsNctZ/eX/U5Qfu5cCj+aHghmZEUw6FACg5fsYCFu+r4xwzu5AJl9s6XZo9b6MUaTSpA6knw1KXSQYSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758632394; c=relaxed/simple;
	bh=6lK+hNeb1Hdr0w+azpCclwW4qxgnqfBct8S6h/VGrbk=;
	h=To:Subject:From:Message-Id:Date; b=WraR2X4BdcNZCRfHJUUg6JWNgzV/kFx2j0gZWLb+4tWUHqwSQYvWHKwTKbmr8UOHxM560hFP+fomua/V7DLK9DQna+Jyfc7Rpub9z+liKCs4IE87V0f2mlcNABS6YRFGDVFAZPpCLvCRWqslqACF19Fht/hP/7X/NK9ctkHVGDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+c657kT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+c657kT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E2BC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758632393;
	bh=6lK+hNeb1Hdr0w+azpCclwW4qxgnqfBct8S6h/VGrbk=;
	h=To:Subject:From:Date:From;
	b=N+c657kTOnQGG//CvMo6ZK4UreMAom6JUSGMtJiQHn89AOH9iwwrz+bujb8J13lh5
	 drBov7AIRq1W7h9a5PdqwziDTgOqvGESKDwFrCmUDrN8upYBNzhOwlIm/p4nJcCo8s
	 5gecEq+Eq8rN+/psrOnom4YdkTd8dQ1+ja7g3H1L5grq4S+vOc7X2Hen+eXC9cohNH
	 qgtP/IghziQ0MfN5BXHnBGtM/yD9UCGGxJIfNXNL8XbqYoluZY92QD8/Kp9cHs7evM
	 SfuGWZD3iVGrzwbsOeMPJ/ZbB72mx50eAmhQCMIwV0Sitn3EvYpBDwsGO+RZnpSgUK
	 OwcwwB/sSPM4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95906CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175863239360.15064.15247488720191805943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb0173ee8d86df6a74b6fd3215a222545de0d4527b95aec7224c4f2ce10ba93
Date: Tue, 23 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758632393
