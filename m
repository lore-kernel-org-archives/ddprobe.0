Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3391B33F3
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747937394; cv=none; b=J/tSGlQ9Eu+rxMtotCX5xWXdMvsGN2wurh+cBbD7WH1qf74lhNaiBOGO2SllORF2oXieooxsR3AifljJBCGAi1Aiqkkrqy7HJJ2JlAydP9CP3sZiU0wH5CEladsn+mPhigO4HpdlXMJOeT/yzQljfTsRvPDIrUoSHl/AiMOKqns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747937394; c=relaxed/simple;
	bh=kcrqUTKHjDgdcEY+zBqdxw4q2CnT5/bYrGpPM6NAtbM=;
	h=To:Subject:From:Message-Id:Date; b=D0QqVaflM930DBX5uq02acI5RXi5BsSBb3UDCyuhXqfFUh4wZnWOxqgkD+hO0RXvAp/YlIelIi2dLaHElVc0G9MuYK22FjLWxmR52MZ46PGNFFZp3rkX8rq3jP2sCsQMn2S1hpOfDVQVl25e5wN6h3drwJsVe0B/BTYya/iksFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsYeQlCa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsYeQlCa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A200DC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747937393;
	bh=kcrqUTKHjDgdcEY+zBqdxw4q2CnT5/bYrGpPM6NAtbM=;
	h=To:Subject:From:Date:From;
	b=HsYeQlCaFZ8jyHnoblCTNEDxF5f87PoapFAJkQTnm34KEqyEWRihsRmhbgzk6Tvh5
	 Ht2CL2L9f/cOdx1zST2IGUwr1xMScAM1dt5sZ8T/CVrgyouT1DyGOq0sXIlfhmeFog
	 GRHO3B+LObeHFu7D3ywaV2nMn+l2a/+Mhxkxc/ci6Y+vkSHC5Vi9cE/uOq2H93iJsf
	 yOGGQZLcB9obmFTeK/lLTBNO80lkrnVwcjmD3frd/Gwxwj/AP2mFYJsD3DJmJ8f8tT
	 p5aiMA2ZC2burD3iY5ZLueQngfH6y/SESMVp7+eqr/ipKMPbWwq3okBVPa527rSQ1i
	 nRlQ70iE35hlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB3AC54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793739357.27274.5095758048232597046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76fbae7b8ebf354b345bf2ec3b53577f95ae58c340813c0c35f25276a4b3e11c
Date: Thu, 22 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747937393
