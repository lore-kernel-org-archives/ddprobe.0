Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2243322DB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760528993; cv=none; b=uEFa+YFSQJ+9uIMtaiid7u4e/L+YjueE1RPwGlyhwGYFfAFvNeBqTCpapi1uDcO3CpVpmqDcS2gSHB2TbkcQPHJr2lVij4chM4KX6xR+WmtppNOj8YZqLu8rG+byCz9pEDj3CR/iQl1Cz7mrFz08XQgSIXQvAu0w4aAqZAU2lEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760528993; c=relaxed/simple;
	bh=mdARK1EluCNa7i5RACeGD2b5DdRrft7m/wHVLBhwTGE=;
	h=To:Subject:From:Message-Id:Date; b=fh+1KLqtPrjXQS4+3B5G8dH2I+QGCmkLZQhbtdFttnVoYRNOr0ss9C4E2w95cx4KKwi1E6t2XXtseVfGQEQY47ouwnycWOmeIggrHMOvvmGtu0IbgSq3fHNYRJhFS1C6kZluAIJQxDBLG3EewSK+FGPUxkAIjFZv9OuAVngPk3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OesJqjSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OesJqjSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A339DC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760528993;
	bh=mdARK1EluCNa7i5RACeGD2b5DdRrft7m/wHVLBhwTGE=;
	h=To:Subject:From:Date:From;
	b=OesJqjSaIYThMPhmTHeZB0fT7BcsAWigj+61nKFTwq6ot/lQTnn5f+iqoVb6qzzH/
	 AeC86Cd8zAXVszAWkfxed5wirgvtBOCExRJkUlSFytiTYCEnqtcgmzLUR2OBDeTZjw
	 YCBGoAfxJshervEB9jwLJI3kzZmDy/El/6drUhZki9X3crJoilTtfI/sjoMlVYQzgs
	 KL1ssz5jexn4lLGjHvza1pyGIpOkseKBBWxvvjNasda6XlCB9ZBgRU0Cg19r8xTjWF
	 dwltJ3teRvOelMp3/xjtmJSQRR8SOZxPKIjmI8bsMtV1hyVSRRVEiFkhqHxdXs39T/
	 GMU1Ci76nyIbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FC6CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176052899358.11044.16806672727980241223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf0a3c67fcd4c6bf53c1503a27d4ca9b89b3480c4359116e29d81a48f1ecc01
Date: Wed, 15 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760528993
