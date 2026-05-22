Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354E23905EB
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779443554; cv=none; b=HFmNaSbkX7MzlKkuQOykLezu+pEpvG5ZnEvUJNQ7jSouYF61BCIfutoh7cXM6BW0ZJvVNZ0mS9Mc1+BJBxFOlZ+P5vXXBPNOVCgTX4i/zSqbCu3NjaIzYN4youILoBaNvH5Dm3Pdb9GYJh4cTpR47D7Pf0yKlk8pBtbUPAVYTKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779443554; c=relaxed/simple;
	bh=bbgILmr3tvtTgoJ1IwJLsX9RlFhBf2YUX58lC+mijb4=;
	h=To:Subject:From:Message-Id:Date; b=ZDXTs6OUqXenqK3TfgG9rEYl2kpqUAkpkwDXH6+5acWiyNG8KqwFKM2sRmfkpfu2k6tp6ZKAp7Cr1z0PKR9/m7Wuf2ApXhQw0kSOiFeNbdD4fEGMTosI84fm8nwP3kIP6rfekGlVVGBt7P1jvNGXMS1kicxP+GVvGVm9sToy1k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWgm3ZqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWgm3ZqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1E7C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779443553;
	bh=bbgILmr3tvtTgoJ1IwJLsX9RlFhBf2YUX58lC+mijb4=;
	h=To:Subject:From:Date:From;
	b=SWgm3ZqYXXzfZsMYKdSXCnEOiB4dPKUKqquevdoXPYcRVlfLaYfDyiZWPC7CYRLMu
	 KBdf0mL1NU2S/s0p7OS1PfZ3CXpCkDB4VJN8F7nlzuC2IZk/K14SB/Ek9Fq05f22Cn
	 PlYID8oIed13L8PKStmGL64qZ50sRcTHoWIHUPhjNdtDNpIdRJ0JtkUIVF/spd2XGp
	 qOKBwA1AvvBJt8nKfd0kVMd7m3Tg2FCRMoE2wv8A512j53hXhJ3SDQYhuA3gyUMitu
	 0NGNn4bx9+nL0P0MdVLkDSBjInycFDwSXJPuNA5zGLsL984nACS0m3EiQwZhkiUTVJ
	 g2/QVOSKDZ8eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B7DCD5BAC
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177944355367.6100.3421086419725422557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d45baa002b2fe34826cda84cf2a4ac35b6a0fcda75fdfd26e6d7f664881734a
Date: Fri, 22 May 2026 09:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779443553
