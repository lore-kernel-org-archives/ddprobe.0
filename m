Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC2C1B424A
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748073595; cv=none; b=dWtYmzuwyYU2naFxISzr6AbjcUOPfo3uQAteO9HWiDuCqrTk13ncJoecztOyafQRRcSkC/zSC/1I+Wbg/ZMnCRpEbf1DqqzoOKuH3vzgh1gr9fddirBKfOcclnKA42OkQuAir2ZAiVeeCbXsqvTV4o55dVqXTlrHna8DW2NJHHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748073595; c=relaxed/simple;
	bh=/AyEg0AQh5pn42AVoKd5QIah6QXnr8FVUMOzu2TWNJY=;
	h=To:Subject:From:Message-Id:Date; b=hn3d1h6DVHa+UW5GWYHTa9pzJsnawe5t/zKbEUDU4mblj597gcZKggAF+YywQn8fkgLJSuzsA/CnauLMZWcSBlk1mtN9N0lWv3eMLuZVMLgtrrikUkDAE+n6tMi2w/xJ6QLvHi01MJvYF9lwJ67MDLc+COq+Ag0bp3T303rNyGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUl8fPwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUl8fPwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACB0C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748073593;
	bh=/AyEg0AQh5pn42AVoKd5QIah6QXnr8FVUMOzu2TWNJY=;
	h=To:Subject:From:Date:From;
	b=IUl8fPwqt7tadJIgXUUsscI1XwnoAb4rmBRWccn2ZBWm2VwxIfoalQBhuxizlbxxf
	 I8L3BmSYLnJ1skDiATDKmeFP3eVOzvIHqjZceM3TTckC4WHmy4k+rhnabiULN99fwU
	 mkDrU6FWq2evvHBQjZfAlhjYV7oBslv9tsgqQHcd+KeHo7gMcXDUu0CgTYu5rP5WLD
	 aPmq5ufdnaYivuk2rSEERduHtWx/kteJioZEoFyThvKkmM4FYD6U0KLVydSsNk6cLF
	 yOJ95J1CbdplL89qulL4MwyhTpWu+i7WxNhtI9mkGKyBLvUAG0ik0TtLXjteDc58SI
	 2tXbWbYlDog+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9779FC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174807359358.22849.2706094036157882220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9484808ae0010bfbe87c3fe1e5c58f17e51d010bad98d9f9681724569761dde0
Date: Sat, 24 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748073593
