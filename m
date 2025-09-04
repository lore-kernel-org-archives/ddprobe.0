Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3648530CD9B
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757006994; cv=none; b=K5dsFE4SZA4f2LidGvPouWhBUdvPNXcZiYV4zmTOxiwERKFzsGXh5sHb3qgircWz/mSGHgXL7QS5jNPGQmHiEkanNcxKNtux/8lJhBuHgjPFRHe5/zA4fUr9MS7cAz3TzKzhm5mNYtGljkJFg94rCLwMU159fdGlvr11TlDOCzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757006994; c=relaxed/simple;
	bh=Brv7f02slvsJqxAEF8fAqiIk8ecT9mr/8Cz5K4wRygY=;
	h=To:Subject:From:Message-Id:Date; b=lgXVm0GlpvorbA/VN8tJwCVEJ4vhyajKkfh0asSOgL+hSYhrxYu5Fe24fcgsPm+WlstFiCUIlp+gGIB5D8UlvKgkZsIip7dBPFmJHomk68EyErQszWrOH8FXt98KeJW8puyGLUwjHerNxT+xoPjEgtS86FxFD4Vd61aGU4JS82k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVI5wt0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVI5wt0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59EFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757006993;
	bh=Brv7f02slvsJqxAEF8fAqiIk8ecT9mr/8Cz5K4wRygY=;
	h=To:Subject:From:Date:From;
	b=jVI5wt0Zhomss8fk2U9InJsMORoshIhXdNNJmGqMLkNUEVqOE9KLPx/kmspTdoB5v
	 +8KwurrNI9h7juWI/NVP9bEppTSLkBT+XUz3O1zFL3llgcFn5YvxQps2otUK1BvTZv
	 +35YL5L1tlNARty1TSUJ2KNjtuFjBny7emcO7auPAMO3w0hEu8ytYburpR14OCOxen
	 bvGkIimiZf8bwNAj9BnNvnfqNxsSVmSv1/MRBeJVsH2a/XSAEJCk+NPMveane8F4sE
	 j6GWrqDGI/kqxTLrunEhBGCBjpgp3lOuF2ERlQJWRYmFeF7z1D+RITc4uMGaapAWoX
	 X9JN8rkuBaUEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DCECA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700699358.2190.1659669615024747462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69aa4c7f716170685f57a663b59509717e6a1aca5395468760f2b7282c4cf4f0
Date: Thu, 04 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757006993
