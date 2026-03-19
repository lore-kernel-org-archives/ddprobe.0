Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE0540DFC3
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773880494; cv=none; b=h5opti/Cn4gGG0KBHPNe4Ffbmo2taNghsC53xcrJjfbXNS17giNuglNQohKMksL4LsStzdHJsNWJE2GBPP8+phAAk9R/W1INO/buc6VliW4JOoNhP/qimGYlMFV5lko6mVAxaodnMWWgdw9sypFfrvkLJvHXlZVBSpMx82KtH58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773880494; c=relaxed/simple;
	bh=hjBBJEOwYSPILQ/uadCQVWZhZBOsFAUQb9n20Hf3468=;
	h=To:Subject:From:Message-Id:Date; b=U8xk9WXDkaD3+y1UWfBAmutj05yXvWX4YF9y/OFwnjGaSh15ayr0DrNbLaKhCcIs5JiMU943WLHLpDIXUtyfGDvfgy5rG+Fi3a5n+et/2PyWfouu2PPcitAjJmkq6R2iIcLEOwlHybZK0lVpWcb8ICNSgEOEljErmvTWOsAqDL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IE9x8ABM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IE9x8ABM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E92C19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773880493;
	bh=hjBBJEOwYSPILQ/uadCQVWZhZBOsFAUQb9n20Hf3468=;
	h=To:Subject:From:Date:From;
	b=IE9x8ABMkC0CHWlem5xZH4D42fBDDCVGqCGlsnPMfPE+HZXGQxpr6gUewLqU3/FNu
	 +BDhhWjg2OK01ipD/HMv1GTQVoMz3/g88WiV8rUS3ikUH3IHNEjVXpCJmk7xob74jA
	 Q3iaeJ1e7HoYzK4xq7AdITgNOx9EmdmT6C9Rwg2pKBm8JGb1jWsCPqRoN8RvoL3JEW
	 x6r+qqImCjhib7utfKnSfzxXc3PED0uIMyJUaTCpytneZA9nmdFzEUfMj3uippQu41
	 tHcm8BdNHJUd+ay1a0Wyn6yge9NvvUy6jxwkETSn0XIqIxXKCQPS38CFJ76CZjE2df
	 SUaBbZ11Gnziw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F98D1088E5E
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177388049357.16938.2696760544690386157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c849ca9b8e282244f6c68f4803bbe775eef6d124ad5bf6bba46a2a1b107f1c
Date: Thu, 19 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773880493
