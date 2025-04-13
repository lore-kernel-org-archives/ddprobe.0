Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496081F561C
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744570795; cv=none; b=DUtvgxUop3LPFkYD/fvQqVI4VuObduF8WNMaA4XTbK10Sau66EgVs1PQSbw56ebYQZGyAaPWl2xwmjlgWbc2ABLHMpQtyIHLQcWXcbpydw0VziHhAtz4aqVwfzV2aU/7n7f8roWvvK46o9rN0hFugkuzpFNxAulcODq2V/HZmKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744570795; c=relaxed/simple;
	bh=5PqFqgifcApZnIwL9luSic923KCgm46ih5USkc8C5RE=;
	h=To:Subject:From:Message-Id:Date; b=tbY4YPXSOAfMFq6Xkug+8tHWETe+jBx9mSNIsmUJ3/eDTWCJ12s1cV6apdojTHjA/wGhG+zIf0vQPKbSFWM8UiTe2rUR5dhDtBq0Q52udCnJ/k+vzv8XAjvmOMGcAWHQWfq2WloYylQH7pQhpRDX8TvGPnWaL4el7/fyBSEOU9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3wXuUM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3wXuUM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE3CC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744570793;
	bh=5PqFqgifcApZnIwL9luSic923KCgm46ih5USkc8C5RE=;
	h=To:Subject:From:Date:From;
	b=l3wXuUM8m++yGfkd/9/oRkLhj2YCVyirUDTh8U2ouWc2IVD5gzpufOLEX70phgxvh
	 TtzLHUn1rDWkxafAYoJpM5XqQRQPPIV3TWU166rxGsEjcgRpRCOlqUjsAKoqFBxz4F
	 FMgog1WpMw+jM/HirKHnakf5AWEQI7V777A3pxDkPbHIg8tnQ5V1YNyK6COSeZcTEo
	 L5IJXmIEIcJY7Oib4PDETwHHxyNrl8SniLfRkAW5yHWEVw3BJmlDkwLDBvTIyjGdl5
	 tHUNUXBpIkV7T+YGb/pX2xdl7AXa1DqCeqgqxIMpjyBGyEkbGlaMpnjRY6KsVIi1Y3
	 uK0pruPEHR3uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E89C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457079362.22947.15793546585502146542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6e40fdd7ea4ed5d3036fc03c2004fc700d9a6fd56ffc1884cc9ffcb250ed77
Date: Sun, 13 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744570793
