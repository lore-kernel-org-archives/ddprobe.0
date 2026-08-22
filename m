Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5060D36194D
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787439034; cv=none; b=hEwYW2JuOADGEd7PcAGbmRS24U7lSrvoMWj8MFliv1PfL17Jvz8g34mzcc31vVHIe44+w+EIdobJppUyUxxKzGM+QzMMhhp3IYXS/2BnQoVou9hgRFJu0moHoGnHRCsIgNQaSXzWotffmjxWpSSle3uJ1iJvweIykYcND9+6lkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787439034; c=relaxed/simple;
	bh=MsE0DAdPmgTCrBidZJsSK60KfMDJegV0jkcO/KlGOCI=;
	h=To:Subject:From:Message-Id:Date; b=ViJn/jC9ufW/WE7GbLhPO78xKCkNX+AxQm7HUROFQm7UMfnMCDNlvE2GBI4iUXwFpPYhFR9jVHBaXGCK0aIR7aOuDrJvtEJriktBJChcxfRxnLtZZChybIttugGNeoo8TzYXxuCD5j9oPmTrRKR5PpMcYOAovmu82CbEFrZAChM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPx5sPuI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPx5sPuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0585C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787439033;
	bh=MsE0DAdPmgTCrBidZJsSK60KfMDJegV0jkcO/KlGOCI=;
	h=To:Subject:From:Date:From;
	b=YPx5sPuI3lp7Dk38b9thZjNRosKYzn/D1MivPA80yuSmivLDnucoX9OgOrQw/21tr
	 RdVhDDhihEDipTRvVij8qPORmSLHcTiPef9Y+v6xbKQhvcSPOKonnDrhtIdPzxa02s
	 eXv5p2FpSIFF7w8+ctkFJ17QZj8QZw90G1S8GqMuBrIbGCUSDzjqzTgDcm54AjMQtD
	 k7H5/4zMvCptOuUBDNdFfyrL/hFtcdS9l21lIzgOehd6RynVf91AT7kUfMYmAPeKwB
	 SO4FWuYjRVZe1C+1dodcckn1lBlaXjgf2HF6XU+TebgipywYkAA6csbvab76z1ZKP+
	 ODnayJuIaC7lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8E9C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743903369.2673.13483050991155283815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb2b99b4082dd2428d83a2b4b761b77a6ac8246aeae53a0db1735e12a572b4b
Date: Sat, 22 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787439033
