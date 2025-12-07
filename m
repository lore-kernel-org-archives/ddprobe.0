Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7862E03F0
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765084974; cv=none; b=m870pHVg3cXDfqRGf0x8XlWm1ZnXd856doklp1+O5fdHrLh9eTMAzjtC9omkRlF11Mbn967G77aTI474hF/du176Kw6L6IIzG9TsJUTNkbDhAcMPFG12FZSgS+6T7CI71DmDO6BroLKE2GjMmyD77IFeI6MdoQzJGBqkmoaj2J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765084974; c=relaxed/simple;
	bh=TzenMDxxPCRVMgt6zU9CKdwU3t3dLCArYQezS0PvKtQ=;
	h=To:Subject:From:Message-Id:Date; b=NF+4PQLCpV606/i5Ul6bD9LmtMAsWNrTlpEwB28YJoXxXMjMwAh37gT8KxzHSTF0zQYrdQ4cC/Iq92K7DejdNY94Hmp8CrcDWM4km7OV93uPbwVrWCS1CZwNuLkluyie0dmwElL7mwfAcWI/pwVTiOjCFKmBqhyjZfF/7KAJJNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u57I162I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u57I162I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8798C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765084973;
	bh=TzenMDxxPCRVMgt6zU9CKdwU3t3dLCArYQezS0PvKtQ=;
	h=To:Subject:From:Date:From;
	b=u57I162IKBhSpddRvSTFTu6dcpRXfr1WorGu58ngpEPpA/JGIvKWf6daArFXj16g+
	 njbcXkVCxPZq+Y1STVo82Msgz/h6VecfUP4Xcu+c632DDV77hX7CkiQpw8Isw7H5bD
	 M3JZTwX9PqSN9mdWjkYHPwbvYrg839Hw09rU3nvXfSmXBXuxI2IIR6fhlThdpPteaH
	 vajLZAhmq4kzHbqy5x+eUyqZAuhM3pxc43AWbLU5H8enLc33JYdmLEZM3XgFTX1Acn
	 2tIrT/SxPp8j5PMSEwOLt6e4VLpqrMmRyP0XvA5SvGTmQpFo9OI1VCk0B7pxI14o5D
	 pim7JOT9QeDcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96373D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508497358.5281.3486485728656310304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24613e1c000eb7ff158448e90a13610dbd434f5123649f60f6eb9011e90043f8
Date: Sun, 07 Dec 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765084973
