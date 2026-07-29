Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E00D263C7F
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785304834; cv=none; b=I/LrIPGEyuBp2Vaw7MB5EmHv/EjordosUBCs1e0UZi3WjNvJIPykzJllS2VP758lmT9b3pfmN5wlZR8Nr9yAtfUD0XL3AWCZYwvi/I7uJ+JUFeE9c2fCnXB87jJuAuIz12wUg67lkgcCApa3wVHVmbCIyD0GVYChVDy9yShxLyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785304834; c=relaxed/simple;
	bh=mWzsvOGAtAWQ6LkDZOQ/bII3P426dY0QKFtlbDlRs64=;
	h=To:Subject:From:Message-Id:Date; b=OLtYrVBJxqNHMmOlQU8K/gegn/EXMTzNaZhT8j9Mn/VSKjZlKH2g7CoOmi7m8MFTbGOsAN2mNJ6+57Tti+jPyYPePrddeODEQgIzTIju2czrB9uPvkm4abjqdEm4lE/8sF0rXHWkL2TSZQjibpagHBqhteCBggzlci64dG19xkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuD8xkWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuD8xkWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BDEC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785304833;
	bh=mWzsvOGAtAWQ6LkDZOQ/bII3P426dY0QKFtlbDlRs64=;
	h=To:Subject:From:Date:From;
	b=LuD8xkWlVjNixLhQLQAC3zabnKV02FtcFaK1mwmQ+k9hETqHW9KYe48W7Nx9vJX3e
	 uiiNY5tFeNiMubwo5cb721dUGj3SHvFRMKKkPskceFimOlvvNaj5+8ah3MAlzZvS4O
	 aaAe6yqnedRDH03c0/M69mhvq5gzeGEyvdTfJKfK5apSdXxxkChpPcZ1pJCtj874K4
	 HMItSpHE84LUiEMy5woJ76V0RbI1W6lKxiLk4kkVlz+iivIbkMGvq1JRqX9XTd7SwO
	 d3t4bqvOKiJDLiPiRlVqpVcIC2xHMNcWq8mPruwjVqOjb9BszSvNmSmJaEOs3AORO7
	 F7eHhm+dWpiBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8613C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530483368.32415.1133763445922757075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c51a90e2903f1e36051817b7aa2c809644ab54e9c2bbce52ca6912824ccf23b
Date: Wed, 29 Jul 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785304833
