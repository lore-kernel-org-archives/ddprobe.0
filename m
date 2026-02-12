Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C2B34F462
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770914694; cv=none; b=PpR/my7BQkElY1RSsRx5T5Kj5NoGGiIAWvAt9IDdeaLrPFQyP3R71siVuo+iFTXRD1n+4FrpUCN3xCsb8otDs+zlDY1qF92CFqugh7I2AEw5XCWjc8Sj+2i5sZ1TdFMXMuIWJMpW4nek4N6NZagF9AIn7QvoJhJl+HIedmhZdBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770914694; c=relaxed/simple;
	bh=csQ947mhsQrftexnNpsNMbCIez+IisZMV/cgJBtGaVc=;
	h=To:Subject:From:Message-Id:Date; b=nVmFRtRxxLRf1H7YpsISscfcIFoMdJ7bcrQedzEhc/7/+fXyZf81sfqydMyBgONvAeD4yPQ7wmrsmvo0b1q8gwbS0a1n87wrv1U3l3L0uYT1EVcyLlVcBAY0oIlvP8PW2dHHmmuHOfsUcyyShYf304eWJPQ6e7ziluQ1cPThbFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTV/oNkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTV/oNkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0269C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770914693;
	bh=csQ947mhsQrftexnNpsNMbCIez+IisZMV/cgJBtGaVc=;
	h=To:Subject:From:Date:From;
	b=LTV/oNkkheRcEdzwyC8z3AcTGSZIJrgterfbE7ir0SxHO/umPw2t6PYxQScywdY+T
	 lChIGYBPQlzfdlKwH3T9lcnBWt0/1hfTxV3QxAkRhA4wmcUIAqxdVlGpxgxNCdwnu2
	 zUVNs40e5vqyxEsfMnLu7m5ssCRVYaO0TJ40NTyRYf2lCe9o5b72ad5lPvsU1GspQR
	 3kEsHqq5KxQ9lohRV0s3jsrZ7AZBTc+ncu71CSaZWrkBwDmJgUwxdPts5I977ubx2y
	 b9Id/HqWyftOfKBu9THu+T/zi4K/zoUKJW2Gh26a0hgxKTVbisOHEq3m1qAo5j4mv9
	 70CEdA+JRYtmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0A9EE36A5
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177091469368.31380.2582380414005814037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb51f4e544872101dab2525ddcf1920709fd5a245e558ad94e0a4707935e5c8
Date: Thu, 12 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770914693
