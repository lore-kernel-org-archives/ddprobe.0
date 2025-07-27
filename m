Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC6F19E96D
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753633794; cv=none; b=lhSl1EXxWdbZbF/yo+KPLuVg5Mfv7/h17cCNrlQD65cDtLpwb5OqH+GnoQmoNQdoni31ZHZYtYBlTmwYDSDkt6FueqAwagzqrgtccuC6p1XRsqHOhyNnbgMxFC3jVefJJ01XzNC6OvT/ZzjqNG22J5eEJ0531LArvZSX5aKTNf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753633794; c=relaxed/simple;
	bh=oQmbcO/pcpCIp3FmEwf+DgEFYllmz9gk914EKrnRfj4=;
	h=To:Subject:From:Message-Id:Date; b=EL4LHPd6RiOq1pmlklcvH9rGW7vW09Rw+kkvFw3P4pvOO7a8OKhHQj62j/JbZtmJ5k3nHzOKOZsLAwTdxzZenbWptdQ4jJQi5hQ8ljKpt3aEiNna6fcWu5ZZa2vV/Lr/acrn5mTyu+Wt8UCitJK+++XvX7hQDqiQrhXYzxxFNVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJ++Yi1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJ++Yi1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A147CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753633793;
	bh=oQmbcO/pcpCIp3FmEwf+DgEFYllmz9gk914EKrnRfj4=;
	h=To:Subject:From:Date:From;
	b=hJ++Yi1/Qq/QkZ3m22aT9AyD9eLOytAhh0+d/blmB6I6Xz7KRzQUDc2gOlP2bdrlS
	 DzPfW0tISxujOtCN4hrYBguTOFdPDnrRAf80NWaGIZmY/Iz375BlcTsxv6w/hdrtbm
	 wVgSwGTSbs3BU+X+TAOR5PcqCriDcDWxEzaJVAUS/QaUwjTSsBwxGFHmYYQWCdH5Dp
	 LTdw3nrx/C+KcckwUc3gMeoKIqLGNnncB39vd6fGnE1ayqb4zhJhhMGRiP0nnZzkVX
	 /t4GV7vdfMJnC+5r6yEmG8L1CGbQxbeOkvB4DUeQwecFikBq8CEdBs4hnZCnUiAMYf
	 s/cRvQNAWZXKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF23C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363379357.30844.1842100751070906536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6584be4e4b803d5cb9c5d2ef0dee4f7072b4336ce7005ce22449bd65dba360aa
Date: Sun, 27 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753633793
