Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2528D13AA2B
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723809954; cv=none; b=oryuN/rsOPWFqfLcvA65XZNFLmJTcAQtHTds+ZfU0LUxa2owcreH2XE+VB+nljlDwYF4L4xaGd3HwHrZ6rHa+OWSujrkqaXJabkCqFN4SnTPyu3FawBMjra5GnT9egdNVj5gm8WlWxF/Xm0r4zl82T/18Ih4IiCh5wF3x35ppBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723809954; c=relaxed/simple;
	bh=lslXwpGHjAYV6z/LInC1QJ8IznesHuaMAjHSeetdPeQ=;
	h=To:Subject:From:Message-Id:Date; b=dnzObFSTgYohFBZzGPXWQLrdKzZifFquApJw8rIZqEmjyzgC22pZljpt5/vmR4Hyf6XdUbIamVMpctGGmQNkK+11nK+lWi70iBcfHthUndKJTc6r7JJ7qEmuw+C8QCqbnz9j1fMhG202Ag8wv6mIaRODcK2eVC7pd/ieBV7f6kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+ctHTIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+ctHTIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6BBC32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723809953;
	bh=lslXwpGHjAYV6z/LInC1QJ8IznesHuaMAjHSeetdPeQ=;
	h=To:Subject:From:Date:From;
	b=S+ctHTIeC+5hZClnseT5LI9L+9MlYPvLvJE1+6CxuD+Y4Cy2YLaDt3M1cDWRnR/iR
	 TIpk5szx5bPNt3U8IkqtJoY4igefV65gQn6Mkt+5dk23AiERcK1mDcBblART5ZS70A
	 eQvYtApaAsokUEnDUYcsDf8/tDbqfb2IYZVWTgEEx6wdroc7xR9l7dBp3Ob1MOhJ1L
	 N0LwDKRC2GmSXdW1sdUDTV9Qpj+5UvU9VNeFIkdtzM+WoX4ebqbijo+vyHZdgrHTET
	 /pxbrpU6EnejOtZ53WNTO3MQmfJY8bMC5FTabmHOViApYaAPt/4h+IMYNIpuPNY4Fu
	 HLBOVEx+piygA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E12C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172380995361.29940.4777534790299409958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ab899c204b0dcb2a37f111cb6fd2986aeb31a358c63af48b625835d4e0602e
Date: Fri, 16 Aug 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723809953
