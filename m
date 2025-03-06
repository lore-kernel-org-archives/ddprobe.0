Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EBB18DB3C
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 03:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741230534; cv=none; b=CbWLoc4lTNyfLLikgqDiv50K9EHS5QmJmq1DG9MMY3PDS3ABe38+gMGFZ0vzrMZvn8lIc8MzvvfyTs+DVTnDgjcVuiFwjn2ey/1X/Pslhf0I/Y1Rv0Y3k7zEVjYHFpJwCR0MJoCVsSv/6LvywHYjO5M25mU9ju4o/vhEQWW0zXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741230534; c=relaxed/simple;
	bh=6JPO36kIk3pSBILx3QMU6YWEzH1VwbN8wg11Us98BmA=;
	h=To:Subject:From:Message-Id:Date; b=Um3dT31ox3Fe1MG11d0M19ri+0QT8x+ade3Q2A6TKq+AlLP9ygpnkwectt88HMOjA8AKRPhb2ekSisKC8tOHT7CMmuLxWJf0ZHkLFKFjVufrIwI90x4yRd4aPqz+flN4sng2CTvhFzOpSvdjgq2uBMKcSc4sWZt3KRlPD2mZ3Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8l4wjzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8l4wjzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE342C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 03:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741230533;
	bh=6JPO36kIk3pSBILx3QMU6YWEzH1VwbN8wg11Us98BmA=;
	h=To:Subject:From:Date:From;
	b=N8l4wjzXy2H4fAKCtcE0rvLvL2US2YQo2swrSB/DKl5yqaUmiHoodc/3zqgGLEnsO
	 ctY5jKbAcKp8UDMwffzZ6IgFsG5Fx57Vy8reiie9XLB5h2+YoKmEL4A1xux90U8S6G
	 8IY9fQut4NZeovdPqH/hRR1bd0G9164K60ICZsNU3JNEiaLmBHENV7knpz3SOiog5v
	 4v+HAuYvncUaq+pM+L7Esl/jh8ukgZwMeS6tY5Etl99R1fXwbkX0s9lSs1wWMqQ5gG
	 3MGvpBx8KQQNi0iKyZFWvYhoadSx2nCudFgCgUXrkRLyh2obu7ESfdRLLC57Gs8VzY
	 W7wu3BBbAHZBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D474C19F32
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 03:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174123053361.6999.13476908285244211492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60f046614305f0ddc2dd872dcd0ac8ed1d92fd91410a0d45b29dc570de96f56
Date: Thu, 06 Mar 2025 03:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741230533
