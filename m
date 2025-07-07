Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEFC1E5B88
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751872794; cv=none; b=pF92EQduGIx9VBo73WfBT6ONJcnpdwAanLVHmTtXIUwVp2n1q21y4A+6DEYvJzu+hkOQUmSdjQiEdmPTVVB2rdgqmaV96k1K4Qe003y3xcqPH4ktmadh2K/z8qzCNbK4OsoQDsUGlGO1pNPsYu40JnQrsuU6bPcbHP6thdXi8Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751872794; c=relaxed/simple;
	bh=VwcRKb+gFFA25MuMPDLRWT0m9F3RwFAXTphWfWtHl8c=;
	h=To:Subject:From:Message-Id:Date; b=h3XfUCpXG3VgosHRe27QgnnNVEqoisluJVF9CJvQofflk+lO6q2d+H2L7gDK/8qX7pu4FILwAVq1FlzWNg44CouMhm4riaYnbJ84+ensXN72k6ViITMegQk5CwtdG9Do+09CGO6e/rYkScBgBAHYPZBvsk1IWFA5ZhgnX2ZUIcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvC28fLN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvC28fLN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F79C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751872793;
	bh=VwcRKb+gFFA25MuMPDLRWT0m9F3RwFAXTphWfWtHl8c=;
	h=To:Subject:From:Date:From;
	b=cvC28fLNC5SpeOXIEESfQYOCGul2bkQycu2nrxtJ/q/2KuYkFrEKXDVfqVfgZz9FP
	 SHV6FtCRMrJt9diuAFNlT7WflcsxaA2JcElNqU+kWKtrv5Jq3xMEasS6uKnjLPGSw3
	 7ooH58eZI6MnoUeNHWSK9gz6hgbrUk7d50CMUv1jwhjRf8YbCNPL//rHftxN+5eVc5
	 3YLearlM24YOD5zCiCsFTL28RQy33ZpeiiH5+D2YThRWsCInJBh3KRbYH2PbNv1A0U
	 xrcyp82svzK+7n+RQRUsKl88Qmxy+TKUvlfj+u2lWAKe3zfyVKRxzTfOon0Cpb3xXT
	 GMM8bH36cexTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC9C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187279358.26806.10075524831851606146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc98e9a9c9acebdb34baef01c6b50f09866aa39d57d23b4c120aba433bffa762
Date: Mon, 07 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751872793
