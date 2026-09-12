Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B1E3C9ED6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789209034; cv=none; b=TtpXLdsy3AMlHUIJ4IPBX49EF2iUV+atuPiIefBtHGhuojnGCZQRpKs3s7Fv+hr7ADXq324yrFxQqq0XPUGeX/NAxlGJyBC96vyXiLmD4k8kFH1vNrQ4YT6pXVerKDNtL7l3E5frBrBIA/3Dj3zsrhwnSTPH59ULeYkXF/FGan4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789209034; c=relaxed/simple;
	bh=C/PIXXG28h36T2Ki7iNnSImmIBBZxVY3gEQgEfM4bFg=;
	h=To:Subject:From:Message-Id:Date; b=LdyUWNCxmRNVLcdiUd5cs/dol3zPzFJ3wF3N8Nov0uu7zcMZdMOVcUehjUDo+r6nRTCGaKsMW2WPMNXTWkzrN99VcdLJxL5P4Oiwl+UfWslhViPeig2tkxBVzorQcwVF6VlVpQpNNf2B33GAyqbAYPcgRvtvY3zz18n+Nyj+QVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pi13xw3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pi13xw3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC14C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789209033;
	bh=C/PIXXG28h36T2Ki7iNnSImmIBBZxVY3gEQgEfM4bFg=;
	h=To:Subject:From:Date:From;
	b=pi13xw3oF0GyYusT+cNXRuuOmuUOpEGf/AQfMk9P7sLrqstH/cOyKBGdaJ8bLpKqB
	 MFuwyJ0G1jBlgs06UbGPf/GifpUWpfkoMm6M64+HoTxxpIwWTG19yYNiTQeFgeU6Hz
	 h5A9DA82z688p3V3iA7mMak4H5OHikbrm6nGVfPptu1t4JJtP7r9DNc5a8HBsLA1vg
	 J4okUMlgZtT56QFTRziTvx7Nfa5wzp699+JJ+WKnaLliSSiOHumfBu9b4ygo16Guoq
	 YvKHxh5T6nlFz6xvAtHdAOoLpzHZD1gHhZVLtgM3xzBqUObPUh2aOTFLui/wyus8BV
	 Jj/lUNuzRPgJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC664C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920903368.20190.10362017872449241429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51fefb6dc346cddd11dfa94a4117d92fa18579827b3a3c98e9269615ba278a0a
Date: Sat, 12 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789209033
