Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBF920110B
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753529994; cv=none; b=ihBMzIVdZlPDuwyLSNtX67GWQPSuCr+U/rRZuDuJp/U10wQeQGAZX+O3pfO2tJSL+0zDBhfS+JMPZ94ks8WXMBdCzjgZ/LMOxJKzzNY5TkSyoMpDXWAAjZgZImuz/LCb5I5PJSQrPCe53O1s0yYgGhc/MmkwzLFbDuUnHNSrzrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753529994; c=relaxed/simple;
	bh=BdNfq/mWa7swNnqO47IxyZynqY+6SeRAHl5Fa1XzYsc=;
	h=To:Subject:From:Message-Id:Date; b=pWwP69ofke0chbBOhURA0gGnLEKudWd/f8nbQVFDOxrTYiklJ3LCSTV/LAPN94SFy4yOQ54e6DoMidACMfbTvVMh6d0ecLqnaDMcYTvWviZQzOcGrl8JYBEw9e0J+T4FlDjdnE4DeChS/CXc9bzdWSufcIhg15U/sX/ENG8hsEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHdSTHTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHdSTHTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3451C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753529993;
	bh=BdNfq/mWa7swNnqO47IxyZynqY+6SeRAHl5Fa1XzYsc=;
	h=To:Subject:From:Date:From;
	b=NHdSTHTPiX5XVzOcS+VvS9aghXRFWq5/+HnA1YpSobAJlENNL//Bt3P2qBY5NeWTh
	 W7D05N/nE7pZTgp4Nl2hBRng9Hed3t7Zv/D1xrOj9Q3qGMLXYhodNKOOtr8pSwQS/Y
	 OjdI2s3nTrpR1NEg8RGl6t8VQY/ydl/aVLZAIZYDc6l55DmvDJADwwdCkFGpQS4jkq
	 sq3rJMrVwg2o9Z40f1VUWcOywNtvfHgBrfcsiQvXZdXk0n2cHD1nXBjE+UnnrLqX7V
	 lcaj5ipgGrTBdxqetGhfHT7lW+7TP4lbZ0x/CV3GRiH25FDCt0ECha3dfCfxWCpwql
	 9H+aD5opdt+mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AD8C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352999358.1628.8373860339951892155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c987edcbd181f8174a2fb2c9d2cb21b20d46779ff803ab98eaec684de6766306
Date: Sat, 26 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753529993
