Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395071362
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753402794; cv=none; b=dajuWRMjNbOA4y7hhXJTlJntMOMnp5mLmUOkKkUl+M15QxaM5J6XgWMeJSpZbvZrDXomhoG6eMAqLgVlLmhWMrmgvmtF4cVfYDG4oVrZpENPr5QerJeA4wxi6UaXWGzfUMp3ioTTs80asq9g0yCAefJqNB4jHuh/NQi3YylWwdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753402794; c=relaxed/simple;
	bh=oIeJ0r5COQN/cO+cW+nExNY8P1xl8dE3WomtESrcinU=;
	h=To:Subject:From:Message-Id:Date; b=hzIVy+80K5Onb/8cDCVXsIh9s0ygE+zShk/1byo0r/f+kvoelZaZMFGyUChdy8gXPEWCnTdSUSaS7kawiBFKvOesodMaQxh4bPROOT2Kobc1kF3kW+qB1ByGrmUzUYxLk3Zlu/5zDSamTd42xZOrnuG9WizJvuZ9XJkCNFiD85s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEbt/3Fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEbt/3Fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB634C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753402793;
	bh=oIeJ0r5COQN/cO+cW+nExNY8P1xl8dE3WomtESrcinU=;
	h=To:Subject:From:Date:From;
	b=mEbt/3FrC/J3ZJUfb4NAev0tTmMqKuQNi6yMhmO5LZml4xV7h0F36vO5LTcG+mWpu
	 GezYXfNO4KvQ+OCyHNSd4PWmafxIU8rTdDYBII6IO5Y5nxCL8RdAm7p/Fxx/dZZ7NO
	 s/TLiyeUCmuwyjeCga1aSXPlNpZOBBeQ4JEFGV0UQSAb9JV4MMDdOggMbATBJjpsTe
	 qPd0n6+nPgHOiynBMk3Z/FYbC0yJ3xWMVZeV3/YgLOe3xGCOly4r2O+MBP08XGWmhO
	 CAztgBhUZz0miEQ/rz3jnP2jo2JGbQaPUbSdt57wrI/MW2niBDN0bLtf1sRmk6iDPd
	 EBZvkMMSPds4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F82CC87FCC
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340279358.27104.12048061279961445386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03df3c6de0448e28dd8724f676c4239c657fbda52d3bb74cc9c53648a8fc46c6
Date: Fri, 25 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753402793
