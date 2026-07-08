Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609C43FBEC2
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783506514; cv=none; b=JjQU4ni3giqm6p64fu+pE5s3oK1W2jZZ1ImoHZrnanfAc5gp+sE1tJSBGy9cU1PjM9+shVebcXnS1gNiBl9P1+ihEmXpv/D1xhI6mueO9/wHX1uHVFHx6WiiCv9C+qGzz11oBHv596BUBCyeZh/JFj/yteBz5mk8lo3vfqgUiC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783506514; c=relaxed/simple;
	bh=H73UMMBjQc6mhaKQh2VR/K/NtBf7y/LkgJgpa0a1Tfw=;
	h=To:Subject:From:Message-Id:Date; b=XQCAm4JKiuPLSIW5j1YqtoOaSRFtyDExI2EGvSi70nde3z5qQDhwz5bo05SmIDJZ2fyeuUX6nrDZxx5v/bgI8I8AMXZKVsqXV9hhVqYSy1K5ZU6oa8g7Hih/jk9WJvdIh39vUq2jlff/8gkXa/Mr8z8FI6wCyqQormyCAstmWJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2RpYeBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2RpYeBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A37C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783506513;
	bh=H73UMMBjQc6mhaKQh2VR/K/NtBf7y/LkgJgpa0a1Tfw=;
	h=To:Subject:From:Date:From;
	b=l2RpYeByu90GBULIf4gT/V7yI5jULvHGTcpCj2uTIaW4PYifc7pt+hm1cbSMDc17p
	 VZrk8pCXdqt3Pyh9HkrqE4tkyNc1qIJy1C5x8MUxHjkTOH8eVJske7MbH8OgdafBrq
	 619PxolRhJXEX7nwn8CuBfvEMGpzqEQT+8H2rh2zYZrBRfimM2L2IyMf/hiuKElaNj
	 MD02BhnZ5KXHQ0vm7X7FdKjmC3dBLfwHYQMg9/OmwzkMUhJIeBQCla96woPJ2m6D8B
	 MMRw6iLOhb9BmKGtFrbVAGNxOnjwPqSmp+A1w2dhjUz99bW/m2TGMt56LpzYwfWA5s
	 K4FEI+5bCNn2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA259C43602
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178350651368.15753.13206170773330418170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214d562eb9d7b8422ffcde32c0f23e8f72504dd1d5fd4f08669e77126e3ca3a4
Date: Wed, 08 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783506513
