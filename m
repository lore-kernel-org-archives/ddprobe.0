Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB662D23A6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784950234; cv=none; b=bqbpAkss7ddaqUeK3djjYAU8yMIbAQsS1QmM7E6tGcNaC0CIeI3rErhQx5r+rqtfK/K039mH7wPMlgc5voxeqH8KO/o4gCBpddJM/yCa/QVcgPpJKU9tNup5fKAybJROnv6uPYTKzgOSYQNpTQRtw+GZDvw2xzxXlOEsHViWOuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784950234; c=relaxed/simple;
	bh=JigjFqQluWlHm6PZy8AgXS2yGD7Wt14MpepKYhB5E+M=;
	h=To:Subject:From:Message-Id:Date; b=leeijN7JpNC+eUJuj++pvirmBvX+Xl4bMd4q5TOHi5EAffV555wTw0b04llrQMoUtzfNQnzaf6MHJOCzdPeQUsDAcdzhMb+4/Vo4/ekVWmUv/ge8el2ocodJmxyhu9FdCRpy2zG+AEsPdLWlF5OW7LuxNV+mW09AihiC0M0lgCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAH8snue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAH8snue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00D0C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784950233;
	bh=JigjFqQluWlHm6PZy8AgXS2yGD7Wt14MpepKYhB5E+M=;
	h=To:Subject:From:Date:From;
	b=fAH8snue7uLO4tQqn/Ey+xYhow45D8tfUdpIb1X3AYKorJ4qB6rNydrBN0iNLFfak
	 yBOiPn5uxtJmV841husRYoSVujS5l+DIbDENN7XC273E52y++g/1I/3wAFuJFhJy7s
	 oVbhzaFrSV6p64RdIdmt1ZLXLk/E/0kkNTBTPA7U0c2pLZeiOPQLLkdACbCKz/CSzo
	 +SaRQwxGjWokAYSfmnwVaqBKOOzh+MHxQ9gm2Zmc7r5o3dLDldcbBUucUL51zYDxxo
	 kV2WUhEzJkLaNbZmGno06EinMPtO49JALE+cJ4NSL2lkQpa2U3TMPcXomTnWiDKoAC
	 RomikrqyEVubg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB9EC531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495023368.7230.5787822094614306578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33af7544f76142e41b571b130b3dbe34894a99044da22ee9d313751d39125b0a
Date: Sat, 25 Jul 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784950233
