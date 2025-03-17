Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF2F28E8
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742176194; cv=none; b=C/X0Du2SxvZSRW0A85/A/ODAkKvVjeIlz+5bqqvZ9qjudNMNrjHBXW2AtBzXUpYARE0UbsLzHyvZLrnJ/8GKA9alMM06GbCavyZ+a2dF6hJMGtk1blqT+yO9dBpmR35vFX/9ybZPFinQGfcYXTPDxS4sOEBIBbc/TiImdO9e2iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742176194; c=relaxed/simple;
	bh=RAxc2fT+sLwLL66dVPi/ILa2pVL4hJji0tDevRQEjDU=;
	h=To:Subject:From:Message-Id:Date; b=KFulP9N3Z0emglv8ji0eHNzGAH30CexxSdz8XGuPwLzH2zn58/cHhZz4TiCyRTn7+qvWiGcwLLH3GNz6AZV6u8q+L3V13+G+DFpT3WQXG3eq3wmE9gs7oQRwVd2n3u/VJCz4nEG7bWmMI6J+U7A/IYZAuEQJuqdNr/BX3cnY1pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eosPDkOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eosPDkOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D61C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742176193;
	bh=RAxc2fT+sLwLL66dVPi/ILa2pVL4hJji0tDevRQEjDU=;
	h=To:Subject:From:Date:From;
	b=eosPDkOV2qZgiwvZFYYDIIwvSQHhNrM/0Qkr0fybWPtveOuYD1M4ONAo/Do58kNmv
	 NC7XDj78Q+TJvl3BNR2Gm8DHeTdKrpBsvAZ0hLMzQvxDgOYoI1aTsRb28m0cfGeKxt
	 8zw0Q21ZAA2pHXxZX8LHdj5lYVRHTbKSfvfUGOrAdFX7dONn0yMFxuat2gNS4B6QHW
	 1nivG31GFS6uCgGPhhFDw998hGvcrpQ6lgYv/WebM0ys3a8g4jkQ1OI+RtmHIGaz1S
	 17l9XQWfIiqwsbLrJkgw0RKgvKdOBLzRvLUB1s2iODm7Rlg3qRQ4aX6whyqb7sbFR8
	 NbV2MNCl6Ml8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98960C28B2F
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174217619359.27770.6970768200997752400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0cc31a7d1a5068d4c86633daedac143b0842e99ccbc9ac93707b1fe1358b72f
Date: Mon, 17 Mar 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742176193
