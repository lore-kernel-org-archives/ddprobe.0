Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261D4A29
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736064354; cv=none; b=kTSET0z3Ql6vHP6mvj2wRYKk/S5iyWP3op06LXk3WdtqEBXveONAC6mqwEQuSH7QVFfrjoZG0P+aHLTOumdaRp1vO/aK22X1WwqSqepeKYuf4WUcnujT1jYOdbQH1VCcd900wFR2okA8JO6BXf1Pu/dNDeIT0PP51eL2ztGWuNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736064354; c=relaxed/simple;
	bh=Ag8XpqJQ5ReLggVAjOcwQ6SJK9EIMxTVimcjeyW2N14=;
	h=To:Subject:From:Message-Id:Date; b=Oa/nFGETyviTvDrj9qGkxGycS3Z4WfacxfQBMkt6Y1Y+Q0J9cnV5MCo/vB2zfBGOdBY7hOEDuHsKQBBbFWvN6RzKd0WtiMzgi99TFPqNbr3pNXG3e9UrgezWtK2PQ2+rsts/wyQNYZSr6zTcnRg+L3SO3LPFN/o8m/sNvIREVY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gd9oAwjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gd9oAwjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62A9C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736064353;
	bh=Ag8XpqJQ5ReLggVAjOcwQ6SJK9EIMxTVimcjeyW2N14=;
	h=To:Subject:From:Date:From;
	b=gd9oAwjj1TPZjl3yag/LQMYmYfMWXJcPsrUUn8bAMqHBdtUiCZcxEfr+xhnoI2pmt
	 Y4nc+7x7s9xvbQBCKPCbgAMKIzNrfhn7ao0zqIxJI/kfUPEKArnt/d111cUnt46JVN
	 Jvqqs8xuE1Psk0b98C1/s8YTTurZECGlk9YbD+jWIKrixXuhQsp4oyLTJTBUqumVv7
	 5HCYCULPlkNIbEDfOdAAXMyNlvO8LnZcQEqq/a0R6eBrGG/NWuzq7cKSrUBSOyTpzI
	 ela2N5zdfODG6ROp89kI6bQqXyP7rWdCjRoHbGy7jJwaOt3/oZZDbrn7ZUd0b3Wqxj
	 HVEpVdraGKAlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CAEE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606435359.8599.7302857614456795466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0282544990cd9f7961d5fce528b03646ffcf8fb5dd35a6fb9c005f60db3332c7
Date: Sun, 05 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736064353
