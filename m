Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D254D37703A
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774886693; cv=none; b=Mn43dPgQzcWCA3rIVe0V8YNyp5FNpigfByHlkaFbNWdUc2K4siOeKcyGTeHoC9xLyisjbJU2gCk/Kz+oJYrnGD6n7+T7uNEUghzkzV57p36ajRHalhCfPSlhT28X+hyugInxFCNxJy/ICF25x98pHA3cSp/1hiUAdUPBfddUaG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774886693; c=relaxed/simple;
	bh=Q023dSDvD8HDrTUr0Z3V+y60THOWUakC3CU4W5WuIhs=;
	h=To:Subject:From:Message-Id:Date; b=n0n+MQhDePemQw8gjCGoI3EO6OEXNizKunEJXwJYYWKO6tnXFe29QnFY9aTVkyumelbZGi/zRUaMDDzqk18N/e3jTQpWC3yrkqYR1djduxkSQDYA65owqtVnUp5jwLDuiZ3dtxLQETDBj7JNt1QvrEuHvLxQGTs4fl2KxtUzTCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yrpcfv7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yrpcfv7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0361C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774886693;
	bh=Q023dSDvD8HDrTUr0Z3V+y60THOWUakC3CU4W5WuIhs=;
	h=To:Subject:From:Date:From;
	b=Yrpcfv7zjp+FDrMgjC5CJDiKlYj7TlZ6nPrLSx+jQosQcizSr6tKaJouMsgyoXCX9
	 qwR2coeASpg4T8AP3KbiCRPU7jPTwTR6VYUKqLYDzb6/Lu3hOsUAIAqls3n6qPojul
	 wwx8PL/g6CzB0nF6egoGvDQC+0oQL5TWI2HM4fNHi4GQHfVFIhaYEFIV3hQRbhPwBt
	 ncQqx/VbGYn5o74wakP/i1sqMue0DnivL1VyNVEnIaxfvj3CkBIsf4QF/ORtc+/ecv
	 0j4KT4TEE1OnQn6T//py2Ki+QWhqNiwS2TSmCOtD7fKalDWmmGWOBxoxnNCkWzbKrk
	 phemgRJogVIuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F861061B12
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488669358.19170.973030689209745782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ebbbea5aa6882da0511d9fdc8a031e9faec0fdcf37b12b966b11fafa96ad61a
Date: Mon, 30 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774886693
