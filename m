Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6FD35201B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784905834; cv=none; b=gH5vQAsu0cQ7OdBMWi0DA3Mxiestxql7Y0yqyAtvKoELnV0q1apwB4lxhiF/XM9t/+Azs8ZJxB23C83fe02qhJJ1ke/oHoNWeshn8koibCUXAYRPJEDJAjgtVPuyJVKit/PWZckMBENS9dbYyddCSaE1ASB0R2y7TkPlU4rof8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784905834; c=relaxed/simple;
	bh=xM7VJXfOAt6SYQEpZIyN4jvFyhwNTG3vAs+Qul+xA8E=;
	h=To:Subject:From:Message-Id:Date; b=H5BQx+h36IxMWxZ5K0b6U6afwyy4X0u6ss7ZhSUyg02jNAtE8nVp8ZQuY6iXySySoTvgH+w6X4I4S0Kpfrv1BrHJnns7+R4DbcsjUjA3KgOyZzgx455HCAtwo3LNxpF5M5OAR2JE/dbZrnYAR8gDFwsrpuY3DX98oKSjOPPSh3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7UWPapt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7UWPapt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C960BC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784905833;
	bh=xM7VJXfOAt6SYQEpZIyN4jvFyhwNTG3vAs+Qul+xA8E=;
	h=To:Subject:From:Date:From;
	b=t7UWPapt0Osfv9iffdNbU0ODDuJOPEY3kfii2EN21+wp1lgsHi7pXGfQeLS2ZMOuR
	 ehv0i07nD4aehbar/Gh/ehvCSnlvDgGaigF6K86HALG3SisBg/OxMU0WkupAcpdl/0
	 8Hm3fVbN8Mvkz79gFqdmmcx3NJJeidmmIikuVUdvpzVH9NM8DI9o9wla3m18BYHgDl
	 YN7AesVFvQaWbdorNyG8NdVyKclnAJNdOAPfVUapxG1YcxHySG2y74/Dsz4Y9dZtu0
	 /0LPVFs1EIKt704Ce8vtHtYK9xcthQBdG/VkEA/1+k1+asRxFPuNDbBDJ3Hv9Ifbts
	 5l4UsXdCbnfLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90CAC531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178490583368.10305.14734218954191003056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c85c6f1eca1fd1d124b263b7bae6b129353132c96ee305144703be7fe22c8961
Date: Fri, 24 Jul 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784905833
