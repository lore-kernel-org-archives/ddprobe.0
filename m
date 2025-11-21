Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A19CC2EA
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763683914; cv=none; b=h/16yyk2hUsWO3uRFiwU+iimWA2hAyxVBY2Y3lxwmIaUEhpX1OgbkL0qC8+sxDjqjoWnsEbRa2rLg0JIVSCkvhC1+LObdkfLE4pcLkSBo7u+XmigsB+EKrNLzWgEo+S8NYFe20DTJRrZqN7gfsql4sd/0KDh8hEP7T1IMUAGtX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763683914; c=relaxed/simple;
	bh=yPoGT9sW2TKmcbYTVcmLyYALaeqKc43j8PV/+8Ce8gA=;
	h=To:Subject:From:Message-Id:Date; b=HIp7UQqA30lICj+A4ewfTrWesVjJ8OAMRakyc91j3BDTEs++cyybHkusEOcGV5BAWDOpoGiqcIF7lmSh9SF6zX15zN7rHjK2G6YTZzHlQe2Wnmov51mnsLCxKtMUZ/tNFc3rt1ZJlxj+ihlMapX46EfDkITRlq2LsKrT47MxCWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qvs0vILF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qvs0vILF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6356C113D0
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763683913;
	bh=yPoGT9sW2TKmcbYTVcmLyYALaeqKc43j8PV/+8Ce8gA=;
	h=To:Subject:From:Date:From;
	b=Qvs0vILFmEm732Z6bQ+ob3gfaev0CfD/gPVgBvbWAozOkP140LYbk1AoF64e0VP+L
	 PYGQvqaWCvvATvO7YZjpEHdRS9RpS4286aepzsj/cZCnGbrmuXFXEwenCfEccuTkLd
	 RWZl6I1kXbprZrrucuTyx58YwAp1TYR3iy7gSuxJIRHf0OIS7BHx6KOdl6HRkV0Gy4
	 eQ2S1BSyXuRK+uS1fAbBKODfxZdcIKCN1QhR2GJMkTt41qcXW++3twepG+QDwnoM6T
	 NpYYdec7qyJo09H+W9C1VILC84L5uhLQp6/NjQPvBnBNPmjhs1xw2L9l+SX93DWcjG
	 NVmw4op4z2vRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F37CFA45F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368391359.421.652079177981870648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954aeb383499d0850fe80a39928a5e0552099b4f2684c788b93f3fe4a9afd809
Date: Fri, 21 Nov 2025 00:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763683913
