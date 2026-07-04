Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA9326CE39
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783197514; cv=none; b=Ca41onaOPdHatdE5ZpRyD7f+FHf6ViwlsEaAbyk1RYFyVJxQLlNVIRr8Zh/Sz6L33da3Qlt4M6GV6WVqc9lCiFMZSmtst5SO7jw9PN158R72t0DFNR4Gy7brrGLyh+nVVHxN+qndoVpgs78UUpHB8Xwvt42Z55yRgdVTQ1KR674=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783197514; c=relaxed/simple;
	bh=1veLpSYI4UcW+Vgo0cH7Mh89QB1gxnanmHtdXuu9SmI=;
	h=To:Subject:From:Message-Id:Date; b=EeC7xHV3d8gOlvESrJOZSHCNIgB7vEzzHAdT6KLo9mFBtbmVbOcqCCklEn2+lam4DWLblsWyGRD8uYhRkQPdxaFwqHCY1R0t6dvtDSZDFmBUJow5qJFRRmv5T1fNjipsz+zDf3lBQ3/8H0D1WUpXcCx/ouutpxi6TmcghIoMGiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kte3EqsW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kte3EqsW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD82C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783197513;
	bh=1veLpSYI4UcW+Vgo0cH7Mh89QB1gxnanmHtdXuu9SmI=;
	h=To:Subject:From:Date:From;
	b=kte3EqsWS577z5zUAZuJi3vbBEzrAy1xwnn7Clxr/i+IsFdeFd+e1jRIMCs7YUM18
	 83/drEZtZttv0XMAPJ+zyiIDejaEyFqwPgsDXBrrcCQUx/JvIvdliwql5inaBiA1BB
	 nBkreIXiPxxJSxDFX+P8IqASlWqYWS1zNZR0AErkVSseGmXT+UD/AstOZF6Q8sEp98
	 lO2pSzlnxqxVjU3ET16kzmKJ54PNdkjZI7yToGXUwhS6fR4UkyBYETeg0+HaJyOyRI
	 /0x/TEOqcRMNsXfFuO/UErS+d24VHMRu7FhozRyRzOtgEZTOtCBVOkAKV5riURtpMV
	 SU4Dj+EBAsHmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE85C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319751368.30921.13856703883655627190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c1f6950bddb10b9f441a0daec1860fa999c9e74121b9d0704dd31c54b5b638
Date: Sat, 04 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783197513
