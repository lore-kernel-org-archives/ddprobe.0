Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9383C9896
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782772714; cv=none; b=TvPcQ/30RK8OqdLLo/wfcFAesIVc3/UlBZsZZBd/HRYd2nGAoi8Rk/6IOvxnLGK6+9IREHDwrLr7TSPDyR1qXmCR6t8w1BMlgR2l8GuuV0ccfWQeA+rkNT7qQjB21Pb7pXHKAVE1dxUEZDfD2QvpQJYjh8ooOX/pWtEGLR9VZ2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782772714; c=relaxed/simple;
	bh=BKJONFFgvUupiAkdZKrC4FESQUB9LehWclo9c2aLpiE=;
	h=To:Subject:From:Message-Id:Date; b=HxKZHDSkbYVfzBc305SejXgd6kIIHi8DzsRD06vS3zyyqR44h/5nQvPI7glSGVM0rbhrappLMhNYtuRZ8qfz1lSEXMDQQ0/x1fX0C1AopTFsu6soxI+UZo55DxyHpYP8GNuE/VNsdeA0kO7qBHNQkYT/hNVPf7TMtHIo0Vn7BpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GU8q4sxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GU8q4sxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37C8C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782772713;
	bh=BKJONFFgvUupiAkdZKrC4FESQUB9LehWclo9c2aLpiE=;
	h=To:Subject:From:Date:From;
	b=GU8q4sxI+C2ZXjfD6bkK5xw/1zx+oPlWn35pWK+dYHkFH4BF7iu6qQzXrQBJWAuZo
	 duYmnzdwaEvvSC/8zisH87OoXHRTziIq65T1InFPIeHzk/t+59izdVF5j8dRGOASDd
	 IZVm/mKwe1gVL0gwsz763HymfXbL4ptwDuQWh50pEMzyGVYOW3CY6sP6NFDoBCx2Xb
	 zCjam2Y9i3B4QVJypPDRFH+zQLt33XwdpVj9WKfqEK5lnqRkzSC0zVBt/QCIbsXQOd
	 hy8FwbBufY3kwdNW4T9OvtMPTjaM4+I0NXCCWCSL8aeKj44WMbyMnR0GvHrhVNAuqk
	 uTpqor/NgnpkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA00FC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277271368.31855.17581685967251351548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4beeaf6f0ae121d90bbcbf7bdf7c5a0c2fd2c9c39dad337e5bd7a415ab40bc02
Date: Mon, 29 Jun 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782772713
