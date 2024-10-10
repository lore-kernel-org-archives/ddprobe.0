Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6541C3F2F
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728561954; cv=none; b=R1I8cgEqNNBRF3dYVlKyeZV0GrBNnpRtabzOVZKntyD2ataI1hvpShBJeeblQ+ba7wnBZSh29yULSqu61X3VPScvyivY4OZHbe0NwIoyWkSKMS0gAEfndvsDRc3bhkEuXRq1mzTivx5uq81MKKoCmJ2aiV6BfcPOr1ndFTCEo6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728561954; c=relaxed/simple;
	bh=3aB08cN7gUqrUvCgBXRrbdlpbjoxMjUq6/THgrPE9cg=;
	h=To:Subject:From:Message-Id:Date; b=QaLiV8mIzDwR4tzXSozZG5+YseBfTi+CmF3F0Vvvg/da0GeV4Gs0rMZR/kjmgFmkYiTgVJzxCqUpf65IcWqXkA4btHQWu487Akzi8gQ7kXqN4oYiNps6xsFsgjhMNkXk7+uIBsIV5E4dtrZfWYmmbstFq6CSZTZsjOIUuf68gLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkGOM0oX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkGOM0oX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E00C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728561953;
	bh=3aB08cN7gUqrUvCgBXRrbdlpbjoxMjUq6/THgrPE9cg=;
	h=To:Subject:From:Date:From;
	b=IkGOM0oXuz9Dn3RtKoBiMNBKTYJxbK/Zk5fGYWAKQcyDQm1+8xZ5Oz+JOCadJbzUN
	 JpJHlP+3PKqirsD6mY41FCcVT/gXWoOMEV25YQGg6i1BuBQk4/7mbkYE5H/EzqAarA
	 sCwCKARKVCXsuCJQC1isZv9c/DQ4Ud4PLbh45qqaTbi4x5GB23SSDDC28CQvMPe1EP
	 j1N6e7l6DmLTV+TwtlO6wdTqDoBe/3F2jl+ASaLYhTMIjYpnd2N/9QkCA3cpAzPYgV
	 /osqMpgMPEOAHuKX9tZoUv66tIzSiGwnhH68rd+ZPI0W6Z+1VsLq9z3l3BzlohCcbv
	 qxffiheebcZbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF4ACF11D5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172856195362.27701.11062702528562626296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876b63141b60e364d4c774566efa40a82f2dc0521a351b0fa519e2c62d518e26
Date: Thu, 10 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728561953
