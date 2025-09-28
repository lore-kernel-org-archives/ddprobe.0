Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1303F54918
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759043994; cv=none; b=LT36H5N5QvulLfsvPDu9echWDf8guDI+pNFxS4Vnd+JektcVjOr0gIPXBPz+kFBANMXHDcylkRCOUf4fMpErl1PYr282FatWtMjNElaaiGrxSlW1W0/IqXfcEynQ7p6sNq9zTgX2UPAf+BOmrKGdu8P2PJ4uPpid4T7pZ0wQ53g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759043994; c=relaxed/simple;
	bh=YxsAm8E+AQNpLgoSSMoDTJWJw4baYn4+z8dqTDK0A0g=;
	h=To:Subject:From:Message-Id:Date; b=Xfdm0vbMnKSKgZMwECc+HDoRjCUYRgHghr8+aAAMfdNFdA2H2ki/qSn/cocZwfoK+xW9I5iKtpfQOpmtRj0WXugcucnBMtPGYAJWtvjkr5SpPyPSQ/RGySF1YX+7viQbxgvnBGtzzoG+1MgzDm4k4SYTBw9WMOM5TytHFWXABGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eE9/eLMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eE9/eLMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3409C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759043993;
	bh=YxsAm8E+AQNpLgoSSMoDTJWJw4baYn4+z8dqTDK0A0g=;
	h=To:Subject:From:Date:From;
	b=eE9/eLMMN6gEnzvITrqB4ibKGdkH5dq4RK+9GgrNfFXMUEh07l+y6aATMi1jrZbh3
	 iPopo863XEZIOnjI4LZ9ilIfQVMaNQnKtUFe29FXoc/vdqbrQ6iK7Y4P9N53Uf1GOz
	 otCbp7IeH3O7e8GA7ZHv4w49UTF9dxQa31TYIY8INpLKxsMKfoahY4QU7lYqIqB1Qb
	 GYH06y+ONNBM2vOxmL1l1njRy6EEm8Lq/2ClxN2umhvjMkhhFgT+fWmYutNA+bjGyO
	 aowaTp3yUASUsCVQz0T0O8FB55NOBAbCmYXdVA175EN+S2ELuGEQauw1j59Ul06AXW
	 nPNb/U4b0QIyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9069BCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904399358.11070.1120797784886605408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9acd8b9fc879dd2be49ec309a5da880cca4fab270e902d9043e0861d3dead3fe
Date: Sun, 28 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759043993
