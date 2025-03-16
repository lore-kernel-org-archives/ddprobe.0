Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413518635D
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742159994; cv=none; b=DvYt5TmyS/BEN0O0XrHycf8thg8NcSzOV+T7UUbcRhCq2/FjAiqEwOtVEHkoZLem7gbO0Fbf2zfwr+yrD5wKM7UEsO9smpUhHJlQ79CAA5XF/GjXAbGkEK4y96LqsmBY9yfE+NYOEuompO6Q+bpaSq4aufj2L+mFZM7alIdSeJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742159994; c=relaxed/simple;
	bh=wyAa+Z/QYlVoFUtTKzn5zobXdsv8MgBfuGLpDs2SpWc=;
	h=To:Subject:From:Message-Id:Date; b=XeLdv/FMVUFGdBHCePxeniUXb0jj4UkpXlv8GeaYB4R4SfwLnEFN/T5EYlpFh0r35O/qfwFC7BWT4rD/md1bss5i30syuYwNrNNXLx5hslqHje68+ghthpnxCYmkliFFvFb5o1HfAg8ew7U1yWXWX8bE/zHr1MynO01KYZQWi9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxMrA3oy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxMrA3oy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6696C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742159993;
	bh=wyAa+Z/QYlVoFUtTKzn5zobXdsv8MgBfuGLpDs2SpWc=;
	h=To:Subject:From:Date:From;
	b=JxMrA3oyZMta9Kh8p51jy+0OGidod11agJ7j5QhaSbH5a/ku/YI9haK0eHiBrZFg8
	 KViZ/nL6Ks1344dWZxA9uN/te27+J1I0zyWS69jrUE8uv5CilXk8WMcrtzdjDSEUVg
	 J/MzSwOZbTPyjCCr+2y6PEtMTrXmADeD3aQIpat62RJWPhzMWGU274harQd0s0kdK/
	 4/hLfM64dZH89yvOl2l2iM2H/3j5NWWDykR8f27sfuF7v1lqBlWGZHWwy+0Stx0w7W
	 rUlZ5hMwFb/ZzdiikTrOvnNKNbNWlwG5BZ/bBVPmtcJatxPPYz8oJkgBPYNLOijHri
	 HjZqBhbQIdiIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F189C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174215999358.1173.3888682693114864200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ef3fa605856078bd3b2d7e6d6f6402cc07fd09bbe4ec862404fd5c1ce5b87b
Date: Sun, 16 Mar 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742159993
