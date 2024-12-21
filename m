Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B832E64A
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734789954; cv=none; b=NF5+naF1OFjEMpHRRL8juVR/E4+PNdx7V8Xc7T47Xnqc5e5cqpoGpdFOXMTyaecfi94ZIpWvuv3kANwpWzW3LRkwmocnqeqLmoYlpnqIRKQJuqE3aSxrfbi5fPkZOcZdC1nRAmRHsmGMbFtY9HGFVbc7CQuoJpkwyutCgMJqwac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734789954; c=relaxed/simple;
	bh=YCIJM+EO9/EEPtGXUdY4hKC+zv2IEGRKLFXbsEOIwpw=;
	h=To:Subject:From:Message-Id:Date; b=ENkMGLaYbVHMVIyFH5ABNjMJiy0TbcrwTX7suuKMu/dE+GySIAz/xJQBU8RFMVm114DwvElLVgpDj5IYvtAA/a/sy5bfLi99ng8mO9LNhTkWZAMBJUdK1gGXKfoadAalOrJc06AJmOBEIPAPd9cZMROFdn8sdfhGFX6UpcbQOCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JToyxrZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JToyxrZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D8CC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734789953;
	bh=YCIJM+EO9/EEPtGXUdY4hKC+zv2IEGRKLFXbsEOIwpw=;
	h=To:Subject:From:Date:From;
	b=JToyxrZH7Qbj4+Ut6TulKwx7SFBAyPJKskKE7KTQe6QFH3Yyw/othoSYi3sRUAKSQ
	 tVWNi6AVH3C76Fv7pNAlAy04ubieO9l1P+t+/l+h9cJPfU/9k282Ou0ENn3gVllhNj
	 GlyDmvuyNTIFZTgj+2BuDhTYqzAv/5g5XWBlX9HR+eZtLeCt9hYDkO74PAJp2vobwN
	 AT+8ZbvZKXEdwS2oU6WL4dVZ2DSoamCM7ccC94xAFFAouy1sNYA4ESRu4iNkthz+pp
	 Q7WKgCS2N+TPVGnmEeEFQYCP5pm0qup+xH15MBD2ETBnu5s2epUYn6P64omjLAG1jU
	 kfV4nlcbSOfFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B68E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173478995360.10520.3989315972432269551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687af81f0134f19b1c2802f2bf846fa88be4420d1b1dffc92eedec503c123c4f
Date: Sat, 21 Dec 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734789953
