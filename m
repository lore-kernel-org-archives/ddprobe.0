Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484E02BB17
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781767594; cv=none; b=lxWqJ1waZtWOm6HppS4wRd6ByKGHWoqYP5QPDsOBSRTIMljl0pemsgSxP3X3QAv9C3ig2l+fkewYmP++UIXpl9cZvI4ynKikSv6sNu1o9qEH16B1Zb5YF/XvUMsjhM09JfGHUQYnVqkVusNV4kyftqz4ShFZfxiz2p+L2sXEqio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781767594; c=relaxed/simple;
	bh=yLAlK8R3jEITyJDRHVOTPSzGFXc73Netsd/Ot8cKcp8=;
	h=To:Subject:From:Message-Id:Date; b=KYqN9+jaFGjL8I5VejwDC622ZBWGKCGJJ0DHdt3pE0zGDCNjj13h4Pq+Gx767UQ1Pw4i9aYfkTc9GZ4SfInNhjydHLokr9DEUkfweGjDOpnLTAkMP2zHDhjs0uHot9iOg2mzJoRWDhLPzlQ/CgfajI6D++JKNEH9SYQZRPWtn5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COX+BRNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COX+BRNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12F8C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781767593;
	bh=yLAlK8R3jEITyJDRHVOTPSzGFXc73Netsd/Ot8cKcp8=;
	h=To:Subject:From:Date:From;
	b=COX+BRNaSidNhLsXE9PTttk7thxm/4FaYW1nd6kDD++AqKHSGF9e/VRjYFFn0S5KA
	 +GzR63apvfkokFjPxLlOlfgdQ4Pczb18aMEeJ8dYfmna7Vn4ClfXXuTAmWX8+NkV0Z
	 mSH3nvOk0ul0siRwdS4O8bsFwiCiV8VF2SYy1h0lwU04jpXoIYpODkRwDCg4K/TLIa
	 4nSqGEue3Egs8AoplJv44KZ9pOin3JVXDLH70yFtXg+f/uMgxim0FxxCTKBbFh6OSE
	 Waih2BA5xCR7sZW0zj8hvscfJAvga9OjBGtUaOmq2O8nfYr22gYqMpeu9F1NjoXIic
	 D9s7qprsCjxEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE315CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176759369.19411.3993242891673967695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693445547680f5035bdcab16cb6719326e26d187b78f30ae2bc7e32e67e9ad30
Date: Thu, 18 Jun 2026 07:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781767593
