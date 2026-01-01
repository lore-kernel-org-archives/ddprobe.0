Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3361D3C0C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767268434; cv=none; b=CPKWJOfZt8J5thdzRW1aoKTjLDWFU5lCfOh7zDY4CH8FR01SPCF59sb2mwpqqSA6LSqWcginbBv2boP3zCdOlQ1fN0Okt9KP7hJ62tQEu6dUVAidghdrswGDJPuSkQQ/MUBoqhG66EjvWtXGmAY0fg/L/N976Zqjnmd40kH/3eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767268434; c=relaxed/simple;
	bh=zjbIX3Cj7PqhxQJ8qAT1vp7IILlcew2fjqceX8DjNqE=;
	h=To:Subject:From:Message-Id:Date; b=hJ603XCmFxHhZCaqRi+rF9lYmh6aTxKMAacUM5tV44d6/Dnm38NwrZpZ/w+SIZg8EGJxzREMBIvZBZ5tJoTFh1nNlrTUm2ZVoMGZLs4X43hFiRmSUbRb3dDP0hE1ndjzLCnOsKMjnSyO6/GtoZhGvQBF/smB/3OAoMfRcNzve4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bL3pdbW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bL3pdbW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B49C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767268433;
	bh=zjbIX3Cj7PqhxQJ8qAT1vp7IILlcew2fjqceX8DjNqE=;
	h=To:Subject:From:Date:From;
	b=bL3pdbW251IUfSd5oblWyJbjKacI4IgpspswuYGbILojqrqdrjieE3qVlc4TTktuI
	 ssUHsrAO/kef4GUM/THJlLGgK2UhnZfZRHjtgUNsTuNMg6iH2/zZMP0bdZF8TwvkKC
	 Nsq12WejOgLBIsn1dtlHL+8kRj6dh0r07qkutEfzx0BtRvoRfz+qKFuJTUJqp3Jwn0
	 ZFT3BxSo1N038IJSxRm7DmxPsZBeZgXZrKrQpjI+j942nQ35q+uaATHwgln5anPWwe
	 L2FeKAS0tft8srmm2IsD0imlntNpQO20xfk2V6moah/iByF3TxCF5mKKEtGC+nrqMt
	 1g/2DTEZ5ClQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9531DEEB57E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726843358.12359.5798778664556031970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67235fa0230cd6d1ee4dcaa9c2d48bf5169105244ec43da1585907ca5eb8b65
Date: Thu, 01 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767268433
