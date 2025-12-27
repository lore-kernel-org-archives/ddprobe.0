Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB991AB6F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766860434; cv=none; b=nRLo2jc+5Khyien8x3EbRNLumG/90UdlMmow6kZJIv7e3ix7oh9v+zRHbm/vdp/Uf+LeeeGkJcXlAvvCpAntk9SzKsNPUaiy0Eut+EbkXD6Z9Pbg1f7t496l0wVJLGc6g/bB8BE74OgEYAj6iPdr00Dxwac0sQnFDiqYvx4z+eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766860434; c=relaxed/simple;
	bh=DDxqGADa4gAqYI2sDhpwfWYKT/RqMSlLJ5tQus1CiQg=;
	h=To:Subject:From:Message-Id:Date; b=bITrBadhAJU1PVRBpHWMEuPgVrf8lMPJZ4vifKzDMb5nxB/crtC+N71w+E5ADSuNLSnLlH8VVsosWoVsZjG8RhWxppvlcodax5ImwA35dB/aawSntEBGtqaXA0U/LDrU2KKswfQbG/gggY7Bt+FeIPImeR1yDoyw/69GK89Xma0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwRaMXfi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwRaMXfi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF53C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766860433;
	bh=DDxqGADa4gAqYI2sDhpwfWYKT/RqMSlLJ5tQus1CiQg=;
	h=To:Subject:From:Date:From;
	b=dwRaMXfi4DEmY/B/MJxzqvrhqssQ9mNn/woEGeX6O/151Aw8ZqJwO5I6pXzGHKF6z
	 DLWbTOs7bfAejEIs9xHzhnxaGcP50g+kqpl1onpMCvHO0h9icEjkXGcix0keUS9sLZ
	 ysyfEHVUx7VJYEBmyQjsASJhvNt8V4qew9r189gAHCWETFAwMNUbY0QYg2ztbFvY2z
	 vImx4s29Ug+Nsd1knNpT4LV7lgQ9YrHjHAvbYfTs7rSPF+4lb5BXIuO9lS8ft3szH+
	 t70/eVTKfDJi77KeL/eWphejMx/qfBUxgD3h5dc99f+WNo+VxgKzkqC/Mnjk48Fkjc
	 MjDYaXsVmFSAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D7BE9271A
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176686043362.13213.4394934130210875479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc81844fe3e45af0e5376505da88554c702d735b8b4294b6ced8e20d10744dd0
Date: Sat, 27 Dec 2025 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766860433
