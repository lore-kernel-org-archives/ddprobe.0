Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158E52DE6F5
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751489394; cv=none; b=sh4ZNEibRUSWKU2yFs7osPIev6H+pW7g93XoeTRZjoFMjWeKSKyYftQp5052gPvJ2IfGdXCakNws1QpuXA8R6F0kL0uqduK9w3xS15O5W2Rr4CLsQpBmzJZPKLdyylOudQFfDmxMh/b/CuAcOnMV6lLB09b9QsMDYU59dp+wbLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751489394; c=relaxed/simple;
	bh=QWozxQ7dI5z6Np7X8XoGg5PI46AmxJIgrGbvCNrHK1Q=;
	h=To:Subject:From:Message-Id:Date; b=Xf5Fyic3wBI8iKKB6sOKIVflQ3Yak6AoVPRl2k3woQYf51dUxv6q3wvdZQGoJvp5/Sil+fD9u/xEJTmeghvNZiN5+1FzMFOqEF5UGybrbvCpTBoI1YRQEBkAgY7gc8Kh2fe82LPMIlmPbCOZKa7PZ60rn6oDfsyd23RGNhLVwTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKNV7IEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKNV7IEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC4CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751489393;
	bh=QWozxQ7dI5z6Np7X8XoGg5PI46AmxJIgrGbvCNrHK1Q=;
	h=To:Subject:From:Date:From;
	b=VKNV7IEArnk0dTZSUeyBtel0mrHp0q49GcZA1acUF/4B38evDFL27HNfGDXzeGS6z
	 +FKgfE3txD7VL/bBgve88Jm38Rae5/e+NpH7aI7035NCl/OFDdF9C+jBnvft8LUnPP
	 MK1prrFA7t8qzT/b25um19GnXCx+cWXLLPX8bOD1xENJjO9mK920QqAUcrETRMQe8i
	 olBw+/V0aiT7tw0EYqVxyb/GVGAWquWMyswjb0lMj8AQzpSv5aq0/ZlX201sOfppbu
	 6ZPswkLGaFrY1PQsrxrkc/QoeUYmJ2wM2+uTcFMJB8bsqg3pwMCCHVWLMwyk6uBdl/
	 riBOTc5wKhIZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E70CC83F03
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148939357.3733.6089661444118180280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc0686cf3166a024045bff53653f1b789430f9ab96201803896df1bdc23b4c7
Date: Wed, 02 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751489393
