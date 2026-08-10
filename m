Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED5E3C1998
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786361434; cv=none; b=e/LG28iE8DXlNgW1cLza3kFgp5xdOtIuwla4aQYUV6LPWJf8eN5PSed/xS7evkewdvRlHnlJ1ubLxi4QTseYHBvR1ZoZbyIB+5oFZjN3mFdZvkmqUWIA/4FLkhaZjdlx3W5OB4pFprgI48Sz0a3QEZUucKWHAt3gf+g57gRNtk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786361434; c=relaxed/simple;
	bh=ax05kwqAX+x14bhV396cNtMs4o08xftPUUbIBizAJVI=;
	h=To:Subject:From:Message-Id:Date; b=ijSHY2PmO7MJ1d63rD1665PuQxxB9R7K66ui0r89J8YIGtbZXmZDUz5tSijw964lwr6WqfYskxUgF661AoqzhGnSO8jLemHkgaNwJRcmjK8F78ZayGI5/rnfZ64boK/xu74B9AsQlyBopgQMn4dqFPTRe8lEwsu9cZ1ITxcNPrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqaoVb+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqaoVb+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC292C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786361433;
	bh=ax05kwqAX+x14bhV396cNtMs4o08xftPUUbIBizAJVI=;
	h=To:Subject:From:Date:From;
	b=MqaoVb+P2Cwt+HVR/ylC8s2Uhzy3d00qMFBzVfpilI8IbihYkT2SIDEvyKSPgFAqL
	 97u8Kz69H+wGMuF9Xelg57VoqKqMmGVMpVVkW9B/v0ZRzyzi1JQ3g90nB8EyqHjs8H
	 YDAmBZYbGWSqpSXeOtZZB2LuQRf7GxBBVzBPN3+LG1SRk7lSJGB8NMJSkK86WPbKKL
	 hVbNKK4Dh3f+t43olbYaUH/hVwo9xxvWcOtbTGegYPCKMi5HcPKqlBEjoHsQBzuPFT
	 6VdzJfukfjrGIZveLD4mbq7SDhDOG3zZcibKeu9rH67U14mZkjzm/5tykAMS/G8lFs
	 F4KJTfn05gIIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78ECC5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636143373.2510.12274650564881217439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 634e25cbcb190960423a1e415457e11e05ca723f9adb2516baee9679cf4b15d8
Date: Mon, 10 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786361433
