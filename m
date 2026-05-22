Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7CE357CF7
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779425554; cv=none; b=Acsput+g98MnlaY5UMfz3p9ngRGmBP6saJZ2FmP5Tp0znu5JkT2bV1J2QyAyPL6UNZxzov87LyIyu78Hs//GS1f3nUEyoLU0KZ3VLFtZAdWgyau6II3HJ268/MfMK5CjiCl7wjpMcWV7VedzeRRx2NQLPdqJby9fG9U6s7ywbg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779425554; c=relaxed/simple;
	bh=ibEsAQyZyGtT+6zsyxw8BODDp1CfmfbHIEtt/GeTmmU=;
	h=To:Subject:From:Message-Id:Date; b=OeAoW/LO2ynuwbwERfQ0YFDHthMlfoGLFcij08mYz3Vr3Hq4j8eEpLv6R6ppW+5c2BTqAjUndRi2fCLEsBb6FGWrkV8bCcUIsuwsvEU+yzslkSwNyYOubf3JxgdHG+Bpxqa6YQpUNqWeNnsEbTlbmNRVySZe86HInObZ/tzwteI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRAXNaLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRAXNaLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76A6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779425553;
	bh=ibEsAQyZyGtT+6zsyxw8BODDp1CfmfbHIEtt/GeTmmU=;
	h=To:Subject:From:Date:From;
	b=rRAXNaLA580ijgKT1akATxJiKwldcfyPYYnTABiwNm2Fw+kjWHJrQZTJyAYhuVWCq
	 P4yIJzEsKG84sC2xDO7RHCB9n7xQ8EYBAtflEOJr4rSP7WlT42GItr1P2PQVsRh37O
	 wVB23ACkdrUNt7ZKuImxO7EtvwUfYPdoMSGyhbby6OcvCtbOUsr9t/F/edB8LtJhM6
	 b5KIKkz1KBz/RdXbQXz99kmWST3mprmLM97WsHrUszfZDjM8lLBFEA3Yw1hV57XeTr
	 uADLsFfFfsfJ8jL1ukb9wnRuVRG+6DCQXvjzkL6Bmacf7qO/mqRhU7IKxFDxMfTWy9
	 DC/QLZT6Byjcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF458CD4F5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942555369.9410.11648865655669527680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb8e65389b110a87630d2d5d159fee876103d120c6089e772edd5ebfa5a1484
Date: Fri, 22 May 2026 04:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779425553
