Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8EE3033D8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789613435; cv=none; b=Wy+MO8DcTuTyFgfQEuaAJSk5U5/W5g0mzldCXcsxbcFL/igVU4IBcZAmFosnLkNfH2Oog5S1dbNB9PAhbU9MnDeO3dq/bmLDict7CPebEtePtIvAlg0L4FSL9ZFO1U/Sp1F+BZXJHzsDZsMYSGB4Q847F/vYxdI1o5qcGnd2XVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789613435; c=relaxed/simple;
	bh=+zyf6peDen6eiC5BWAVeWUgJz9zjEo50RqeEPUy6JHw=;
	h=To:Subject:From:Message-Id:Date; b=KF5Z66T4rw7/LUZh1+9UEjeF9vvtYBqaBRISHLqCEFwJ3bAP6/+XfZSLZWkwErxIIC+mGUqKs4ioD1libHZ2joHQfjaFyMou03U/scHP6j3Hgx9+Ypnovw6RZ7LLm+VDIurTjht+ODcyz9b8/KAQYzEdgZzuW6tHhLHEU/aEqoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpuiu8Qd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpuiu8Qd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC80C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789613433;
	bh=+zyf6peDen6eiC5BWAVeWUgJz9zjEo50RqeEPUy6JHw=;
	h=To:Subject:From:Date:From;
	b=fpuiu8QdbUl/NVXkWg8fqhLJwp8q4Tv4wID4A9hHMmh+Xz3YwKWxXe9RWp+P1Kv9U
	 FBUROI5bMpw4A8gzCWdw21/Eq8uGAz5FMjnfMek+gTriIONb4odhO5ClwITLlJEUig
	 0HLSB3T5DXRm2q92slEifDLNJlj7xQtHaymfLdL5s0lfapVDtN6IcPV8iLIluxevRL
	 uQ+sUKOD+wj3mLiAr+KdyVCDWLcBov4k+sodOPDmmDkK7P2+W0L+nAFHoJfvKpUHQJ
	 TzfJ1LT900sG+JFqsDih7n+IfKuJ0WYYNSUoPn9zgPnTmUG2cYbNpHy3Tsu5nos1ZC
	 +dtc5cv5SOB4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B238FC982CC
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178961343371.12706.15923936818003683976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837aa97eb2c45673086aebb2f65ddaef679c4e15bff1c73930004cc3bdde55eb
Date: Thu, 17 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789613433
