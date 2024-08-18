Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EEE1642B
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723973754; cv=none; b=R3nzUdf1XyxQ5Pko4qz0FQ6y5GdUb+OdsXM8+xDzHgCzJiZyEjxVi7gq15gVoggZVOjnDFDK1VJSOzh2aoGS8rvfQcv6ATPSzvWFJAuWD05YqkUZgT97ap5XMezuatIGo95hUv8xlQrlhndIEZVQrMYNfr1xJlrt+/54s24gYbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723973754; c=relaxed/simple;
	bh=2uF6Ft1PvLD8mXOoLSSRXTK1wJnxMpAKEUdsfrX3riM=;
	h=To:Subject:From:Message-Id:Date; b=UxWHPvWN0kP8lYw4lOP0e7jXQROnlnb1wD2gNE8WIgsBhN7ewNw0LM/l8b3B66e7qparBthyScOBH/EqYAed7vsfPkkREF8ILVyTelOouGggfgtX4MsdjoRET330/FX8B9QqsPlw/eR5PsSMFaUBSYcxlisKHd6+b8rEPrNhxuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZYTle7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZYTle7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB48C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723973753;
	bh=2uF6Ft1PvLD8mXOoLSSRXTK1wJnxMpAKEUdsfrX3riM=;
	h=To:Subject:From:Date:From;
	b=hZYTle7XQjsSOL4aHoO384ghik8zJcWb0QXOZY9d605bQnY9wB8awbNeF189aF6xm
	 Dlh7NlvudDBUcw2zqhEMzj/+nKI63y/B9S1rKYMZMPqGhV6FDdMbr0Xx0U2H/ds9ol
	 TdPMps187t2GBZqZdNO68kY5oFxEucNtZ7fK77/KBoiRJFrbpd1vll/o5PTNsIFWgo
	 0MFgAuNVoiUtssIvwDn2XcXPSS8NdDnKHgCnkSL9haU4ASO8n+794ZUcQDYOOb2Ksy
	 ZHL9vfHG0SvLKfzbgQyoqsj0yzfznMI2tWmIXfnt3OEpUSkyh5y5PMzzPaplga9mOy
	 FHT8OXaUTQgww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FC1C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172397375358.9913.13228576392311004943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655724fa856a6518fda76272df0cf705281fea10de432a269a86b4d375b2449d
Date: Sun, 18 Aug 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723973753
