Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1732E5B25
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752854394; cv=none; b=W62tZcuORjJFv3sHp3MTNeqzpLnQAiby+bCXwux/z7cCqTcSiVlUrvlsUZLQe9/C4UPT+CUGcwFRAXRKBYlZiBMPw64S6YjA66MS2yHcuu5VjS9sbcRO1NRx9xXsURXRAIh93qVZDg/WK1D9i6MivKlBQZkUt047zJ7LAW6o8oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752854394; c=relaxed/simple;
	bh=wmXUdNn7+LLW7daQJxTKOnatK3lG7ZyVVAG3ggYBfKg=;
	h=To:Subject:From:Message-Id:Date; b=lyux1jsG1BtHdIJSp5fsTjf/FQ3ho7v9iewZ3Nmd/nkBAdKQvmcsTShlw2fwXGldrZW61tzKSVSErvD1aMbu5S6ELS7vm6otuS6e0Ri3f4K3bMnf1qAw1qq0bAhoFhkxudz7vMMmkR5NVhWrInqd+2gvVZUYV1291tGa0aNQqK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozD5GqBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozD5GqBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F247C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752854393;
	bh=wmXUdNn7+LLW7daQJxTKOnatK3lG7ZyVVAG3ggYBfKg=;
	h=To:Subject:From:Date:From;
	b=ozD5GqBcZUTfcC2yuGJiLBeqVJCUJidezQeZxjmUc1S25CLQeE6chxwAaibG2asZj
	 R5cpQdieNR9SH3FiweOYcLmyLKOwsn7ejkQnwXEDvLqU0ZIOVQAkcyve4BtnEs8Xuq
	 ExqVW25QKtZV9xVW0pykbbpuTnSqNIqlaGLip7hNYsdK222LO510MSUBUBYfcdPGlA
	 TqepOlApPB6vQk5xfia9YQf07f91fo+xZnkOuAYGjHYBH2gX4JGyHpRPYJD7an85KC
	 F6DOmhGpbSsbaOE+UfQHfWKPBKC2Sw2qavtiY0mfcTNL8aN590sZD4dbiuB98iqZHQ
	 Oafbg/7v5K0qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90735C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285439358.23051.1356298094286680445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0f173e91485bf2111dcc9c99277f2947250a1521f291e6deb4785db70c7241
Date: Fri, 18 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752854393
