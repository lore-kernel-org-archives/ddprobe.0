Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DD34B1E51
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746516594; cv=none; b=B9ZOD4FJHKFv1eJALrfYymFsxDCyRe6LjcIXo4NhYkq2UDPRR7qeGnFHecC6IVNcbB3XcAjrG/vLtLHxhuEjGp7MFAEkCU0NDfNblSS2FM1YHxSiSJe/3ksUYixKT1C/HdFh2PqHVIgeU6WynKFic1qi/r5auGiceww0fn6r3og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746516594; c=relaxed/simple;
	bh=1pWyEOklStuo7SHymBsE92C8OKvGFIu80hTizFWvS/0=;
	h=To:Subject:From:Message-Id:Date; b=HFrMAOSKdj4kTvS5h4NOszPKanwE6oPZC8rs0n8zECYTCVe1d7SI/YmYyTtXpDQ7Yxlra5Yz5b5lr6/+Djo5PrWbjOeoFrbUBayTjhuHWTff3IageiNTngMsIhKxu4ptpQ17HiOAG+ZT2oZ5L3ZEUd6o3y9bQMnMCXwABRzCy+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVO/ZWU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVO/ZWU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F734C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746516593;
	bh=1pWyEOklStuo7SHymBsE92C8OKvGFIu80hTizFWvS/0=;
	h=To:Subject:From:Date:From;
	b=EVO/ZWU80mN0bddnz4aM9/aJ6Bdc5FJEo5V1vPN7UilDFxq2HmeJdhOvndOumeIbR
	 oiuJa2gv/pcTZN6ps1zT4ZOtSaY9xDRcqgxdpmQcekKKSB5PXPp8rp+AVjESDmutPV
	 nUm7eBCVny1ahFxp3c0yzQKlMkdvuBO2rRWOhdNx6kcOstT8dRO3KTCvyWhfz6eazq
	 UoqeqaYbkY5SCCa+AYS2BIQTyU7j1NyvTlXEN28sHHHoTxeLWI7vi2dOWQtRis2Sku
	 gKXr2ivqg4ZKqQvNmFdCkaMJ3hbk/WP4nZiEpSNVi6GZPaHm3SaIGP9nXrhS6vKQgV
	 nklVKi60EC85w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A4C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174651659357.9387.6096803547542504334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994f75601c5a3b79f8a68b290080226151f23074f8463b25533f9217c6f07281
Date: Tue, 06 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746516593
