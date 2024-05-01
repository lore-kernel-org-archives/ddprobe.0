Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0BF2581
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714572743; cv=none; b=bA2ROooJrgXUa4EZuS/oQmoRXWv1UTWR9zR8aPDdDbZBs/ecTl128S33gYEQiO/c7hihDGjQMM+HPjL/hTMqUr3si09ArSwQoTRDqx7Uv/zee7L23RRoZ/sUBSC/lP4dwtC0pHcWSXIFhyuJtvXrhJ4wbI+OIvtrsXZ/qO/1Z78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714572743; c=relaxed/simple;
	bh=+wGh/1t2KSaQD0DiU4fam0iVFJhsXRdmLnHUXmz4/n4=;
	h=To:Subject:From:Message-Id:Date; b=Q/ilP48+J54ZDyXn264V6uhk3llTQ9ugF3EngKfjmZhwgWobbK2S1R+/qK8akzs4Sh7pM/+z767wKnW5qr1tFDmAas9lCwtFlNmoFqsNL4G0Qrh3ycQZ5V3kFZVTUPfirB+XgtvASkfY7JSk1Z7r+Ep0OhIkE+xilGml8u027ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbEcSIJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbEcSIJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D822CC072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714572742;
	bh=+wGh/1t2KSaQD0DiU4fam0iVFJhsXRdmLnHUXmz4/n4=;
	h=To:Subject:From:Date:From;
	b=JbEcSIJ2jh5WxhcjXXwEFP4gsyrQHQ0fxE8PEDvY/9ntkFBY5IuOiGV/zgjWhNvCV
	 kTX79sZNiGCadMP39dxd54OFqbTl7NBSZ8RU6jn4yPdX+fah/ymFKSY/mBVTjBHks7
	 LQsLYiPwBtnsA0yUmjmUQTWtCjUyGXv4qpKETXtUMa0/bL39YRruSxbbprTnKPg4uI
	 22QNHBUmaO4t4lK3otgEbZYnqlVnnBlXk8epuCA2pXBe91hNC90bT/hQECiPZ8BqKn
	 RJgGzDaqh2PHSy/4TLeZ+PpgQghPYr/FBroo+6VAIzzPPUopo2EjIwCmHQ1KBC0rG6
	 YzlZzxMJhD1mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24BAC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 14:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171457274275.21938.3959906150581685160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c33bb1ca0a6d2a63726ccab729693087e0393c2bf73a13d4ffe97e0dd61ccb5
Date: Wed, 01 May 2024 14:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714572742
