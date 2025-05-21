Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C78270570
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747861194; cv=none; b=SxpkOzDMgRPup5/IxfD2VNytYJekQkQQz89i83Ai0hsNNzEy/he8QrWTy61B4sJf3Fov96HPi40laAYrwOuCxkIskaI7OzjYtThFeanqI1KMmD/75kU5RmuJ/eLUuFHYE5yUYGHMbl6se8mBLa8IKM53AgaChz9q49kQhDNgozw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747861194; c=relaxed/simple;
	bh=khUpNui5eqTcZ1doXPzmfR51tA6N9+Jwuh6Dj8bornM=;
	h=To:Subject:From:Message-Id:Date; b=TtBFkRiulN5J87OtmIjZH99zSsHHbrQ+rTi8WnfIsdMXBc4w12CjhS7WWX6MSlPclFLPT7YKuj0k9LIkbU66U8bNDoddVDu78X43Dl/VSEI/kHTMWH0yBvON8CwhKTXJOg5mr2tInTMgiaeWBvaBSUmz0f4IlE8uZGFifa0C75o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvHPmNp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvHPmNp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF6BC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747861193;
	bh=khUpNui5eqTcZ1doXPzmfR51tA6N9+Jwuh6Dj8bornM=;
	h=To:Subject:From:Date:From;
	b=cvHPmNp2SWud2gIQcLL6bw3XUYvsijYt7Pp5l0FIYzlk8zqIh+Vlar8swb/GHBS2O
	 U4eu5/l8Atu9S02tdNzOca119po1kxwJBZ0oEpSBtMykfO/plbv3lU5HbC/BSOCYnX
	 kbZeWqG/zjTxdYTmMwoZXKNofbPgagP/Hua1TADkqRYoY6198/jxpJig8ER0aT5ubq
	 4VloPb1XmlLa4TLlud6Y4avfoL7NLpuvohHJN/ZutQdWc4GTkdbFoSHiC7UPNXDfdi
	 36Of++0Ov8OfwI+H82gtfmfZniNYtKL3fml9brbiHTmO/XZTFXeSdpLOqz8ZfBV+Jn
	 mX1FwbT9ykBEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA0AC54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174786119357.17228.17673611831191585258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aa59049ed71b319bfdb0d867e7722c7770515af97cad10380ae99bae7bf64d5
Date: Wed, 21 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747861193
