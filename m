Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175C654654
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762653594; cv=none; b=KbuDxF9Ul7rtKrwVt+EdWVl5z/5OtkbKG0cwacYKobqT8MS5X4VeR0SzoF7O/zU4czlETioWt4ucMXCay6QxsRUhiNOJKRyZTH7vU+AT/U8215h9c9PXxyx7NSanoGrGMr7EyqtSii3OYhr22d20qGtzg66NnJCL21x0LWIivJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762653594; c=relaxed/simple;
	bh=3qUnxYhy2s9cg3p4pSaJUEJDJj+3aAeb86+a8hKRHl8=;
	h=To:Subject:From:Message-Id:Date; b=BrgkPnEkUm64lTq4MAfq9cyCT1R1Ym50Swifzf8CH+dSIBUSioFNn4+RiV2uNLkGemhAlsBYYyh6ClE4cz6kIRp6eWO4RdNHaGdXzPzaIIxWSpgpdKCWmFaT1+g6bm4jHTgVuDJaezzeKFFrQ3utnmeSavk3b3ALur7jQtdWpXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKdqs3BC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKdqs3BC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99C09C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762653593;
	bh=3qUnxYhy2s9cg3p4pSaJUEJDJj+3aAeb86+a8hKRHl8=;
	h=To:Subject:From:Date:From;
	b=gKdqs3BC33+hu+5RzF1YZ6hrDYPI+THDu4ijLiXfWpbg8Dv5C/btp+gE6u08tSkh0
	 pmCCok/ziDyenZXLiXTcJpBCYXcH46sKl12JipB1x+M88iFqxmws/TXZjtJ64CdW9v
	 ijtso7CX6KPZtf2jc7FZM3hwaCwvm3iwP9GtwwX2+fWX285Ih8FiUB2NmYMh1ww1EL
	 eHqAqhOp12/gV1HLgZq34ArI/Frck3cSKVDRIWI+/97R2IM1Ts120eeIty/KVUKkwe
	 QE8WCfWhe0+rUxEW13ISlNJa2Pb8gI1NnlMFmeFOtyiPC0IG91q8M16YCeew9gY8Rl
	 6l5HzXVgD3PgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E169CCFA18
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176265359357.23567.2866465553787626906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5472436cb51b058fabacb9be98c67ba70acad76c9dcaa5af5f7dabcdbeba1a50
Date: Sun, 09 Nov 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762653593
