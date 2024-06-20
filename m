Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AE33C092
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718864963; cv=none; b=RNJxtmsLg99IB16gKDlNvb4l+iNqnVg7KzOV7Cu5O/81P+0Ao8ZgdhHCfhlu9ZJxWi70xF0xjbmzPEKSVeFlPngq+hzT+9o9kISk3CevYxrqs3Sal9YuUkSSKfQB1ICTqb642O9VPaIDPtYq3WMEEXjs9aHdY1HpLHZzmzAK5OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718864963; c=relaxed/simple;
	bh=wiuwe2F7kS9egFB4i0njWsN2AKlk/ROu/lDGUGDQIyM=;
	h=To:Subject:From:Message-Id:Date; b=cji6bm9f53h75RACCjPoGbQG/+bztX8Znd7IB4QApIt6YNFVBlQ9/vsABTAU+qmzF+iWJsuzefiIDMkFTNf6NNjnfGjZ9CHrWNaIjbNowz1b42Z7f+3YPinwPDqe3Wcqzb1EXY4z4dwkyVi7ZK2sRPJLVJeOofxFJ1WzlabV8jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/t39bLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/t39bLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D91C4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718864962;
	bh=wiuwe2F7kS9egFB4i0njWsN2AKlk/ROu/lDGUGDQIyM=;
	h=To:Subject:From:Date:From;
	b=j/t39bLLtr5GmwjcPqBpkPcXRIIvpgf4fgfBdBIKuaNyWLVcYNgn+2je1iAQCMzDl
	 7ir1DFinKiQumTDDCygYCuqFmaBCOm+iU2ixn+6r5DpAqarqwbpDAlMDLIsoaA8zmg
	 EMwloAfX1vA09uMeO/cEyFD/tNWEeA105S4V5S/p0fpdqzhgDZvIA34bqeIPYLT0BD
	 6IMjOlqcGiuD5co0BhNiEY+Ojg3jYY2yfgtDhMYQL3dAxDv+AEMJ1QO4u9/ztZcBqZ
	 OT87AbHrnv2U4PrPFa2IHoyEIsne+hg76yfMKLq2x23RtAPevl+HD2BExOuLti4G8M
	 Eep1MvqmnyH6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE62C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886496276.20278.10041148817963862577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a54901d4554c399276af2ed6005d0b77c0ac12a27cc62ab543f65a5f8f9b26
Date: Thu, 20 Jun 2024 06:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718864962
