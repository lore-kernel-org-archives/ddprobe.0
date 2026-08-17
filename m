Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3469D3101A7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786953034; cv=none; b=QLAqq6eJ93vzSk6FT6cNpohav7dikF5WC83xXllnSItqAf4csQylwLInNwpqNUbk3B2SuSPNSPUtZ4l0ubBLjQ4P72DN8QsLUJayFzdjjPC22fPoFeAC/V9UInPk/0iQENCH8QRnKGxZDZUtl7U7bp8EqdWvlfwTaTU2ss2xkWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786953034; c=relaxed/simple;
	bh=N8s/eHnYpXccgogD1Dbbj81yJjCfbAJlu0FDXbxHs9Q=;
	h=To:Subject:From:Message-Id:Date; b=KC2oyx0lL8gYb+ReT+43++saie4Q0b0snbSHh0PGG3eR6XWq34jUC+2BNP21nBD7GFNEEruP2aGPalapn4wbUatjKb6EETruFhX4CSxAfwQ5Bq2HGNdp+TqaVdh8oGCamA/9kSbMQq7Aqn//wChM839nWyzosIa5YZKh1wrkyoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4WzS9yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4WzS9yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF727C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786953033;
	bh=N8s/eHnYpXccgogD1Dbbj81yJjCfbAJlu0FDXbxHs9Q=;
	h=To:Subject:From:Date:From;
	b=N4WzS9yoqGHit90j5mVH7nPQZnPgPVuQTag7oJwDl1Xgivb3kWRcZQmH8MphEU46G
	 RVtnZ5/UCbrnVolI7MAOO5lcW8thohwtCBMYv6ahkFwmcZbK1v8CL8LeCGnA0Wji+q
	 6wFChcDwsBGILuKIV3bInAvgjTxsoAAetcIIjekt/lStW8KgfgmMyKnTWPCq7JsiZB
	 aABZ9+vw8iD4Op3ntaQYGA+pbNS2uu2oIXN541i2SHPqW1kU3UB5tKrd9BZhkHFEDL
	 hVXgRSPFeCRnoSrxZ7GqgerwV/Ewdd8CCA6I3W9biOaos7WvgWskGwwGJiH2CKaKAG
	 di9xHRhVRy06g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5CCC5CFC1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695303369.25200.10942056220469991378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea46f3699d04360e738dbeeb6cba8ec8dcf6895db4065bdc1cfc21dff1f3d34f
Date: Mon, 17 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786953033
