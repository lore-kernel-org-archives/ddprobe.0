Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B0B284B3E
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748435394; cv=none; b=CnuMaVl0wBFuPbDLVK2dNaBakRgk+oMRLoXobay6SMXNHeB26+oNBBDORb9y4GBeFcAgncOucIOdTxRO836GFFrj8J/BnDhpbYbMPpHSXL3QWwtSmNfyGTkkMoPnuXvFPR3mM4FHosiEqstdwOb7yQZLshphZQTsRvNgdmZkIp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748435394; c=relaxed/simple;
	bh=Lf6w19tCuoDTp6JBBXi87FbnAWaq59iV9LLia3Dkz/g=;
	h=To:Subject:From:Message-Id:Date; b=iyZQMafYcvw8fwHgGy24s0pbHXqyrfIr+Nu/Otfqf6xKRX92xS+fslsLFAMHUef7vCUy0CKqBG0IMkH4MpcjtiWt8S/g7GOC2lGBoIiokwIZFhwlxUFmbtT48uDz0HfObCzWqMeT1as5J5JgEBQ9c48SqC3oX1e1L61koerSpCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDLGlfUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDLGlfUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D47C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748435393;
	bh=Lf6w19tCuoDTp6JBBXi87FbnAWaq59iV9LLia3Dkz/g=;
	h=To:Subject:From:Date:From;
	b=JDLGlfUbCxyFKLUNjJf37+IH2jSJoQi7xO0UdzZN7GyOy46s9UyG7FC1U05R/lWDY
	 bX+2bUElvIDjlkxVGNv1pa9OHKJv/vmpKSn5Qnhb7pFYUuyd68XjFI16Wlib5dtP+7
	 qJPjgqesUIoy7Ow1togFl4pqCxinzbfFqfQUhLr8LAlBUzARFfxiyZdxwTpopol63x
	 I9t6v+aO4sdAVKZiuz+6OiY4/xAskJc6+eulo7B1/urRijVRZKzkOLx3oE2CWgIUfG
	 C8a27ijbxsoRrP/RhlTK8E8m6xvieVhx+rwhfrdrCqAYPbxqcmGFkT7YmhVlYgx7bo
	 aoDZ4U2dWDU9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F481C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174843539357.15299.10139440076864556041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7d43748826498699cf9b9686b0aa7073ad1a334e1656c36432ea157f71cf2ad
Date: Wed, 28 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748435393
