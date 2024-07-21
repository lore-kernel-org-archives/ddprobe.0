Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390A73211
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721582154; cv=none; b=il7cbtdPwHIGTqFg8bV1/U2SqktPeW3ZPfZJ9E/Ew8eLilwzCiW3cKtNjeGYUOX8vb9lOW53eXrlbaEGdILHBcjcH/4l/QpaKE1xb0aB0RK4MIAwMD3mnZdd/4sKJpdCR/wNzVkntTfrGgg0CNjmIqwnK2q6I1Lw0+uZJRJqKMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721582154; c=relaxed/simple;
	bh=rcgkbTgWfzimaI4jCiQAogFFJGQrCR+Xeqcee51QQ2M=;
	h=To:Subject:From:Message-Id:Date; b=JIFecdd2mfkSijR8A0X/r/zPxLm05qhPvTmy5ZsNEHaENea10VVQZKVUlYA6I8Nq7hSyooSuXozXlkIbQdNE7IqBCnn2XPtClCGz0B7mrm2MXqE92opjm5FinIS+j+j7okq0rEZYbnIotFhCRKHvttnZe4qDMEf/ioiuM0odhIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bk2xAclm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bk2xAclm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA905C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721582153;
	bh=rcgkbTgWfzimaI4jCiQAogFFJGQrCR+Xeqcee51QQ2M=;
	h=To:Subject:From:Date:From;
	b=bk2xAclmFkEvi+10XdCM5rY3iYUmQs3IKwuYBYIziNJ3NBjVRh8VSVK/u/ecfRHvZ
	 y7kInk9AmxOxSjEXBPt1fk8mQd9Cb5MIudICMuDbZHrES12lwiEIltVuSXMXKVER/O
	 o3d2+czPBqqJH0jlaMR5wST6TSXB7vxIsnNwcll3hxJsGtGi99ePd6P3kZimkK68uX
	 JqisGGN4by2LL2ElWO4f6Hl8obG6WJEFzQRjl7DznEnbgV2fo088Z2LKFCaIe0Iqri
	 XZk5F3AgjcWipLHWXd9ZuamSkWpZOmbPZTr1Y6ObXQzkoymUyq5vsO2+2xs+Atnfit
	 C8doOKtVXLB2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA2EC3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172158215360.16909.1741486514732021691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c0adfbe072f445da678945076fe097801ba61bf7024ca89d0ab1d68955ee2a
Date: Sun, 21 Jul 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721582153
