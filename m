Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DDB11CBA
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710581897; cv=none; b=SSWDWtD37wMDCDAD/QE+BsWfoADySm0ebnoxWJAoTrt7NjuG39Tw2uFWHjuLev3Mrk5ptsIi/baQLaoBd8iw8G94+/7wF4ICmBil356QXYNh816wPUPI8wfimlECbWYSg61BbHB+DnJrrmqZ2UmQuqLI20QH64cJ+wUG21Qb0Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710581897; c=relaxed/simple;
	bh=dx+bRCrXc1bBd9mrqvTAyRyyWlaMoEFg5IvmVXZ3qpQ=;
	h=To:Subject:From:Message-Id:Date; b=sIlWBzY3rmgI1Ji4QhM20deu/rsDwChS19ypfWAocFmEYIUTSwRRCn7tr9FKVt/nEEP3ZeKsR1KiXDG7c+J9bMAqmUh5tbQpmiAbIVXMRHXu5UkrGjwgMpR+NXAAsv0/erVZ2FDYPDTN/jIOuhgM8kwXRqMiOVllBGX+AVat3ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGy32ubI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGy32ubI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E0B4C433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710581896;
	bh=dx+bRCrXc1bBd9mrqvTAyRyyWlaMoEFg5IvmVXZ3qpQ=;
	h=To:Subject:From:Date:From;
	b=oGy32ubIbaTo7E8RqG12nSFSbABDb0sJuo8+C0TSGsPh5HnA1ktbrD36fdb40yFVP
	 42B0QIqb7PFUPn8aN1q+UJ2kFFV0pEDONLl8pq+WISNOPBkiaman8D6Isz32TU5/Ne
	 NEpLpV64DrkQHrCgERgNTnz/Ril6RX0pM+qwMorQos50e2bxyn2yLVAvZGMNCioyzE
	 dFEwrN9qjIwDWrVDJY/JBWVwGcXgF5LMqcoTpXO9GTqYikXx7yNtSM9omy2qH60GDD
	 RFX4tHmmI8ulc98Z6qECnuRl4/FnLqNxQ5u0CVGNrTx+B/HIaNIrFYn8rKUqY+d7yG
	 9TrSj3DO5tUOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 602B2C54E5D
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171058189638.24716.13226299456940350930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98fc55af17dcb7e9e200e594911e79df3178f68c84ac3263bf9358d87be3be0
Date: Sat, 16 Mar 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710581896
