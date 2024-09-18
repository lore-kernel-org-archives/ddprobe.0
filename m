Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F078F77
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726643754; cv=none; b=IYoOxcd+uCguKaHTDrr8I4K9OuL0TC2/lP7MhwFiTAiM+Wru0ScHMWOh14X00p5fSqiT7oqT87Hk7BIHJ4XR+3kd6eXEoNxOFKs+tMdBffg0TbyyuQqjeeacZc06xqOrsRWVMboe8n2nhZAzA9fT16ykuaeXj9J50Sbx4ZMHu/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726643754; c=relaxed/simple;
	bh=+4tXhJKiafEF1CYNbQwZFPgzExDMDhCPumdcmAaoDOc=;
	h=To:Subject:From:Message-Id:Date; b=JPUOz2JS9SGPSLOJaBaMvshWIS0+aYNQVHA4CZeiF/pRKxeGulGo90iixVXXctqsQKjqbIdds8bjsT5152DtpV3Nb+yIoZmzNAAU41baEOZn/T5GzYE1c3I0gFwehVJKjIssqzctFbUGizIEKhFjmkVKM/qA1fpaGP1MU78Zkso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jacS+bmo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jacS+bmo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABCEC4AF0C
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726643753;
	bh=+4tXhJKiafEF1CYNbQwZFPgzExDMDhCPumdcmAaoDOc=;
	h=To:Subject:From:Date:From;
	b=jacS+bmoImasOBkfY+GnYNBVq7gsGeuFCDWNds5KiYUjUVj72PVW+hEBXzS2TCsEB
	 /ovvc/qDKWSncBB7cXG0bT+z1AcNaBWOt1nVqOwm12KugvUhQGzmjkcqBxAd0SLSKe
	 N/wODIA89b7gXPhzga/N8eRWPc0iIkUDakCXAcz6WvGibB6qvHfJWo+0OC3V1jxebe
	 6lCoCMAJT30NrOmRk0pZG2FstqVjjNx5SbNduOuvLLnUFdhjUNnmcndI0fP12kt/y4
	 XlX3RmcTTJ2IWPqUCk+abcfQSym56Ytf4JKP1HG6LF+hWXROx2GrSicq0bOc4e2L18
	 1tLb5sUhSOkSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958CAFA3758
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172664375360.21798.17509207764365481971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7a9213077d0338dbef3ab45a76d5865a3bacc43d2380f053b2ca69f4e3d8bc
Date: Wed, 18 Sep 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726643753
