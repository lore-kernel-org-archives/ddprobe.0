Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FFA17A300
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752130794; cv=none; b=ROFyWgZdNzLmOxhkuex30aq/wjdwUcda0RH+r6n8pAzs3sepEK8wbKmBP0sqiW5bFjRCrd+zzub8IdpXOa5pbfIEqVdF1EDwvuxwprCchdP100m2nQNcaq+N4epAVjpdX21nHe077R/n4u6F8Ora2na2yiRSXpz9XoHjCP813Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752130794; c=relaxed/simple;
	bh=AKEJ0zoXnybs6ANbQaySCkFed9BIQQJN/XIpxGBgeyE=;
	h=To:Subject:From:Message-Id:Date; b=NZuf/1h17K6dm1TF5UeijwbZpYHoXBPWLHDPgZ4NycCxsODU8R7Iq7wm6CEgBr0yJjBgB9O/a02V4h4mEuagb9UcPwUFzNdmwkVZf44usz0M8RacDFOG3kqLqJtK43lsKMC9kJHzZ0s92rgh0RkvpfnLR9IbW+oczJTSYr3fef0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThDpbE75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThDpbE75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBB8C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752130793;
	bh=AKEJ0zoXnybs6ANbQaySCkFed9BIQQJN/XIpxGBgeyE=;
	h=To:Subject:From:Date:From;
	b=ThDpbE75FJaP/z4qTn3cE72Iv4MyPsipevr/r+WhoEjlHgV/tccbvOKtOnv0PG7Sn
	 9VjtEJkyo1+TeZFVsKbvQ07EZYV+tBVqHl8Y1lCAiCPk+D4ASE+gTYOON+oWVrN2np
	 p4QdRe6Ahs9vuVgBfOQ2cG4TCJqiSzffvDLGahgodk/abweG5NzFCYCkV5pMQEPzJN
	 gHcoAPK7yJ4w77OqqZAWYjTJwPcmmS1Cdxlfjfgy2ZYW9pmy6zKvo4FZaj/DX4ngz3
	 hF5FVoqqSOh18MNGZ54IcFKEicRlcZAasiXM8gMyMqVC1kRgw7LCpvKyH52VFNybVF
	 +tWBgdYsYU4ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E850C83F09
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175213079357.15449.4795792815663189248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc7ed45c90e764db6e406d9929bb2b2eb451b3b60fc12c7f74c73945055485e
Date: Thu, 10 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752130793
