Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2940F34FF45
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787005834; cv=none; b=t+1aOWn4iYwt4Emt1TkZpC5p0RanYmRcGN/mCTtvzbHLCLx7A2MlsNSlnitRrpmF9aLcRpxVPfjVfxcdddcfj5f5wgj8dm2wrZ1ZaNYZWpFCXoXaS8DpttmYSti2x1ILiO0D/jTomPO6Z+M9UOiIMFRosCg8J77eQZZU0IUm3sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787005834; c=relaxed/simple;
	bh=jk6J03kc3aYKsEkb8wt83bYWTPTsYS2JulMUPDJCtKw=;
	h=To:Subject:From:Message-Id:Date; b=qdhNzkgaEyfDjdSdUbsuwIsDCcMuswrk5VVpy+JoQd6qqdWcye7SmGKZOSvSyrz1Zxc9stzFBKKaXlBt9KOKPeL6qkTPWsWb5dgdwWlQr8EDpCnUF6/EAq/G/VESOjSl19vXT/ApH1ouO32Zm9URTofXrHvqrdHr3aJmO3Tipq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lu6uQ/sO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lu6uQ/sO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65A3C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787005833;
	bh=jk6J03kc3aYKsEkb8wt83bYWTPTsYS2JulMUPDJCtKw=;
	h=To:Subject:From:Date:From;
	b=Lu6uQ/sOCuM3p4YvE7VlS8e92MpEavvH9Ulp6ctiuZWyHjLmn3hifR9D5b5YT8djO
	 GHNwpYGswf+6/cOJjiUttRQ1XpGOMRp0gayumK3fSaBT9h7jqaf3B/sori9X5/lksh
	 LuvQdDbau0H2UUCnuYQMzqBhLaHwLmLtmtYkltMjQecqogaRWMZe7jY5ZzcBnIsE59
	 htUL/NweE2iz7txkbDDdI4eCaHTRAM0L3zSDMGL3qv4a+uF8NrjxHG+SeKJxueXloV
	 epqpjLMwjBDjs2cWRPfrz9fBTxrvjS1OU3/mdHtJByV0KMp3aVFA8qSL1Ve0dDrGem
	 HkCEKmxddF2ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE48CC5DF74
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178700583370.20471.3786067032639417769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace503ef1dbfe93eab7b90259554d00a80a8fbfa1f08480bd9a1fe0e61d1557f
Date: Mon, 17 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787005833
