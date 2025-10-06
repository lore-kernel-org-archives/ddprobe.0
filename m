Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C735248F7D
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759778994; cv=none; b=fglhdV4gbfhzXOZaqixx90cnxYzU0lTYp4Gwime/QIF9OmKS9/vQQ1TMSWUhnXEeQitX1jnQ+U/d24ftyHXKiKpizfE3e6im/OSoFrgRdXL+/QLkuVb1ZK48dDsjpHRz9s0YPh34vF4ZwSLTxLgjAABz0nvjs/tE0V0xQ6hg4j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759778994; c=relaxed/simple;
	bh=kUZSfOcZE3HHuJCt6eyQ2RQI7qO61srqg5I4JnP7VyQ=;
	h=To:Subject:From:Message-Id:Date; b=p0ZTWfTydrCCjiHYIDfETXgtF6KGM5x8Ls0K4s19XnUuwRtVcfDl8bD81aajXGkZt0dt9Qph19Ih7kqMIXtJTYEo+H724C6Yx3MUUDWtDeIAnYyjb21jxJQm75eoKe44eyMkoVyp4XXJ0+jg04W2IjZYsPBYJXybVvNWLTPT1hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYBYy+Bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYBYy+Bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28EFC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759778993;
	bh=kUZSfOcZE3HHuJCt6eyQ2RQI7qO61srqg5I4JnP7VyQ=;
	h=To:Subject:From:Date:From;
	b=pYBYy+Bmb/bKa4W+SbnR2+1DjU32POV+xcYXUlChhBptWrpHEreGQVF+b8rstybaf
	 Gb968dw0wirb89lK1j91Nd5M1Vm/s2fpoMNom4J8k4rZnRhBv/x26zVkEQNEEmjRAU
	 /lBnwajXEc5xu8V37qQNjFXQgR9pOnfV0syIg5o58A7z44MARJ/t286U3cHPUPpQgp
	 gO6I7vB4Hk/RAaYLSO2DFb/RHro8SECGXvqigr1i01GRSsm8AbISWm2e/Q1f+Ibid7
	 NhL9DdzlytFRx49/Q3FNqlr5uvO1A/rJJhnOcJzzKZxnKUKBoZl+0SIAKmYQf6ZEAC
	 dHQqbFvqeDNcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEFCCCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175977899358.8402.11940242898333104186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 502d9153218090699e45f3fa1de0cc1988987505d9d04e44c9950109be160cb5
Date: Mon, 06 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759778993
