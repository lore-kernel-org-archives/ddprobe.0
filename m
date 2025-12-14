Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E60F513
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765686174; cv=none; b=H73tR2L8TfmwISiwoAg/PeroZxulfDMuvKS12gIH96XPdwDTSnC7sYIO3MRvlV7nAHDl3gheVr6+kCCi8eAVYY8KYQRYUa3P53kUK9gMEXpdDZxrrGIldPSyi0e9cgskfPNCNzG3ewQ18XyrfnleZQs3ZBujZJygMO8UXJGNtK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765686174; c=relaxed/simple;
	bh=sIHOt2pLN+9whmdrzmT4Ia7XKdIFodfIerpGljfF4AI=;
	h=To:Subject:From:Message-Id:Date; b=PkRK/eDRvdZNdpjOY/KIcsp2bdmDdWeCxD1ln+uoIfrspypcL1c3jKA7F3T03aS/r71aVj+buFl5/HlQc01DHUNvesEmwYtx66+zIJQcw6ZX+DS14OHN+wZoxCpzVeHWdUd2a9rLH8S3NF9WAqbVeKKghcIDJIKNE5eeiFXzksA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8803lBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8803lBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E1AC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765686173;
	bh=sIHOt2pLN+9whmdrzmT4Ia7XKdIFodfIerpGljfF4AI=;
	h=To:Subject:From:Date:From;
	b=R8803lBHUu+vHSrxukcgMx43v6Ip3x91bm0navIpp4UeFh44HCZd4NDw4e2r/Vts6
	 aJWw4jHUcakVF7/L4fUwqMIwNBwnKcb5KDH8uM+DCKWAQsKeMAfENLeafy3vuPdxLM
	 j/6KfpvCpVxUROC27584XhG7wNfLcrNfW2zODaLCfAQA4BVKmEJL6YuZJRvIWvXNBB
	 u3s5V5Rkgymgh5T+R4V8U8KUmmY7bqV0iX2RkZa/QF2SO/MUST4hvU6yx8f3fnmmQz
	 08wodTT4A+O2c6mz3FMhg/jnveaIsUIRFe6pvPSGc22QL9P1rD7ZhAnl1N1HASvpto
	 EavAet6H4cSIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81E1D3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568617366.18899.9924875268120613066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb45692ae9859d0888f2733e8272db5ff61223e9112e3d82d870246592d0e1b
Date: Sun, 14 Dec 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765686173
