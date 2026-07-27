Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B59369225
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785165634; cv=none; b=k/Ytf8Dg124RSMBQzho2Ki78IC6enzMnkdSWUEYPe4T3+Dy6X8GgqoCyCuC1JUj2a+48uwuTa1/gwwK7KTCduwpFE1DoBgvmis/5+Nsf7+09hCZmmL5zDGZje3l52Xn7da88bDcPrAlFirTurpozphI5heBgDzKPhlc2vrHm+ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785165634; c=relaxed/simple;
	bh=/8TztY9W1U2+I+HFGB2S+H28mh/WQRhP2SEITSRHXJE=;
	h=To:Subject:From:Message-Id:Date; b=qXJ8CP0XLNeRmwRGZwc1ikYgIUOomgL9NrKurM2wHfwZ77Gk9Y97517o92VBubVWl82NNamkOQSoX5JvZqcv2RKdcYJ06p+BWNfHJkUdgN7uqffLis+QiRleSFsd4yKAaxGvCdXCJibyvkoplGFIRyj+P9YYCNzyY1pQcrxLxTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQ4DFmIJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQ4DFmIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC694C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785165633;
	bh=/8TztY9W1U2+I+HFGB2S+H28mh/WQRhP2SEITSRHXJE=;
	h=To:Subject:From:Date:From;
	b=NQ4DFmIJ1C+6oMj4usGtN2bHH2yE/O5cBV+g3s0geXU0ls5EdIhaSMOZ7fhetazIq
	 xCR88M2vyG29Wz7Lpi+/qGoKi5S8oIlzEfpOz1BNefIIOZjTJOJvSJHKkivR7cgn6I
	 BtrEFEmNB39N07KVUBB+hzgIwTwP/KK3ivwtZJ55DMk9mQS0byGE7+lLdR78AgO6pD
	 quI/sda/IQFhRwc5kv1bWKIWL8qzf1+6b3wpWKDUEFDSU5aB9yPdfsEIrmWbr07kv5
	 xb7mSqRsSiyT1ikneYDbKdniQtm1AeyX84p7MfnlzbnYLJAzgZPdeDmjFYttAZBvTB
	 EVX0SKs4dEGpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9834C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516563368.12385.3661115071403609468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5af6e0f42f6ecf1e34e600e15eb1602eb7ff932799b386d35c0bca6983c689
Date: Mon, 27 Jul 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785165633
