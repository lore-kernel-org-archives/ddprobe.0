Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A224139F
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709858297; cv=none; b=KexwRbmYaVQpk9cQ+MYaDmKHIB1hWLpJn24DDaAGDhw7+dE1xNNRJ9XW1UXvdyaQwqUIHNbUAiwPM7ed7ztWr6w4Mo8PshIo+6p1xj6Sk6xNVqtWQxf0vF3FsAM3VANiFPj/DG/AGjkSwXu2oMxoSKgXwAEl5WUNwH31m2A76HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709858297; c=relaxed/simple;
	bh=gfhqF6hcWnQVZZK7RgQBHRdRu0Y9Zv4pfBAoMTHruok=;
	h=To:Subject:From:Message-Id:Date; b=sq/eEa0quS24bA59vEJodmIvBKfF9c6oZClAkuxcrx61McHRSh5SNvQV2MmvNtmD7ePf2cUVN/B6B3+PMog47AH9ITiKUOMCnt/HGigUwvH/7P7c0NueOvw1w8Nb2dVBo4Y/WOvNF83d6rA1AeHD13BBea3YMZg7jHHw/RH1Y+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNI6w0NI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNI6w0NI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A58CC43390
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709858296;
	bh=gfhqF6hcWnQVZZK7RgQBHRdRu0Y9Zv4pfBAoMTHruok=;
	h=To:Subject:From:Date:From;
	b=kNI6w0NIsPx0K56vHfsAPW3dN8Ngr9UGs6vUpHoYojL6pxW+gsy9a9EXZikBJDjhp
	 S9cCeUlaauoDK93P6yjrNxlt1y5k8vzt38hkce9+gV4VVsTk4X8xgaOWkI1dtTrbqF
	 ZjNp1+W0V5bx3dYcrg/M8zgBlODN9iqrShZPF4ueXQBKkTs5AR1keUx33xJdgvZMs+
	 43n4WsICJqzNVS14dLY7rzPzZWC08b2HuArWDRem0Q9MTpCJtIWNPe49OYtQd0UckC
	 Pg+HsEs8vA6BWu3CWSSguKvUlubz4Y67Sx2+psjRg55YQRJpYu/Dl5skI+ONjrCHiZ
	 3aTxLL07TmZ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6569DC54798
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170985829638.758.16033124292647467152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d7aaa88760fee64cfafc1418bcad866c17b811e37627e1a985be5b40d89512
Date: Fri, 08 Mar 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709858296
