Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1B9500967
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768715634; cv=none; b=IIJ5HkRrZlD0oBAN4CSVOc12yX9WcPVpGSsVATLGmv3HgI6D5VMMXd2MO4U7+V3pyA88Bj4jiWyHHtM6/OuDGLyJYcVi6N6YPKO4xCT7vECdRdFVjq+FxCTlGC1I0BPQvP6Ubx5ie5KNtpZBmHmuMsrrvFBsJHS64EJLnFTcuso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768715634; c=relaxed/simple;
	bh=hFn8FME2A2rB/wHbnsUiSAaiMVNOqWWwb3k30qbvq9U=;
	h=To:Subject:From:Message-Id:Date; b=dJ1DhwrM2TuR3wGGG0TMkD7Sehvaz1wZ9uAwUmvAyn0djvn/wGUpkpDUrnFal0zz1uMtjQ0DIeHZdBGvE6M74wjw2xQizLC72yeLx5D1ylM2JGh2UwOIsMm1FWvpI9fePIXTfCMjbuD1PYDKRi58aMkFQNsBrBOxb0S3iyuPME4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcpbVBlo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcpbVBlo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87A0C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768715633;
	bh=hFn8FME2A2rB/wHbnsUiSAaiMVNOqWWwb3k30qbvq9U=;
	h=To:Subject:From:Date:From;
	b=DcpbVBlohJi7xc4adhvUceVm6chuHNGZB7oM0NpZfBvpid2HbQ8fFq2HjE0hIVk/4
	 KGw/ZDVHH0r2nG1zN+VD3VXzGq5U4Aaio9tkd9bNGJA0zzNw87HgCo671VB1ysG8NW
	 GvBIHEJaGakO5ZkzM2jQ39gLRZI3pfx/oMYFVDwpCd8fVrJDIFqHABCpdw71tLX9XN
	 DzljkcUW9/pmTSbX4v4vSwDa5U7/QdCZR8dUiZN2FsrF9qfYrefNZJGDRGvNJVOvee
	 sddIMKBCBirN/Z58fL2n1bWAjKxZNGkYVsku9DwBvt7nYYcLwr1gyhrMRBiIQqrGGQ
	 PcqMHXpENn5EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978BAD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871563358.29502.5358605805765407251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1104ee608a96f28bf30cfec554d4e51e46ce9a45bf9327e362d2323ee94c0f
Date: Sun, 18 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768715633
