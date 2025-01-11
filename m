Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8ED1AE01B
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736612154; cv=none; b=O5Gd0OlzgEvq0aWM7fnYs6wI54xEJyOTzlUIJalz5kcEC9Ah+FfLrMUITNGK0ICFLhZtRUD6IPCLA2srA3VjMo92wEMsg6FzA/2XAFra2yqcXk7n+8PxWFkqz0d+ZnsWdZed/dWXKBcdEPhpCPvDxmqN0BmZNd3KiyyxAapXkWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736612154; c=relaxed/simple;
	bh=W+gHx0bPhyRU8L+WjT8zY0gKTEIAq2OaqR4MJNiUux8=;
	h=To:Subject:From:Message-Id:Date; b=pyEYWc+bKU9ByPehZO918QBzLf+81ViA0aEpp1dSL6+WWNngY7r3HZj/xHUpnh4Koa1kiggJt7MlA7TVBe5JrxxsYGMWC8YPyautz3C6LTVFJmOjmy9I/inzTOnGFRK8K1tb1Cbbf8AH+/b6fzxXrW+CzK0hkz3dN+4/5I/+7hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAaW0Ca1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAaW0Ca1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF49C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736612153;
	bh=W+gHx0bPhyRU8L+WjT8zY0gKTEIAq2OaqR4MJNiUux8=;
	h=To:Subject:From:Date:From;
	b=dAaW0Ca1Jkuvf1sBscizftFdaCUiyx78X9mWKGXL1SoSpm1g8l4oIbgTqLr93hg9A
	 v/0iHZuD+o8YMsbep/pLi0fyYDJvnHahDU7z2+/uqnjXKJzyBJ2LTceEo/2W7EscRt
	 TRoRGQUB9xGRJLcjC8NBLMob6mBKDV2gRXy2to3bf65IkWU1BvKMhEA47ob8ElPqaa
	 ZVf3kGPvj67vJSkIoUhz0mPJQn0DdfCJh7fUm0WPBq1QhStU0/EHCZsb9JUm1IAdzG
	 cwnzSeT1hAABhk3g2bbhgwpzYn04TXlMbKZXI4v5mCGdcY1vflrCq49fnIfUim4ZUA
	 gw99otoaAZxCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F05E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173661215358.22513.14030276147616848007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89920d1f9db8a12029c4b2e452d352896642397ec963c431db4ade218f300e60
Date: Sat, 11 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736612153
