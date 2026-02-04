Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2475A30CDAE
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770228834; cv=none; b=TAeIZRoa/zUzOh+UaFwLyRlK0cD0gfbJudBxUfijKhhkib4Tw6r0CdvmP4626mGi9iT5hU2CRVaAAdAp8bzvoKWvejRpSRVkUJPIC1sW2Ly4MW3tyER1d18pNjJP0M7rZY+rzSiZESA60B3omjSXjQSdNl+y4ZafCqGjTK7AW5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770228834; c=relaxed/simple;
	bh=tBRMfRq4k7OtH9BWc1Qc0+xrWB8NX2sQI6gIBsLFj6k=;
	h=To:Subject:From:Message-Id:Date; b=RqhZicAqNITJL41cd4YPNKm7Bt6jdg5loczTMTzl3iVH75YG0HDoRJYJWtRsM5oI8Hsp13d+YD7l/M8Exi6IMomed0I/B/6jplBctZGOKZdANH/Aen9XyEEDycfWbZxXFPq5kbU4DlgRlu7hntwUWeA0kmqQuwC844V6lVLzIJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXoaCsk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXoaCsk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42E3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770228833;
	bh=tBRMfRq4k7OtH9BWc1Qc0+xrWB8NX2sQI6gIBsLFj6k=;
	h=To:Subject:From:Date:From;
	b=TXoaCsk5y4Xf7sPW/bBPzPIfTMzHMroOxasQDzrpsnU5nDktU4rQhtrLpFsnaisdu
	 OTaT2idMJRZ+US8SsuO1O8g611U1tGa1abqMsUtyJUpM00laPrvdzLpz0tLYfMfXd9
	 lEp9TIC6bfmHypo0pSjzj9U1yYIcJaoOnj6lnCUh9kOmOMkYcxuft5vZl36lwVRnU2
	 ucBZa3AClqOQJ1O/rioqQJdVEUN9o1Ye24Les44R4qy+GT98k6vO8Ykh0nQsI2n3dK
	 PkySLu2TEX5w41LBwu8qHU4Gesyw1FZYFfMgseeg1FpKOMLd+ts0Ob5ziBKMqavjTZ
	 UN9SFAjjD/NoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD91CE83F0E
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177022883369.18055.8086188466208877196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06db791aa8b0678ab7645729a22fd02c58c54a995a204491abc22d02faae372e
Date: Wed, 04 Feb 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770228833
