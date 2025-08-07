Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B341B0F11
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754562594; cv=none; b=CbSuJDCEoiHM8zR2k7/xkisIAErlYXub3Wgj9tZl8HXWMEUNI0vzpdlQopUQYamx+gov/kzZmnJy2n97SVYog8fi+/P+cwlG9KCIVZW8jdIqLQfrRfOTFEovIjkhIoBxOC0Al35SFzBbe6OZ9b8WQpkN1eZdtkKdLXXcdskEvxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754562594; c=relaxed/simple;
	bh=0QCrd/aTghzyfYWNB3wKLoj65CAdWZfBY7Eyh3ChRDw=;
	h=To:Subject:From:Message-Id:Date; b=ZMVYwOMSTWbUysSglFTa31oQRjHbKuM/XuSbCQ2PsiKkbLffsVixfwt6/1IvQFbwR5GltrXl+UeXebjjklVbkaKB4Ou+0zmF9eb6WGGK+DbfOmqSuInF8certN4Dt0p6kNj/hoz0nLrJ0/rkrYNwebzM/F6iALdF0vyLLpTfs7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpLSkCVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpLSkCVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B51C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754562593;
	bh=0QCrd/aTghzyfYWNB3wKLoj65CAdWZfBY7Eyh3ChRDw=;
	h=To:Subject:From:Date:From;
	b=IpLSkCVtsIm3ML4rlt9WY8WEOTHndMa3s23SHmyPQulOWCK8TNJT6C6jG55yspC/g
	 4vfFJBV5Pl9MNIAYlG+4DLRiHYqU7Rsno/s2url6D43Titu3HhPCKtD23YD40FtwTq
	 Dadk2jF6NSvS3w4wAlFYgeAa4VdWICQL8JBwJ9Mbyo3AF+r9pQ7zaFGKSOo60h4DOX
	 6dPATOuEZPu+MmcuhvuEN57R94Yv0Zd/WBZ9H71y430RQbe0OdFtbt7BCcds0nn4Kl
	 2PsEyQ1Gfs+9s1AekZBn6NBEiojD7NKl7cr9g2pkIHVBRXqOwLEovecpkUdU6LCsPC
	 hXgQSMiK1lctA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA97C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456259363.26151.8618320395973573846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba1d6499e8e56dc6dca88c237db4ebe0e058b355b7f92d35591fdde38a00268c
Date: Thu, 07 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754562593
