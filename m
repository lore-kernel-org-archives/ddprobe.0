Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6B0142E93
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714995143; cv=none; b=aHfcmFotyv8lAPiYobM3wDCqPvsYLOPutOXqD6tQA+sG5u3k3oXlUooM8wGXmvo9AE7HJZyS8VLBHgGUx2gq6bz7S5tu8hC0Q44k7bVPZOgqccL5GwT0TFZxcdh+E3SOM1ApQE19YEbdUiuWtWRocXee9klAgIwFu24S1Uo4dwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714995143; c=relaxed/simple;
	bh=wt3+5gpFwZ1WA93ZUY+D/v1w9uraD+dkWTcMD+e2h0c=;
	h=To:Subject:From:Message-Id:Date; b=BOJP4JuaYpwtIOVUXP7ZtfaBguQEoJeZc+OtVididVKs4QifaVcHvhX+whV8PAPAIW0Ks2jFBndaBCLZ8YNfdGmtGn+8CtHLSGugEYa5/Sh810PQ8iYNsg3KX4Em16MeJ0h8J26MRRKjQXWoj8R+Pg4GsKTIrKUwt41EHZ29fvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jul0R8EY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jul0R8EY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52F0C4AF66
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714995142;
	bh=wt3+5gpFwZ1WA93ZUY+D/v1w9uraD+dkWTcMD+e2h0c=;
	h=To:Subject:From:Date:From;
	b=jul0R8EYjcefoMyrhWwxif+FnfzkxoDmH/S3/1WMNHX/JYwjyN1ABGG4wu5y6YKjN
	 m1d2orzETOYOtJPIgWceozRpmRnm1o0YVYcJ4IHZd+ZllvMJ4JDawlaE6B/EDkbabK
	 ZGkdpbqqzD5scC6rt1iPOieYzOeZWLdkf5j9wGRKm1LTDTt9dIJvuTLFrae7qvalUE
	 irFtPsyzE9q8I/tlB1VFhQC4Z09WK07aMpXkvv2KmV0aB+OTA0QRwaDHsLFwyODfog
	 pGiFweM4eVz/ktFoS2JyGPEkODi6v98AeQDTvrOeU4axg76YGZZeIlfKFzxS7oj4al
	 3v2pWAcD4iZrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BA5C10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171499514277.6476.11375209803957351595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512d3a99ca4dc51e2fff2c8592881c47e5d87d0694b4954015f5fd92ebe5749f
Date: Mon, 06 May 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714995142
