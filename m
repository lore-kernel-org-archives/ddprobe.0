Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1481E3E9C2C
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778670034; cv=none; b=ClETnh0HHbVypEe7GM5bwv7RdGIDNmWAf188nxF02Kp6hB8hzKBaHrknQ7LMmHyDQRtiy+GPKASbkqdxRNsxFFGiOPP9RdCaPo3qHwGsKAzehiNy5l8jSBQ2ybHHELeXImWr4wTyfUF1FjvZ1UzjtDaVteJuBS2dEKY1+SF/4bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778670034; c=relaxed/simple;
	bh=8txLYeMBm8Qz29xqc98pkBrsMtsN18TsDXAun+eGX7w=;
	h=To:Subject:From:Message-Id:Date; b=bD68jPPLHdBgCTOaZs+F2KtiFLzBEQUF75Gxpq0TDqIWB+IOm7MYNM/7Fvu73vvwuOseOKTmNeKZ7Do/Dg8l2ZUV6hRVunKsRH9Y/dAR1/BtWZh11PUV9Ue47BZb8Ys50QWhwbj7rg6yQt4HwBROu+zRfgUFYMKDVzaWhysLsUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acCJB6g4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acCJB6g4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F81C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778670033;
	bh=8txLYeMBm8Qz29xqc98pkBrsMtsN18TsDXAun+eGX7w=;
	h=To:Subject:From:Date:From;
	b=acCJB6g4+Szk9sCznI6NfWczVIWHFpk0p4OTRxKvsszS0bYFnnnmaM1pFTcchlkwC
	 mOeg3b1FkaUQCj6pYQD/dcHZ7FHwONCnxak5pmujg9vIeoq9rcqP0Xd1o5okEgc5xR
	 NWe6Tmfp6wiXWjeGS9GRSQV1IV7vWcm9ljAyG6zWUYBldLb+ryj1SWtv2uWiB39Fxk
	 EBEMDb7iPe3A8t2B+UIspBqZClsSEQBcndD6HAMSH72rMQSlxS7CbaMi6+RYKRbQcy
	 Ez0RUQsjxS/OacMY+PdS6UsP1qgcDWZ4oz1hZ3yvsZuHwOjx4qItc4TFM6Zi45Gjla
	 N0bcbwNBV7PiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA279CD4F24
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867003368.2362.17344577852962924495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1221e10cb0cdc70d33f512b0abb3939ced614181048ee6e18886c7a08dd962c0
Date: Wed, 13 May 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778670033
