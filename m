Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7AD2475CB
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771230294; cv=none; b=Pnfxfus32jHxGhVL5scLn43RLl3OfpOa91ficomxOsg4N4+VM7B7mBgQ4xlN2J1KMXXlpq5M6dRuZL5wXZeH96cg07epkpOp+YNXJGDM3GpWxLFGOMH4jCp7QDYyjqKb5zQpxUmoylaXBDdKS6T2q8/WfvA/7LyWok87fX4CZyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771230294; c=relaxed/simple;
	bh=D+cFECsNzu6GgBcwXUx/lfPNrTWjAHutO7tHSM9+JJY=;
	h=To:Subject:From:Message-Id:Date; b=Dt15OqS6Cgs9XGkLpMcjd2ASuhdK6Ipi4Ny2F4Iy2Evt5JczSHqwhmMw0ZU+ZYT8kVyhKcee/fbBcUWJnYjw4AYCvS7PmsORQOl9jwleJosB9tEOTJSxr2VPlONRhcVhMF+efLUH8TbVrX9MAyb66JdafQh9eprW1yWQ865TT14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sILlj9G3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sILlj9G3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A049AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771230293;
	bh=D+cFECsNzu6GgBcwXUx/lfPNrTWjAHutO7tHSM9+JJY=;
	h=To:Subject:From:Date:From;
	b=sILlj9G3pcupe5G0CpVd6i+tkqNur36LUxMq96Afx8doRXerEg6T5Ns/g7d7859x8
	 VtV3pkSHwdSWtZeyTjmn+v1j0brY+dUMuylbBFBdEV18mmweJKQvjmSu57oSzWB40v
	 TbcB/RVsXH9kIRPVRh9enskIsZpgSp0GGINgfX4XsJGYTmxU5h0Zoh72pRpR4i+cis
	 p+Bkr8ZNVCjO97QImhlImQ0hIwZSa2zvhaNydFLiNEfnN6pCKEtRDJFjIudV1XSIPk
	 i1iFQ5OLH9euiLSEThs2b9bo0f+MMLVUnDq6okF7S1+zz7clXHm5rIBFmMEis5aEso
	 NhXd0KpOpGMhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C35E63F38
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123029358.19531.11167301367861566350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf5af6af016a1f0efccfe9179c6c2874c249416f6a7dd629b8f039beffd68b4
Date: Mon, 16 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771230293
