Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD9827A462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792131034; cv=none; b=O2Vf2xI1q5vV7ojZ5EGIQwZyhRt6mXLPevbPaX59IgSKEHeT6JtW4MmxIec5BT6KVQ2cr+Lz+3zTWE9QFz9puOkNO4zO9TmbtNWorTDu7VaoXGRArmVow4sG1cH1cbZqllvY1zyCljXAO3KQFp1ygbb5PHjbEJQbzWukoWKRByY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792131034; c=relaxed/simple;
	bh=Ra5EvU8owuYULWK19QcR5YCNl0hDNSNkMP2K5k6kmoU=;
	h=To:Subject:From:Message-Id:Date; b=cJqae4YirVyZJkJxvSnT0Z+TEMhxycet1Tu2oaAi0bpkBoYcEqAXWHmuHMaIlodMqA/ZiMb/GxaBQv1Dl6xgMby4TD9JNHWF+/Hx4JjFpB2p7ep+5Zn/LTASpg+LZ6CTi6TAXFAySajDI3rb8CqlChTuP+oa7n7sGxkmluWOAx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K19WG4vo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K19WG4vo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4365C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792131033;
	bh=Ra5EvU8owuYULWK19QcR5YCNl0hDNSNkMP2K5k6kmoU=;
	h=To:Subject:From:Date:From;
	b=K19WG4voyrpgvgyFJsyo98gvy9mWtMKl4xGHAKrA2LPWB/A1mQlcccvdhFZKeMaoC
	 75TWHiNO5fpJZFLKmB0n7A0gYnIpuy5BE6vvCf1zM0WkGYOfog+bVcQI3kYX8cBKfU
	 6JTxTVb+NliTM4gwsNQNKXdReVgGpBKepxa13GYs5RzyrCwiYmYVNGqugnlHt9A+oG
	 q4Sph4ljWnqOdRGnE/HaklUTpEA762KriuYe6r7Pq6mqMGFdDJ8IceS+no8+3FW1zX
	 /Xh/1MXy6FwCIt3QPsFuGqJBlSARiMjSSunhPx8RGzH13U03dX2lSnW9B7Ih0OaTKN
	 YoA5zvms92LAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C79CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179213103369.13029.15555481545829821166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc396d13f7ede4037d30a6896cc11c415a030050da153022a31a2393d3f6e4bf
Date: Fri, 16 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792131033
