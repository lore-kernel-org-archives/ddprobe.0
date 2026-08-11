Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0A32BEC4E
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786461034; cv=none; b=E9yz3MxQoAoFfEiDhFiBe3E89h26AbIunLgjUWvps92HTO3YbQrAtthq6Bj3rv8e8rO1mN4Vayj4PuctUTlGZN2KmfVav2LvAs4MuIFEmXPVgzKcPZBbltd8+nlXpyJ9fPpE3BqUUhEAa/ig+yUA41+8YL+V7E7TWq2vsq+mpvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786461034; c=relaxed/simple;
	bh=TIYdj0aDdxFgouJhXhBQq7CMwvhjmtq4xPmz7zA1ZbU=;
	h=To:Subject:From:Message-Id:Date; b=J0Et3r+424EcPNgD4nNTEDcxz5egmFt2rnXKnVHPc9vqSnMCumSF8RmMn1+PFS3g+So14Dm3AWl17MONocS/1mGW/d9lV/b0vBKZ9i/VPoDW1vf7AKvCfCyKevExvMhKU0qFid5o/FPS7PHNKcBcn+16/wkuFTWQxpZDluq4gYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVcZmomI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVcZmomI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D13C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786461033;
	bh=TIYdj0aDdxFgouJhXhBQq7CMwvhjmtq4xPmz7zA1ZbU=;
	h=To:Subject:From:Date:From;
	b=gVcZmomIHclne23/UtmB4c4/mQUT4pD3YbbdToMJeQTVRm/EAlxa+btH76by3EWyW
	 t7SdfjmDzYGFVBM0jWMYWGJ0LrT+c+s5LWzjb/gZHZVrUpKjGHmqkDF9sguVXp+xcH
	 1xtnJYl0MLvkjkY5PTXcdf4HkQk9wS/x2lKTaNJqC+Vp8L/Neps9sjSiNDGujbS7tk
	 P1ST4Sj9cg1swb+NCPUd1pQ7ycUGOjvyPpZ6WyicUqhkMgN0e+PYFef640vaVKIh1V
	 p/GYo6nor2v/fy/QtaohE35TD3GRE4E1WSk6FgCXF9YZ7WCDuiRhvmmXRs37no3b8d
	 Cb+2mGJDyOtzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA87AC5B572
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178646103368.1493.4843956869480965336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce3da3251713c19d20a8252e83dab81b1dffd62058806d2de2c5aaabc1416f1
Date: Tue, 11 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786461033
