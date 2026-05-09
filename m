Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6223BB9FD
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778346454; cv=none; b=mua2+aE1EfAox351vsb2IIhjpIA8fFBNSN/qm3t1EuOWfEMl62YP8NFJvRni+MohETKsZUTT1w9DcOMIqfjZbN3cZAjVGXdXSiykNMZEIXeF9bb9y9VpXA5wY4jwxG+1SYyY4lZsljaTyrgDBX6dElrDLVNy/SJStoYr94O/10A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778346454; c=relaxed/simple;
	bh=Z7HZ/+RMXgvYKFwQg71HOs87AZHnMHm5GBrun2tGjO4=;
	h=To:Subject:From:Message-Id:Date; b=M65q66ZzZb8JkUpF+4ZZ8ldcIhwoXzaB5fm6T8WFERPjePxBAa3oP/aoQLL0vHu8az4l1RJMp4hw087DK+c4bboftvSG4/j7KMtvRxzHQxOVmr/ZlBUrbuiVveu/R/0jShHpDX20RO+i5csZ2DguvMy8xVmbPDlXv2X3sHE7Jmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FukmzdIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FukmzdIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 40CBFC2BCC9
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778346454;
	bh=Z7HZ/+RMXgvYKFwQg71HOs87AZHnMHm5GBrun2tGjO4=;
	h=To:Subject:From:Date:From;
	b=FukmzdIV3qzct6K5zOh9JN1tVXA36fd+qI7uDa+7hwwjdX+n2uuj+5vr2MmsNEq/k
	 H695Zeux1kgkkZ7yOYbaGYlGWaPndsUNla7iHfm45pDshILh5z4F1wRizJ+gg2UZLJ
	 Mr07N0vsts6nBoMsA0OIv+pvV+5X9AsTnnC9UkE1aTD0QG9GBp1BCIs8fqPN0MX59y
	 +SbTL6rCCxuaGLZa+zGBWLBuYpF0okxlcmnuIG4PP+sx1lLpzJx1pJ/esNFRvZBUbU
	 qbm049UYce9ycJ/iuaztA3GvGxb4W0a6iZLx5EU11xKPFRemv+Un1/Okx9VTdchJNt
	 T4i2cZsWZA0fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3258CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177834645391.6023.3792276377210046681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11220cd5a26a1407d457239c3bf0e516ee8650829fb5eed2adcb32c4b4b69943
Date: Sat, 09 May 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778346453
