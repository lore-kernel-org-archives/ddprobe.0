Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557C76A33B
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737926754; cv=none; b=uvtKUsaYI8Sw2dmArBfZ/tRYwkKvBXgLc4jsaKA9xLdFJtcHdFuoefFJIJvag69hJO19cjs+ZV8wqjAdjoH7Iio4Y/VfsIlGSZYThS/vEsq+gsJ2tQCPEl4Rd4IrwhRcq2i0SV6f2aSYLtUziskLI2Ze+KTxLo6/FSp66MKjSkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737926754; c=relaxed/simple;
	bh=V9smA2rIoQXHLciOu0etimRbmVKNEFRsSvuijckBnZ0=;
	h=To:Subject:From:Message-Id:Date; b=bQhG9NmByPycMyPbzGLOETt+EmBW1R4aAk2vroG3R9v0TuirhInMLwLbVuWkzAjLk6/na9Pf1GTSSpPxcVxr87/lqz1NZ86EWseznnY7OozuS5Fpw9Pgn6NpHJL6oAnPsAF7XFTrLyOlzXjIzQVF5Gn/X1TV7nv9H6dVcNKN2Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRzuKPUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRzuKPUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD14FC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737926753;
	bh=V9smA2rIoQXHLciOu0etimRbmVKNEFRsSvuijckBnZ0=;
	h=To:Subject:From:Date:From;
	b=vRzuKPUsTQDFKiACZ0kTdJkcM2DHJFVZvh9lY1T2fZAAp85ieCPGgYN+dmjjazAJt
	 wxCCClpor3cBGgeDeOB31xfkGxKtzrkO5cIvv0iJoVeD6/2QkjXcaOF1ipYO0Qol4d
	 YhzQWQc6k1sDCVarx/4LtoH5nR7ByGj383x3aKHwQ7Iiu7iEBox4Jn4RzPwvW3J9dZ
	 +qRwEb5LLOeFtSj+OsAXlNPnj1S89k9A5Jj6ZhJshOKjylXJxwCBl+teAjIYu9Q6mI
	 llWOujtz+hBcuEbusg5uULXwvqKjIlAknnf9MZ1bQr9K8QFd0t8qrP2YjZJJUl0Je2
	 pJA1C4sdz46FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9273CC0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173792675358.25798.13394184374238364993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 122e6f61aac6ad62fbe31e1ea13b76732e73211b8160afc7d67d0ad1704d8d07
Date: Sun, 26 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737926753
