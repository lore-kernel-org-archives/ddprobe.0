Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360F217736
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775453134; cv=none; b=nVJ8FiywVlPjOToyvgzCu9R99f8VdmX86yjWZPV76Y4C93qcp3Y0g9fokDnzrBIXLPt3R/eyQrjFHYoV5fG8vmfNHPHAUahZ8mcnfNsHkqq+KC+RKqN539EObaVpZcU/yAakvEDVM5IIOxDR0F1SaXRsZY7Xr272mrGxjpVnHng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775453134; c=relaxed/simple;
	bh=YJkOQziVbsg0kJ3hPTK7J6EfOZWvNTI26YxPlRWdF30=;
	h=To:Subject:From:Message-Id:Date; b=mlYjfYj3F+uuLPs7DAnTMklNL2nkptk3dd4kaLq78qn4OG0m9VMeHxlabhzJAmyQogEWzbVn+9z5NTmRoXFUh1c+3MJrR+GniCMCv5VuRxrfCbRSCTswMZk5iXlrDqmaxAqztjj6QeDjDX6nq9yQsJslrPv6bgsQCD9wcAKhldY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TipsJu5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TipsJu5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74CFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775453133;
	bh=YJkOQziVbsg0kJ3hPTK7J6EfOZWvNTI26YxPlRWdF30=;
	h=To:Subject:From:Date:From;
	b=TipsJu5j6UwGwtOhJknDvbnIdw20f5t+w4jKTy00cDgkaL8b+wKLi7bV4MJP+h4YM
	 slHry80fHUd6RR09d1SHsyWub/OXAu+MINpXoFvHU+Lr252q+3cKnxmO9S66Ur8X07
	 JNTLs0C/P81X/PNt+3qvPeLeN5jPlQvgVpmFnNhFRRaEukVgPnTk45KNjO9a36EC0A
	 UKIhpTbh3g4B/3om1QcSKSW9LDWRowpXOMNWMF7cEgQbLnfk0dMwzf6hqZM3yDDcEc
	 h7JlFgKWzR2vmz2Py7+BL8yTY2HnnjESaCyhcNIoA2LBDK5/q7zY2/dljrze/jur+8
	 rPEtFpwUGTpUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4930E9D83B
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545313372.19603.8368839581582408345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc766c3e42cd71f476b1586375828d5dc797340f3a690805fa281469fe9bc5de
Date: Mon, 06 Apr 2026 05:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775453133
