Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680978825
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 22:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718491103; cv=none; b=p3wdS8g227VrePeubSI68aYFDpuyrmbonuaW1p4GJ20cBuOgIRqSjFvpQJl0H24lxvO+SmmA4gtzVFQscMv5tbMVxDdr7ZhhujnkEqk7NIJz+aGyvkoI3qTxRyerQ65PdO163Ps0uIBR9H2rDksUMI/Q2bFEjzyhU5PtjmvWeNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718491103; c=relaxed/simple;
	bh=BYMvn6cXo1AMdXfW8AXbItcY+AjFAMgzQvw16YJ9Xlw=;
	h=To:Subject:From:Message-Id:Date; b=bnYGe+t2AI17l0833ZSEAgDlgsoWfRaO9AKWPjhL6X6EMMYqD3PljZZeVV//zF5SUVhQ/15gfkdNwLunaC/cYzcR73r/leAE+5L2zBBRZ9fdy6/Im9VTQyjAMoc6ElZKMviUKalZTngBkpFvw2LM1N4cbgNA9PzAKxaFWZ8pqaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EyaXNdG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EyaXNdG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E327AC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 22:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718491102;
	bh=BYMvn6cXo1AMdXfW8AXbItcY+AjFAMgzQvw16YJ9Xlw=;
	h=To:Subject:From:Date:From;
	b=EyaXNdG7JyJRnSYHkrGAUEcUc4p3DWI7CtUQ1FP+zwIMgzHgzEsj17pFE8cd3XobZ
	 DF0iRpO+hTden203YGC5dC/STKsyOulMV7nRfvPWQU2LHPghX7dxMizoCNz/khFGaU
	 m11neaFaIkTSrU3t2y9WkZBxSmUxi+nqBI68H+O659GCiF1cw6dM5xV6Vn2cnAWK6+
	 MkVudsLnByvOtOw2EsafdSxKayC0TFwVsi1FHlhpfH29Ia/qImdIlfPm/NhtBfpjn1
	 4iJkLk0rhOoI6idhLHVXFno3vcfGE7fO+aqcRSqH/scs08CKKLn9B71iyIlKEZbBc5
	 wVwuD2gV2n7Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA961C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 22:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171849110279.17514.16722456581539270276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935b1793e5b1b7eaeee25d8a8c67b4ab14b745fb638eb76806ad7f6c523b97f8
Date: Sat, 15 Jun 2024 22:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718491102
