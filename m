Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C9A1C2324
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785087034; cv=none; b=KZYuxEcLxVY0JNNtyphFtD9XPQUvzI6SgJDj5y1FI0+CtZ4ekNQegctzHHKfuH+rDLwTEtITmX+xFI4l+0fzk+Jwo4qbXC9XHXV2jbrlT7aLrVnI2W+30gGeB/Oep30qe3S9JesfUJIOn9tnICTgUkL1iLm5NRt0kDwKEU64jJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785087034; c=relaxed/simple;
	bh=+700KFi0PSuKTnpMn1C+ZQmY0t//W9/jUp14wlGzqVg=;
	h=To:Subject:From:Message-Id:Date; b=HOEdYoHv/K2qog3nUgnfuEAIe4kUg3uPttXH2nlmlG0eE7lZhJb+s+zvikvsMJzUJENXZ4D8TRgGpHlOaZf75h1yQkEpC8Ff0lz97oIqV4J/S28gpbm2N15VtKye7UWlSEnOZRZGj78wA9pJz7MuL0RM0+l/ACgyk6etP60Cp3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRUerLva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRUerLva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34DAC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785087033;
	bh=+700KFi0PSuKTnpMn1C+ZQmY0t//W9/jUp14wlGzqVg=;
	h=To:Subject:From:Date:From;
	b=vRUerLvavvHYn2BQOesmSrwmZy+AV9QF5EHTH8+q7RqYTcWnK4pOlA6Ufsy2EKTkJ
	 Kr5YpEa+bD3ZF2tnssoMuwjsnXIXUa45XFeXUsjMQPYZpI0zXZonHNXEW6wMgpamrk
	 1/FODKdj4WhN8LFkXFMDtDXFznV1xpkFV+httM/7Gq47txOFNKv9r/kmUWtxjpucNk
	 ptDmRqHmTWkmh8EYjfmSyMvwfyNToACvitiR5Qlxh7NfbOxw/xABu+dgrZ5ftG9JUd
	 IFGfMZrZqsRvadMHKvys2KtinWZ6eAVKI3TmZvM0vsgaMpk5EerKrO0Grvc+bT1+/P
	 JN84xngRJQSGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB59FC531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178508703368.6781.16149212112818546412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910e735bba723641d68404b807e7207b2ad83c2cf22a72ae5b25ac0f3f873b9f
Date: Sun, 26 Jul 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785087033
