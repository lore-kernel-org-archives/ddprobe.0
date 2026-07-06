Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A87C3D2FFC
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783378714; cv=none; b=uLORflbjDj1FeEsd5maV2CmpUgEExXD9uPONI/PwcmIymtwP1x6v6hlNqVWLaOm3UEdITbcX0dtwwnsaLiNN1ORg3dAd5C6NbNSuMGN/1Yc5N+psr9d3mc4UUUsyWxs8RyABM8x6vDLY5ArEyXggf4qatrLlSWmDFjWxJkqGGdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783378714; c=relaxed/simple;
	bh=ysyZ8jNuimzy9+z6z2G66Qe5bAbLZR9PSQBcEPHM6ws=;
	h=To:Subject:From:Message-Id:Date; b=LDcmGn4tcTq5gQn16ryzJuglBSNGSooXYCvvStkCISWY4klpj56sckkdoLrQfnam7vpjF/fZd3FgsmJ5MW5+7BO4aNZbJvvfVMOU9iiMqKsjsmFapqwmsXo+WseIQh9Su2AjycTyJkCu7NoeEoVrDGVV/sF0j/FpOccRSm+egI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEpZ4uF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEpZ4uF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E9AC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783378713;
	bh=ysyZ8jNuimzy9+z6z2G66Qe5bAbLZR9PSQBcEPHM6ws=;
	h=To:Subject:From:Date:From;
	b=nEpZ4uF1FFWrrfcb+66IHi7qaCMN+0UMklFWR7PVfWRHZb/hCQlHAmq46Nry8GwJg
	 uDNYG6k1j5S/F+OqFJlmy/wAW5A+pTyP7Uj1BuYmZzjsIyTRfoMcTxEoyudPSfMbOH
	 dk8NwZnUfsm+2teABnWj0r2fgGjhPAED3vKWjq8lej95/EklXosuajYzWH1Xl4fvLE
	 6pIcNZJfHpgcxbJ34E1QK1TkiTdGX2ErG/0FzwjS/nNJTdRmIr6mwCJn/cn1WNtuPo
	 uhVUeCQorDmvl4nO54oIeleBVR0MMLB36XcESQ6oZE3TUXZzX9xSET/jFHoc8R215s
	 /0s9XJgI9B9oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0D7C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337871368.18519.8334698754085594800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c4595187b1d1a97b1838c33852d3e7ffdbb439862ed569964ef09764c2545bf
Date: Mon, 06 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783378713
