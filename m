Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA9A1C3F0C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767331434; cv=none; b=rwzfZUun52dB1RYNJGTDCNhiejZYm5RmtAcna7dyPJcEMj03EC7AiaxZtLiTwDG4eMmOGGYoKqHsW2vkDi08DLCcMWgVhqqQJTGWLwD0CZnApiVj/p9WGz9r4S9r6CvXUWmRvGdrSN5jX4o0BS9GR4QhYR5lCAblbPElGclnsVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767331434; c=relaxed/simple;
	bh=ARwTYmZKU1anSQ4Yp7bkff2YYvO4Az6T8oCJ7GTvcHo=;
	h=To:Subject:From:Message-Id:Date; b=MhbvjRdPjYO4qLBAGbCdnI+3vhuVYoU+g+F03hwHvkOcyiPVPoHE4/4gsCwugQRZuLzuAG9aALOdx7MZuyrQen5NTHQYHMenCiWFhfuuVx77JKzXgnj8wLoHmFFFa28OIDWxtk4yeJCBVui47o75scwI9IVZz16n0BH/aBR3wSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xixr+Sb7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xixr+Sb7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EB0C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767331433;
	bh=ARwTYmZKU1anSQ4Yp7bkff2YYvO4Az6T8oCJ7GTvcHo=;
	h=To:Subject:From:Date:From;
	b=Xixr+Sb7/UCDVeDjNiHqVwaj7k1eJm0cbXDcjI6OEM+wcQYfNNoUVlc/OWpr/VETi
	 0YD6nVSLHS0UndvvM4Qn1ZsJdfmHjZlBZ8ztyjXpKVxYL26AEuCM7ql5VQyDTgozI3
	 UdBdOOLmw+oiG/GtCFYv+lQwK7AaPejWBUBi2yqDsQVZwpn2H7xs5yziomZ6cRFEow
	 iflsTnRymc4KRyQyJTUiCChBYeubUezpwN4azZnwX0KuBPHnMr3sPjcOAtRE+TtiSM
	 hiY0TE5EA4DBgky9W+Oe1LsUckFl4SbOeVVafRO7fuHlBj8hb0215Cd0fs2RG69rtC
	 qKAOylvFw5sqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9296DEEB57A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733143358.16311.2855333072001107915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67b56559e2eeeb06c088436ae33c1fd58d933701c8bf64d2f78f637d3826b9e
Date: Fri, 02 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767331433
