Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AF2257D
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746590994; cv=none; b=YnrhX9/4LdUcR+Zbqo/YAEyJulqQ0OAqDqQKDAl/JIbkOzR+UtNF/sGQ/z3G/GMtAUpjsZc1YLaCveIo3e5jUA/JielzAOCspmeWm49oNhnNnWtdbqIWLLle8tG+3XNLo19CMuVCn551UgJilOSATpijbNmNNvZhQRc9ze6Pbr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746590994; c=relaxed/simple;
	bh=5tSdqlNTtaunnBTuT2Ny8XSSi7W9R+o/NqdJGP6tZm4=;
	h=To:Subject:From:Message-Id:Date; b=U2a26zC1HMverJgRY/W5AkUV9uTF/chhn0FGSIL0olgzFwAzKYiPkyZoDrF4Hyd+QgP42Gqv4g3A1GVLHM5V/XUI91qUMs+7XCbuSs8Ox6sLbKcvV66bxAjtdALK3hP0vgDoqURK/IW/HEw5gYXZP9BmLZYS7Nz7P6CG7EBrjD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=te3r5H5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="te3r5H5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7422C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746590993;
	bh=5tSdqlNTtaunnBTuT2Ny8XSSi7W9R+o/NqdJGP6tZm4=;
	h=To:Subject:From:Date:From;
	b=te3r5H5FXqM5pB5QIzQ5uEkSc5D9EG1Wtd8zjdcxDCw+lW780pQxLhVJxRjRQfo+B
	 S641HLDEC+eS2n8ee1t2XR2wEe6bE6Aj1U6F2XUONy5Am6K4ZdERrx2kgJgc2hjzdO
	 pSguD3ggjoCtUT3XEOenh8sQt1tAJgPoWKfhVN0zPvtb6wZidMllfRdP0k7K0hFQie
	 CG2+4g2lgmFaPvZpIkqXYnNXu9tP/UfFIEuJifwbSJgX8wQ5+2k+2FCUST6TMVOZG5
	 GYRGx/SOYkmgemyvDo8Z3jwevn6Ypoblo1NH69QJ7GvtHVe/XPDgb3ECDzVOViCTmY
	 rgL+pbiy6dauQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AFBC3ABB6
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174659099360.15447.17236970149939640455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81866e547fe6bdfb9c14e2a9572052e5b6eb02986cf037f1e18b63b885aaab37
Date: Wed, 07 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746590993
