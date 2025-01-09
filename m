Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAA9218AD5
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736430354; cv=none; b=m3ZZebyKjH8AYvxAiJw3fiUyNmw6oJJvczsSYlu9qlzvw4x7mhTjFdUsgXMDndlwcA20zYje2xQpHfigwl3lm1Po2aaqLsM0zhj9GnZxktKqCkA7HnZfkmNghJAEMw9hqLiIuCDkrNt6J+wjcmu+8btiOTwmrLv+fAsor9brRRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736430354; c=relaxed/simple;
	bh=JBkbt+zbHbjjMAbjZDyPKHdztrqlIgj4psB9/geSpT4=;
	h=To:Subject:From:Message-Id:Date; b=YpQplQ5l8fb4sbY815XNuCkdS5u9ROhe+PqzlJqy/b/UlmPyPz8jQGkl7u8wTb3aJDr0b8I6oAIbDvgFxq8k8amPNxFDlJzqxGwC1NM0yzoTvuTTrmZeyDaLLzob5mmvBdZop6e2sdYnB73LVdtPcxu1ZQ5qsjQrSPcvzdpESJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3D1fsgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3D1fsgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B087CC4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736430353;
	bh=JBkbt+zbHbjjMAbjZDyPKHdztrqlIgj4psB9/geSpT4=;
	h=To:Subject:From:Date:From;
	b=M3D1fsgpTzWG6RpcgAU84a413Iajlc7dW4itKxRp1GVe61RfE4l57tinmUYRWrHRX
	 tRcGFonWkOsCxhiUK68U9olRruAgAiHnATWuiSbANtweNyqWWj6x8ttlJSe6Xig9uH
	 C7w883BJlLAVgoXlWvxestFsa1Ibj4dHgsPHjaxhF+oMZcizHu13z6vH3nvl4Vvtse
	 FKOnjY/I1ak0eKQX3w8l7knY3i4kc79UqQ+1rVeSnXO6PwVFobNbfQdxtSytBtTh4i
	 4RKz7YPlA1CSTitBSSmRj/UbVB8qKzOzQe2zqEME6v5yGrcGUMtlhl3UEt9lUXoExc
	 FZbEYLwLxRafg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBABE77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173643035362.19200.16035804144466535205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aad78694c49098cdb4b591f3800423b63b550d8a1093a9432d46b8b6ab225ca
Date: Thu, 09 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736430353
