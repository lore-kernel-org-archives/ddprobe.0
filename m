Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C9C3B3BEB
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780555474; cv=none; b=EmecbhqrPBo1z3KEQayjGhZI7TIP+zhsrKR1lbPjhfAAfVxWmz7zax1u3UG8TphslfTNR2qPf9HOeyeFOvuCFIHbfSw2nChmDuRqXhdMZpxzKdeEo6XoAArKSsiRWD9DEUhWmuyg7+0LrEOjQqPDnwULv5fpi9V/2aKMvTu/gtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780555474; c=relaxed/simple;
	bh=1mvzvcr3hX79ZAiyS88h06M6susnSjpGETbGfnz3XF4=;
	h=To:Subject:From:Message-Id:Date; b=fGja0B51pA8COmjcL7WywI1FjFoO4kiQ5D8fUFf9UM5c1IZqe5QjLgGhJjDXsy7dvVfjU87syAm3vPfAS9N1eexVOEpymA0HGAaL+6sMaKWbLtAA9Hc6iuwSdDyBfydSO4Od/V4HkL5UL1/RssfSS4Qh5dwTvYuRT2jmrAG5d00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZROYYJp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZROYYJp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0B2C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780555473;
	bh=1mvzvcr3hX79ZAiyS88h06M6susnSjpGETbGfnz3XF4=;
	h=To:Subject:From:Date:From;
	b=uZROYYJp33xmRe3eL9opowzn9y9ff9zehO512A1lj9r8BlUHLQqSA0Xsq/z/06Wtb
	 AbEOt4cbsOWtFK7rExtpfZ0FlYjGpEKQjsaPpA073di/NCg/0wN5mZ/q5QYrt0Tbec
	 suTBk04imdON+63ZzHiaqMvFfqan+TmDjwZP9D6ldRFV9+CVsRbHzSs8CdDBwjkLdO
	 YJQW3e02Oai8o3DAR0MiQiFVYTu9FS+TguxUsb8983SUvFrrLjHKG+ENNLtSaLLMhR
	 ST+nR43BBaIA2x4i471WbkI+3Fn2//hlX89wHL4DSdTMzeH7nCCTDy3b6Ha61bvaxt
	 Y9cXk+9y+rQ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C77CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055547371.28734.9404375284195502493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83dcf7efebcc896ccabfc36421970882bb42268214ab34a84fc6653e008ad30e
Date: Thu, 04 Jun 2026 06:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780555473
