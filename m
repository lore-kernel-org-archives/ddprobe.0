Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B0A28E8
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731132954; cv=none; b=ay5yBKvYJdIlAk3MoUrizNcxX0KXlDmZ1v4ZNOk8d9x9Z8rQQmyra0VPOlC8pIs0XatpTrxVQtUxvAGnoOmMbKTcAsNUSc1bgkjhIbdXsocYpqrRRq6b5EVVh/ndtFDwlMYKsnjmZhB+qaNjzw7Ubvf2JJjIMGC9JQ9B9EnhqYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731132954; c=relaxed/simple;
	bh=lm3s+1YVk67hd0RVWZe4+hEjGkLj4YySz4uf/N//KVo=;
	h=To:Subject:From:Message-Id:Date; b=mSs+HaqE/Sg+xU/LzN2g8BQNRV0BGsT1pnz5fjCuOKlgqf8tFCo6FcapGphYsoGxIJumpJsE4V1hWKJWXUfHxHHpBY0J2pb1oq63N3tHPFRp+OLdJGsuWT5ZvRzB5ezZFWGng3K6xXxSU+7ku35oomjnWvW2geVDM+rvdO0K2uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NopM3FDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NopM3FDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32B7C4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731132953;
	bh=lm3s+1YVk67hd0RVWZe4+hEjGkLj4YySz4uf/N//KVo=;
	h=To:Subject:From:Date:From;
	b=NopM3FDtXqiBcDqy4v9ZYTUuQKKR45h3ey04pTRivzaVeZiri0Kp/un95SiZ9JV6p
	 2daEucsTmkcJCG9Hqhywoxg27mIJUHyHIdmySs3ciCQfEXycItun0bQdR58c2rUtNg
	 1fpOHVu7OI4177NxyDWH9000mRbyw0w/GfPddrhqhKYVbwNSJDCeYbYjGaImipIijI
	 H0Hh3LVOsVP/WObAaCSH9TUfCfDW4UZzi1kkEqffVxAzU78BeK33BBX2OuaexA4WrW
	 A8PyOQiWNDH1D1+SYp7XSxJsla+/Sls/MI3f5dSVv4Y/qgy2GTBtuGDzXxrKFHj+2S
	 2G1PXMPRFEGvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBB5D6409A
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173113295361.7491.16622827068889651678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4248d54d450f4163e9d198cac5ac6e0ef591b557ebe801cde7501453f732fe0
Date: Sat, 09 Nov 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731132953
