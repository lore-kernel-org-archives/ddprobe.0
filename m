Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46949143725
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736096154; cv=none; b=g0PMT6oVxWUaWAuGEr6NSmR2cp2tvYkZ8bx5zRcW7fRb6RfJkvZnitTMbWQ9MUfMlABjVF/mObqrYCAQd2PA3F3TIochaFnx9h89OVJJpD2U0Xll3IPfkvjfPg0pOqQjaEGbOW/Lt8IplKE9n/KaSBWID/B0RPS4+ScQp+nPsrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736096154; c=relaxed/simple;
	bh=StwSrsK2FCKQhtiQaiO6oqGEFUg5fu3/gQO7emjmL/g=;
	h=To:Subject:From:Message-Id:Date; b=RO5/gCZFGangemur2dxXfiHf6JWqwL144XjL0jpUzDAxp28DPwjD95pQboJKxTXdY9+XgV4sardZb7zW/u2ai/VcoTgBB/xn/E3xDkhagesjIZsTPcpzD9zjc8NsM+jiwYLsbp2iCf4Sre5/Y+y/CEHspS7Hb2V4ffy7Uo0pzLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkKYusj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkKYusj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB8CC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736096153;
	bh=StwSrsK2FCKQhtiQaiO6oqGEFUg5fu3/gQO7emjmL/g=;
	h=To:Subject:From:Date:From;
	b=hkKYusj/uJkAEvuoJxhPVR29/aahix7FVEQMD6sYtCjwGQqTdYJ+JlyeXfiOH3iiW
	 kgfpE5rqkbBiIsYfy/QIjCpOeWZ/fZPAo5WsTeBzNI4QDxOtKCfKEI+Aq3nMtsPjNt
	 7wF4R8dDRPYvji643PCNjg/GzYkatLMTufkD7eY082/iXyZpPUu/0VDgQLZDxAozJA
	 ly140r052L9Y3MaBANepytP9e4coscq/4euWaWcxtRoGwufjzfQEJuHUAT4u0Al+Lz
	 Pe/PljXN4clutVvgkxBGUnQB5Z7w0EhJBBdZ3JV1sjhI/sj/cVmIwyvgRIH/3P3c4l
	 3reXg/IDpfnYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B70E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173609615362.25813.5072118674148751522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e07c4ff07ddd10d0e7e1220cd2637df1416124f44587f455a087d2222a093857
Date: Sun, 05 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736096153
