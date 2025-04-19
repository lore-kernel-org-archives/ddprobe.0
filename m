Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB7B43AB7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745060394; cv=none; b=o1i2LxIbeDg2+fck/8j3K/Tx6o2DLU0XlivWZjEuDSYE+VBXScWO3FmjVUSsrHskRHiG2ZOHc9bY7I83zNaK67Bp8Cv1Wy7qbuu/JZvZKfBZjSnJjAxW6y6Gd2Ep+QlXABRaTeeJqh+0ZLlEAp4Liv587UKb7nKdLPWqn9LrGso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745060394; c=relaxed/simple;
	bh=3VxMa0JgqYCGc2F5snUGOheBLUbO3VvgtCVeqbDL370=;
	h=To:Subject:From:Message-Id:Date; b=J69PKCJQIVM6SR0dnPja6bZWLyD6W2JaZxml108b95j1s4JveG2Wr3TAIeU68O4hWp7nrLe4FxZkH2TVGuFuYRuzKvF9wuODosfAworcJdtU8PtXgfKKgDVzZOy3emGUsf9OQ4T+N/Gq4+8F2jeNbBM3JZcFqYOoSM30kgdC4W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYmojrzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYmojrzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B2BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745060393;
	bh=3VxMa0JgqYCGc2F5snUGOheBLUbO3VvgtCVeqbDL370=;
	h=To:Subject:From:Date:From;
	b=CYmojrzlcxAe/b18wFjqFr3tMRGv0+diXd+wS1SmmD2VQ3318yqjGFA/uc36WLrh9
	 pWsDv83pd+3By5WpEk642GpA8F/6nMMVEujMxGmXgZZqVC7uVJ0YMHFQ/CDx5CVCZ3
	 ojHCAZy8Vjh5OeoNljWRLANtFg1qRxgul6IRe1IndP0ZLFsPaVuFRHnICaBqdV6wjX
	 BFtTG03DwqXxluPlBjtTA7AUEqajeh4YY5rRvprZkvKuVVQ1frMzQ5/OLAn5QzwSQS
	 RSfpA/sT+CaY1jD+vLEmCV3EEQMZ8BbQJlhT975vceNzjsUV7RkXvrHfJ2+WQnWJEo
	 r25dIOQb4VUBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB31C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174506039365.3068.8070239183101336688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b49b65e22a32bccd7f28d1402c4da51610393472e7f2a74ecf7a4282ae8fd0
Date: Sat, 19 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745060393
