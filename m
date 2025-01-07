Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC3218D62A
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736287554; cv=none; b=M8a5mn72APu7gKpGkQEvR2zpgKGlLf2J1EFPSfTA1KcKRHyPVzMQR3Bif1O2c9lA47i13n3SfxTfl3yJH2hqy4McCTNHEM2Or9Jdk7qcnTa1iLrc9WFZwN7QRu9I0sVt6xqRgM0DucjkWKv0jWLHwjcy/cRZ3c0bcA17QHUCH+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736287554; c=relaxed/simple;
	bh=x7gySYR3aOks3CVDVggAVbPoI6OSzYsTjwoSbmJlkkI=;
	h=To:Subject:From:Message-Id:Date; b=rHshOoX1Zty4VPVOuRSKgCm5xI5lAxgzM51Aod92xXMinEuX1F9+qGnrMcYtI+kKzxSvK1TIkDa0hvAypKNG5eneTLvrUfqJLM24ZbKEfv43AAFKDThZIxBVCYIt/pEfbqx2nOTmrUkM6bBvFciNXh2kqCxajX7IdO0kbdp1Oyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abHzi11N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abHzi11N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42E6C4CEDE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736287553;
	bh=x7gySYR3aOks3CVDVggAVbPoI6OSzYsTjwoSbmJlkkI=;
	h=To:Subject:From:Date:From;
	b=abHzi11NhCN2Y0s8/EdCgXHElApwR+dADv2NhESqMEgXNg3bhH8wMgIfrwwk18tOy
	 L+jvhhPR0X4OZ97pL6kQRmlPLkf5K/14vxCtGD5klfVIY/mLCi9Qx5pz63nvCmk8de
	 85p/wfWs+oykuaq7HJkj2DhSIim/XHXKdQ5KjlfWqQ0Lqz34bSe7BKK4ZswYcLhGZF
	 SFm2CtdM9L6Xn02cPW62zhzB5VvHRSXakdctZu5Yt40erj5hTmSdhy3fWWLT7vkmU5
	 6toMe7sGWvJzBgV2QFSyNnalg/5uhuVPSVsK6kZ/rcad4Hb1u/aLhk9SEnuqy70rug
	 ZOkrtPntWLxxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39EDE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173628755362.22325.7519456521490900850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bcc8e6bb9f9eef72246e2c8d853fec24809ee8eabc7110161b08870ac694f50
Date: Tue, 07 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736287553
