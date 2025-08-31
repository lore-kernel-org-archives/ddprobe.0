Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEA0224FA
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756603194; cv=none; b=nN9bfrDfuSY1DfS5ZmRgC1EJhp3nWCN5qVVSiPzV6VxvIPH5QDgIK1WyqGQPeIdGg3vb6/rPFVj28rxp74i0fhMkTKXicP+K8hZ5NGCuTV8mdaF0UTdKiUVnMKzKN0GBUaeA3u/25373B0QHBDrFnGT1a4WDVF3pe0SjPqUh6cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756603194; c=relaxed/simple;
	bh=X0mSDYGTXiPVFrSEe4Ytb5v6//CYljTNq96kd9IdMD8=;
	h=To:Subject:From:Message-Id:Date; b=bxemdSrqAtHjhm4C/SBgKCH/z/rNmMeCvrWBr3LJZj4HN58uxSClOPXTZBtM6ilyee2874XwUMtX2v75oC3yUMbaSSjl7fo+Pjzvz7kkHPoHVXsAyVip7xC8WUAMOmBiRzX5i9S1SMwih4YlepQMoAp/TA/yLvT6Us0FUhndtIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiNLsThE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiNLsThE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88D9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756603193;
	bh=X0mSDYGTXiPVFrSEe4Ytb5v6//CYljTNq96kd9IdMD8=;
	h=To:Subject:From:Date:From;
	b=eiNLsThERmICUd5c7CCQVHXbq4TLDjAlRSfOFa8yk2OtJ1l+N48Zrw0JShD77NRlm
	 hFW15BSmpnUn3M19EHZJlgm9zUb+biuujC3oEojI++dPlrSO52hTIrVr+5QeVt2kQ+
	 esKwpItNT4H2Mve17usw8ShD+FxFuaXCmXtj00Kk5B71f1CdA5g8TEChWWLZdiLtax
	 5pCdSjvkEUS+yeOO2Zf9zeoIalodXLl6VX39klP8Kc2g8EhJdqC6nG5icGLbB43aUv
	 t6LbIzEsgcqjr7+NKr4IJFdU4O2k8Y1ZbVyTv5NeCpjlvPFQ2lPqw+bSEOhL/kFmcJ
	 3I+ezH3F6mieQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD6CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660319357.3667.15265936833625515458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05efe7ce599c76bb37ab70a7e1c799d55369805fc776b7d758819a6beefd9407
Date: Sun, 31 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756603193
