Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF813D3AC
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 19:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714246943; cv=none; b=nCtvMd25TazuWXfwOFmmYPgolo+leU+Q02k89k6nT5+1khKtE7WItupFeuahpnS64QXSnJu8k5l4gJ/1znm337QvM4bIv2fvVQTl+0zejsB0/y5aFWvW5ZDP3uvHT445OLzT9c7ai3vWAlDyQoLPQPEFABzEDiKMz4K85n5V2cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714246943; c=relaxed/simple;
	bh=JE+ENs0WnxTDB4aSz+tFtp9LE11sp1adWCkF0DuDgSc=;
	h=To:Subject:From:Message-Id:Date; b=OxLL01pn+rRhH8FiucwIbX+Fp2s0M1fzSPUhiuh2jM4bKSqFx+Dx7nj6uUhgtKRADMsBdSpQOvXL0a414VqlXPeCB/Ak24MYuvljkDFt4P88PP2+i7YCgcCu+NbU9h2uYNma8TVHqin9zhQefkYKftbA9V4NymcNn/JjcjwlleA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNsiV6os; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNsiV6os"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D237FC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714246942;
	bh=JE+ENs0WnxTDB4aSz+tFtp9LE11sp1adWCkF0DuDgSc=;
	h=To:Subject:From:Date:From;
	b=vNsiV6os9rS/q5MLrKJIRkyoW4Ix3KWxyUhXoaV8DLiu4rdWBgDefzrGZhSNh4FXf
	 UB7F/tp4iO6emnVnbIjXh4lqS8JxHanVGam5Kh2TYX0461SXboWUQj0EoLhVs2sBnI
	 jdndyrM5vSYwFdT21sP5Xxmpx7BzRodL29uPIUQHHMzuXz4c8RPv9pl4uTmepQDirx
	 YyRf/sRrgAvNekt4z2j1pX3D2nkVzSW7bdoJI1wNihfn59UowdMXSp73hIJJTTDG4L
	 DGPrlC3+VPN3fxHwjKBrKgyfmkmDIX+nRW+LYnqw3MdaIkD7174FO9u40zw9HMG+7+
	 KBC0SmZFvKu+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4D5C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171424694275.28823.9876612234897730550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba2cbb58e5c6fe31710ba56ff9ded2deb62c76e65b1a8cf692ee59679f20783
Date: Sat, 27 Apr 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714246942
