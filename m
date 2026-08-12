Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F91430BF4F
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786495234; cv=none; b=XRZZZGlEZ/nLe9X+C3cqSBwOLaC00nc5sekqUtpms8gcsQfXvz18IJefq8Kmak/QfRYcBhrUTklVsBmkT0mWcablib7RagxK+cx5PaiuB20TDH+fdFJoGj4NxPjLhIM1kLmq/a37W8YpyKJofshPOB+7S8TwzFni8ewgU0bqrfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786495234; c=relaxed/simple;
	bh=7a460gFamFEqSWjrA+Wt1IDOqdkqgBUJJiOQ+ac2J98=;
	h=To:Subject:From:Message-Id:Date; b=oIpiGkfQLRGSINjvjmjwZPQjmmhNM/vV7bTQkHqMgR0b2PzQgSWFf0JOIe2VBf0pcDJrPwQMBj+KaXYIjMzV6vg/hRMnUznvTCZVTjxwHefI59G6b+0V4hA3PaXzo9VXLKaqJkw+ene1kzjKinHzPWfIWTJrj1S1ryaNY7EKNJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1XUPHc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1XUPHc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBACC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786495233;
	bh=7a460gFamFEqSWjrA+Wt1IDOqdkqgBUJJiOQ+ac2J98=;
	h=To:Subject:From:Date:From;
	b=g1XUPHc4ZdfzOqjaZ21NcwPXkfuoeeqlRrEBvB7A/RSrcmcf0vfHJfP5DKER//gJa
	 5/VgPW3dQnr/uFuvnBS1tgjZl1t3Sc0hyzyWYhYEt//uUtPxYQG2rPrZ32FATMthsA
	 kL8qfZsky4+3k3BAVsWRQTMhWemv7VvwCMXc7nNdoSjb1h3mZtOB1NcA+9ntIe/KwY
	 TuMLgqSNknXZmsuXKSdXMIghoi4mdFNxeR0LJMdGy3tiWwaBm1iBi0fWK/J63Ntp9M
	 l8lzoPm8bPxdv+7oWPuUykN1PElPT7kzer1MMQCys4E+h7VbmVPaDhvn3D3+YhdJ2T
	 mvagWqye+CuzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD859C5AC67
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178649523368.2847.3991374186615177880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 553f7e7e03eb681538066f4e39444b5af4e35ac543cd8a7e31017039d5ab312c
Date: Wed, 12 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786495233
