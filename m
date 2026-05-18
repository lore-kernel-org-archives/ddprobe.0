Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A33636DA14
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779138034; cv=none; b=HCgH8LLmEQOD3zfxFgJtTzYPLazxV7c1HXV0PEPcKpMpQxtKJUDA1fGkbOMa7pHnn+SbCYlUTrtxc7DAEgYiNWac1owSGN1jO3PVAwLaL8hs95r6d3bAAzSTJk0diePXdVCHYqi69QpZTNrrxr7PMMXZxrNd+qEwWJ4pwRIXDi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779138034; c=relaxed/simple;
	bh=LA9+68XObJsCi3gk/zrip5nCS+OELiyLA5mAaIry0HI=;
	h=To:Subject:From:Message-Id:Date; b=H8g4Y6Q+XWQ81Xey0hs6TnYc5gCHOPVTmdO8yvGlqdb+EYMRttMxPrItURFAbF57hWqV3wxoKD1el1PP33XR/+2fcEpcBdFz+ltUfHpMVx70tyBfb8cCMnugQynmhfqtusCxzmt0g38QHa8dVgg9YHosqagNwY0wvAPk41ogiKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pg/u+47W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pg/u+47W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D98C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779138033;
	bh=LA9+68XObJsCi3gk/zrip5nCS+OELiyLA5mAaIry0HI=;
	h=To:Subject:From:Date:From;
	b=Pg/u+47W5YbaVi5zX0xJrIvXA1hJRzpjVJzKEaBAhQCWYnOxAZabd9fpGYyCckOea
	 mAS/xcozkHiZUs+c2VTfRKRkMSE7yFzIH66XKXMvqBSCwSqZYbv/Tz2cMPWIWqM8YU
	 jXm6nMh1T+B8A4jBqhFQDagahzrqhuQmplGfjJIgqV5nT2qutXtIyo4GvRVy4jDXyK
	 lvYJ5Y+FDlH1vLq5ShPD/xogasVCfsyzaZEUvPDvIp1/BeRZ2mMvt0Kl9O1t0qWgOE
	 nNf65MEGKrHiiEDuXfmum+aVBIGkOZjd7XOkc0BoGdeQG2t867OvN6MIWLZO2dDlc3
	 7GPrYqcLj06xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB287CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913803369.21023.6650139393379463732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c49a5b475cc9789b8f646ee9a286d06e196dc671357d78b9cc9983d9f8bf7eb
Date: Mon, 18 May 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779138033
