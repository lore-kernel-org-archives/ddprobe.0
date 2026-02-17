Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0951C36C0C1
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771340094; cv=none; b=BMritL9bXmK6dJUSpEIrpybYhIX/i86M+aCwgFjMjtmcaX2O1ibC/IS0gyAzi3kxkuFhmRhR41CcIYpAaM8Sa2VLnXCyF4uF+Ao34MgLuxtmSGYZ5sTMW9FZzngh77cE2nG9FfaaT7nD0qUl/A+4evuVBkjMcaLzACIxA061VEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771340094; c=relaxed/simple;
	bh=X6SMHXp3dTDSDtZm5LQ6235vP3XuyOlDSX/rw769F7Y=;
	h=To:Subject:From:Message-Id:Date; b=Y0Q80hUkXMdd1LP9vDuoetqn6tuxY+ifVgmV/UlBgpCp5isTlfEe1P/i0l2D3NG3PaaDx+x0ZstGOBUM6gKOm5F2OVHrfJD0/P8z+M701wcJLlUu47JQTiFWPN+GuvXZFO+PZT08kjSoFFTJsRzdsFRuDKTqX2jrNxWJAv114ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Edwa3BiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Edwa3BiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3B9C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771340093;
	bh=X6SMHXp3dTDSDtZm5LQ6235vP3XuyOlDSX/rw769F7Y=;
	h=To:Subject:From:Date:From;
	b=Edwa3BiZn+47cgYU6LR5i9XUiMT1x9YXVCQz3raLliegV5+x25pynssRvyQ/uLheo
	 wg+UzfpkYkr8hVRmOC7zuNf7/nLbLebZD7rFUoH7famsvZO89P4mUj//WhfAmhlX9V
	 7lE18tB3ba7jwEKBXC9nhralId6xbv8BH804vpIEtYCXE1rGM/PfeEm7cxKvNZXPJi
	 lnGgbuAfELoL55tIZtvdSz5l177zHTRGPqriGEHN1pbtJ4SirSGKcoBzxKoSc9vMFy
	 ixeN79iZQsX2k1NIC8jQkBwpskTrMsPccB0OibTkGxJvA4zRDDiN1mNGlynGlt7g3O
	 ihkCHlwapJ7Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997E1E909AE
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134009361.23407.1525864272715267531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975e80429830c14660a9403f06de75348841466b76ef7ce7228dd65e61e4a58d
Date: Tue, 17 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771340093
