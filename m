Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D14C266581
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744105794; cv=none; b=mfO/hnxrNh9hj3TvqcYrUwkTq3wGE8T+R9vCT/52I671A9FPlZ4dM41kyV0H0cH6X91LnWXFtim9kQoGOR5RRRZ857xg2nIlmpCA8GQtpEfuHrKBKIwfy0yJyBfSXEyMz4Ds50n9AvmeLVAKqN7gf86+HM+NvnHFlXQEDMpLNE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744105794; c=relaxed/simple;
	bh=D+RYpLO2burCAC4GJ7jT7NS8eZeLDjQWDnmTIn76LGg=;
	h=To:Subject:From:Message-Id:Date; b=ddXv2LfwLiW9oE7rVwdc9HNtBD6z8wo3qBhmBYH0r6p9BNaTChuZD3gsh2TSMBlzShgcnwzfn+AM0pC+nWmfNCmiUIoIckuaisQh9z/C26GujZvKqiuVWshdGl0/0KaBEJBV88qOLevmquXYaepsj9lD85w0P/kZRBbFiZv3t2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uut9P9h9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uut9P9h9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE8DC4CEEA
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744105793;
	bh=D+RYpLO2burCAC4GJ7jT7NS8eZeLDjQWDnmTIn76LGg=;
	h=To:Subject:From:Date:From;
	b=Uut9P9h9Tei/pG9ACgHmPCbxiC3AcFoD4fdNabrcJ2lZoW6m4lMUGcQ6xaowLia5a
	 YsjNQ67rY0oC50oum/j0Lu3njbsZaSWilL6DRmb8fHDO6zEh7CgBmmQedq2Q9KdrdP
	 8d0caYNH+GJeZLVq+ECDyIva/atZLT/kJ8nRL7Z4sMpDYfNA9fxgYqvv1JJF4bbyFf
	 QJGsLRAqRCpNWdxEQ6FdiRnaiRRcbDu8E+Uig5edYIfNwAwkqiCQ29jC7ALg+KnEbI
	 SO9qqWbs2gZoRFaI1efjcNQ9r9xNJ6lK2C89XPOXkE1ot9mUtVKv4CqjNtV/5XU1DV
	 lMuxPYoQuYf3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D34C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174410579361.22001.13384140543569169280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86533590747a5f1c824bd4a9a9426bf4e438c47c8c6d9fa4f42e74dbf0581c7e
Date: Tue, 08 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744105793
