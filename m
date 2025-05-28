Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9C04A28
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748472595; cv=none; b=AM10xbiRuDvS9HefgrWUUjmc4t9DaV/Pic8jinnaqT+uLKZ4iZzq/V+UItgrioSFUBIIDJ8mw2ckJ6dP3XPIOO3Yet6/kM62WsgMuXkf3ZI0UMFz65dQYM2ivLqcu5iIobQtHp6oE6yCY+laTCu1rya/KexSX6kwvl0oJZDbHcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748472595; c=relaxed/simple;
	bh=Ab/xsIL7JKdP2uM4RNznUUnMtPzNfNYXgJM9eZj3KOM=;
	h=To:Subject:From:Message-Id:Date; b=FOJU2zqSoo7lPo5vbbIPsaYvzUsfJ6Yj1TSvRPceeo10FkfJX239oKZbaEcnk6+2J4tvy0MmKsKxquYi27H90yUC7Qu8f56Lfsxz117v0AhkNnuLIJuFXHpypHmZzm/JGthByF3CAphw1o6gKf8KN45gUJjVunZai3Vg7zL5ULw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0pL39IQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0pL39IQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3046C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748472593;
	bh=Ab/xsIL7JKdP2uM4RNznUUnMtPzNfNYXgJM9eZj3KOM=;
	h=To:Subject:From:Date:From;
	b=A0pL39IQP5oEhjlXcX3D7fLZ4jVIKnFQhYamuxzz7zA5UAjMtQNrU/H5bsO/LYF7K
	 QmF63/ZhLb/1Rh0/7B/Z0gOCHhQv75g9Q4lLu86TtOH7qd6ky1AaCi+lYFlc8hB73J
	 fZVjAA4fc9Ue9gTrW0/TPcBzrQ+gAzkJh5BiQ7LvcLvq6oHIGnT2sxF54iCQ9AehbW
	 d0b64BFn/9xg9M01qjLkilzfG+68FpR39dp61f8+xq5Gfc3T9zn+Thl4mpejgPwyYq
	 32wEjtNygzsCwmgi1uthrRekp9bFLxjdACZhh32mVX8VK2+yhNs8y8OklTTQ6+kWP9
	 S9PPriwtD5fRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E83C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847259357.2362.147077955284155565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e556219da7084dadfcaf59dc574dc0909da35af03ac0666cb16410453eca92dc
Date: Wed, 28 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748472593
