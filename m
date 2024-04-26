Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B3D13C8F0
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 08:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714119143; cv=none; b=QLT4Pr5PCJcGwrXBUHzAVOCJI5PZibNv2celdl5S6HNmof30omW8a+k/eMxa4MxClbA4nSl0nJDfFeMmnGwNucDWcF4S3xcKVhRpkA0fRTPSs6ejU91Q+D2tX2fMDNlkXtWwMMIgcceWUH7MXElURpbcgMUR2up6yQ1NSwGovx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714119143; c=relaxed/simple;
	bh=9kLdw44ZI1Xtp7Sdr9M7LuYkgScRMFQzpb91JjPLrz8=;
	h=To:Subject:From:Message-Id:Date; b=rA23czjkaX+xfMz86/DMSmHpZH0K+NMBQTg6B4WNnel8Fi3cbHzgKSCD2KT0Ber7qUyalXUP5hvKCUDRGf2/HwqJaZWB07uBLo2hUkfftSmHzN7Ssr5gb6Cg50u6BRPo1vmV8OzsgzFwRwF0Dqqvz28zrT03Q37daZ6PqaerYLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CC9i2GQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CC9i2GQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5723C113CE
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 08:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714119142;
	bh=9kLdw44ZI1Xtp7Sdr9M7LuYkgScRMFQzpb91JjPLrz8=;
	h=To:Subject:From:Date:From;
	b=CC9i2GQCuxvJkcij59yIqHir9z4HanniAUpgOuw7axIpsemXYWi9yL0b/cusd1a0v
	 Q3nUeZH+voMhlFzhhaGyFcyJSYpzdM/9Cfq8DyXcO0o6HtEitS0uVgJTt5MXY3IH79
	 yqlmwQGstN4BxO914KuGi5zYT4w15/u16PWmw3QFEdOdLbtbWwLAqnH49oVlo833me
	 OKJOs2nBlJlO+jBxeooE5CpgodH9f14OGiCz9guvl3duKbyMVUJNdcZIElHUz12Uuf
	 /ZYxiwam3LiW+nGoMbtNd73S7pp1DFjW3vH32Tlqrj64uG7tn2nEGT4NdOFA3yCb5R
	 14U2Tg5de6Pwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA2C4C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 08:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171411914281.13121.14460833757021687329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa4adea57ab98f131079c4f419b3fe43fc256bc8b502b55aed6bd7613e1ba97
Date: Fri, 26 Apr 2024 08:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714119142
