Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C813324B33
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781237794; cv=none; b=hcefkUU6GDA8OmWF292mW3UwXtlGG29q0n/3hwChdQZg2lvQNaQ7Gs772KWEEczSltRyocgUdvfv7f3IMND6tDlhGc8XtnWJqvpBPpLeMXNrg2k9R1aNUTOHO/OZjElUVi1rm91cKVDqiUg8qkCOsYUYjjbM9yWSGtz/NQAL1Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781237794; c=relaxed/simple;
	bh=5OMP+w92IVayP69jFcikMMWVvKr4zLHON8WLMdhOKzA=;
	h=To:Subject:From:Message-Id:Date; b=KcwMPLvZHdkYbTAzCxtt9OlINm1GIZrC6iL1/qfq9Ma96SJOPTqm4SkpWb6NFSFLELJN/ksb4nnGRRQUIPkBHZ6IZV7zKl1qC7HmscomN5xL2UKuW+/DQbBq8WV9dsHWWZuzt+xbfRIIiQ6VPONXpbuRhKYtJqCDN8+M3wZjBRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBVpJ9ew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBVpJ9ew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC6FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781237793;
	bh=5OMP+w92IVayP69jFcikMMWVvKr4zLHON8WLMdhOKzA=;
	h=To:Subject:From:Date:From;
	b=fBVpJ9ewiyqVoVklApk0ymOReu2HqLs5AwCWe9Fof5gvGwWb1qp12fbtaWs2vlC30
	 ee2+urO/ZMPbKKeEGxBRv4xbnf8Tj/hxeMA3akiaRDx2nhYxJSVsz9n4dsxWpx82r4
	 QY7+P0flre6o0+hG8vyz//cf5qOzCWme5bNP6wEUyACI5Mo6oqughsYpnPkXMkn2LD
	 mh1z/z/w3z2E61cACN0m7aKFloqArnJUAsczwOwsn9lB5EMjPZFA61EKE8hOHl7mSV
	 qPcENEPOJlSs5pK5TDhjeALMibrPgGkcoKp6vLZ1aihxzDeWomrnqNGqx7yh35uAZ9
	 a4r2cVwVfQQPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22B1CD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178123779378.13269.6784157036715272557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aafd9c625f8256c589bd6989db8efe1e393365829a74fa31a72ebba60d32353
Date: Fri, 12 Jun 2026 04:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781237793
