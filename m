Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132DD320B
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728240954; cv=none; b=tmJlX/G8I6ENVnzHhP+pN5yqHHLQJeuMMA+4NLiqYXJfWVMurjO4mYGBGvWsVXN17kyrpibmq240PCq9d+ZoM51lPrIzSlwX7wnLugDdwLMaviNjw0XD3270MduQc3J+xybhXut+bs3fEK4l9tUJdWwctM0pCJlmBMn5aROM+Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728240954; c=relaxed/simple;
	bh=job73FP5a2Xr5TTqKg8lXiMtQkq1wn6fND0WzqPziao=;
	h=To:Subject:From:Message-Id:Date; b=tTiCMkwEZdObYj8VFucIyC2d0q7C3RBelHQmOEhkaEtAeJ9jnwg3RsEhv+F7KOMYhdyHDXGf5QgDb5Mi+9vNpa4iR4nYtolAitZsibEjgleFmnPp/WICcb9Sopx/pF/tX0PEWahfukyeW/NTUinG07PmZTmdVysH9Q1qGK+b/z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b05f+i0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b05f+i0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BE5C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728240953;
	bh=job73FP5a2Xr5TTqKg8lXiMtQkq1wn6fND0WzqPziao=;
	h=To:Subject:From:Date:From;
	b=b05f+i0dgMvjKpQE7LCglvekqwH4h4XhdVVxOJn0eq0eZT9XPQwnA8QqkKRfLUtfZ
	 rP9JCCJ3vtggdnEjqmNCUv6pifHdSI9O0dVk7At0mALSCNCg0DDnObalgjVTxty6je
	 ssZJowHvu2Uticpu+8sB0PME27vXi4GdWaUs98SfEF5Pk7xMmMzmoDBr2hsByBH52b
	 7vCXSxpyVTlN1nN6y5DyHn4l3MI4hKaGy7YHYwXQqoyx9l5aeMKDp2YleSUZTHasbE
	 gju/eYlqLE4gta2yy+4LRGwklwHzJnp39nIycf0Ro4Z0AyDZGK+DR2AO2yWmCqlJm8
	 oERZgEQov2Jow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FDCCFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172824095358.31873.14675486212637761196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494eb198af6bed19f8540a97fbaaa1a049e2fa232d97739a9cb5bbf26169a770
Date: Sun, 06 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728240953
