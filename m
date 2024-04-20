Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1C88C10
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 16:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713629423; cv=none; b=q/55CIFUrUiHj0WRnMFWAvbaKI9r9sAVaRZFCjDc0vmuFbgrYIDUno771rTMyxR1wTRgil3B9pYPXJV9HgzsIY7GMqLGjjVoeTe+wcb+SdZcyBhYP5mPoNr9z8h8OVW7FZXR1v9/EofPL5kCxvqYUU9NYvc+ITFevqT2AgrCAgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713629423; c=relaxed/simple;
	bh=AgVF20LG2pdw59q2Vl3/f9sTQGYuTlg0/fEG2cSagmM=;
	h=To:Subject:From:Message-Id:Date; b=HbfQ+usovTcnUh/bJ3sl0x54HtB0s+ZpBFDpA8AWLR7s8wFafL0jiIY1DUw1j9GJ8fKbkNwqxgmzUfNfcSMyH1A+VVH1DNpnNhyxEwKQPXhOHeqELChE/RkZ5xv0ue1jyiNh4ehni9KW1x4ciwELlIX4Ke4GHGjmADlkg0l15r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMGtzeTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMGtzeTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF43C113CC
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 16:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713629422;
	bh=AgVF20LG2pdw59q2Vl3/f9sTQGYuTlg0/fEG2cSagmM=;
	h=To:Subject:From:Date:From;
	b=bMGtzeTm4Mqq9pkMipMKKA5Yja8fqR9JXt8nzl2+FIXjGNYrBGGXmYzjOGimlCXDu
	 KeXjf/oZ7d8mesktWeX5C/Q1d+PhkMZi9LAJBZuSFBwSWJkOMw9KSUiNzjVmLJH8OX
	 1rTXNEKAYpMeX3h6TZloOwzNGV1lIEgoBBMaK5wHwDauzyR3/gxj646uUaGfmuwCrJ
	 APfCJiv5SHe6VWt9ylEZ4zZnqVYXMbbrQBlm8UqRVyVjmv8IBHwHbwPns+4daTuXTp
	 VkrFRlToyegdw83A70rQynR+7ge6inxCfW0qXzf9nxRjj3Z2N9vkI4yhAduNOcFwj9
	 Z0FXEI+KTjimQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8793C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 16:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171362942281.27883.14224764128499911405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4698c70aaccd39f4baa73e08b4fd615dcb3348185f15bd90ea25f5f6629eb2d
Date: Sat, 20 Apr 2024 16:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713629422
