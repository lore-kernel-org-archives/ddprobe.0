Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFB52EA749
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782456454; cv=none; b=Ni4pt68oTGxyVXe8LhwNkq2m+jrSRJ3U7s9ibLeMSl0co+tArX7kQdvj7x+XW+EN6wtfniTL23B4v74EmUmm88wQSZ4lW8mibgd7ZzyVd+icLosiewJk3skRgFA3aoeIu4TE7snMbTESo32w3/KCclf5riXPTa/rn9xd4MLzfz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782456454; c=relaxed/simple;
	bh=yqg4udbR45ymIP6Sb/py/2l13U37j3zZruvXrcPU15A=;
	h=To:Subject:From:Message-Id:Date; b=VEWj3FApvn0u+//Ji4f0hcsv5QMi4kf9UccIRnAzG0Vcbiht+evp9PNlfEEgcPk019Exzz5twjDBjCkXaHBNu0qbG/7eNRuN83IxKIEsSlAtc5GDbTOAJAGoN0qoe/kdrrWKhyOTkmdHEgX0vStMf6NZ4oZ2G5JWXZ8mAligNTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaPufbhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaPufbhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3EDC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782456453;
	bh=yqg4udbR45ymIP6Sb/py/2l13U37j3zZruvXrcPU15A=;
	h=To:Subject:From:Date:From;
	b=NaPufbhlzSkxDz+XVmkxECzfoTy+kQOoVzU2pBNIGNRlngfcBmv1Ndan/6y/OUVuy
	 ewu+9CJ4jzQ+qoTRqyYSoKFdp9GgCov8cqsM3juhYqr1OBABohYfdIQ7czNaN/CBUc
	 nLkzn2+Y/XKcOOUPYVJ0+G3fSjVEvOkQK6icyG2okgpi5Epd0jjoY5gXFTHjMOGPVh
	 xxT2Zo+EiZGb3CEGgfdoBaLTI2SGGGESSq0KO6Tys6dlemn9Brd2HJYcIt5dDd8yOA
	 WMyQ3publ2zOK3UkMwTdKj/B5iHzonMVKIWlh1dydQIhhU4tJd23X9j5OQDlBeWTDm
	 K4OajqAiRes5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18B3CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178245645370.15226.13370626164406829505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e88e1028fbe3add7b3a2bf8e94d18c4545d18e61ac374d43faa05e8700b27d
Date: Fri, 26 Jun 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782456453
