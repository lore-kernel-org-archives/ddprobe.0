Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69EE3C3429
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779363034; cv=none; b=Ejy0lzG5qxBs2owE1qT2eXMi4PP0EhKfyxtUxMugP1EiU0DrAfqeHWDize/+NXrYd3atZsMB9yai6/ehpecf7rtXesYIZ9tKnuMqncct0hn0g04v1MfF+a3cxmDmW1LEQ637eoBfI3bySg0ZCouWNpplPnNsuLHRw1pf0TMx0iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779363034; c=relaxed/simple;
	bh=dsIuz5ClCJkDcjFsVMU4g0tEGFiMhCe5yBDGDeA+wYY=;
	h=To:Subject:From:Message-Id:Date; b=G5Mts8E4oQ32cfAFlywoIjMaZbrYZmBQPel5WgNlRihdmEvOlumQFAc8THYNI9CeNbfGfDReriGlPbNeG1Hq1aHvbmE9R2q6SsawEMMdx1vb2REk5vp0NHLipKOis+PCTOPThDHYWOm0kBGBJqSs66ZPHA9fiyFNTPbjR1oAzzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1VRGPda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1VRGPda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6CDEC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779363033;
	bh=dsIuz5ClCJkDcjFsVMU4g0tEGFiMhCe5yBDGDeA+wYY=;
	h=To:Subject:From:Date:From;
	b=O1VRGPdaTI+z/OK8Qqd91hkpFssswockcryeN7u3JRBb5poa6FP8UuTOeSj/dps/+
	 fR/sWRRpExGvyb70TnRQ0EOo7bdN6Xl8+5b5PSlJAH4ha+/9UpzwKSnJZ+z1HBmJq+
	 T+fNFG5sjnGPx5DqZp3AALlnpYgxao6Q2XKvi0VovPF/40wemip8vVSeW/LhAQi35l
	 cItBRjM8pcqSxuKerlIiHCct2TfQgaCA0IVSehicVccj5iJhdAXB0vWsx8k1CKCJMR
	 t6pqUS22+AH8BYaiUTZl23LYpgyf/O5Kl8BsMXKQjkoWPrOLNWDxL9pZyNiyjQI+Qe
	 4/zc5XZV5i7IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA30CD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936303369.16481.15281561868416809495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e57a054b6a773972a459933900f1bb8030ed1c8834594c36890630dfa3b18c
Date: Thu, 21 May 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779363033
