Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 820E11A6834
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784680114; cv=none; b=gFdVrh2m5QUdfPUmFZ09bjv2Rf/PeGhW3caE6KARJRJcIZzM2CX/YjxvRPSCqwgBRiXSUydE2jkLbvP4SkWFu9k5G0FeuXxYwA5CpG6Ibe5MoyI9JY6hVt3R5UDFaqq3CNqkd5pZOQo6zQqfvPWeFgEdBhhNSbi0G+j2Q9lNUA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784680114; c=relaxed/simple;
	bh=kIncZ3k1pqa0/pLejzScqwcJD66jMhKAo/OgHOt03vo=;
	h=To:Subject:From:Message-Id:Date; b=VP5zppG/dxl/pwWythsMaUj4yssenUcgC5WdbKQfuWboTapHle15zKpQRQ1s6c4bqi4010FeseSMG1+pc7jL/x6B1hir6KE9VzcCInlRm/bxoymmtlbexNP7fzzx+S1DGllFAiGIR5+l4ShRbAQM8kuD6azKiPejDaZqM7CXwjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hApFOOIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hApFOOIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFCD3C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784680113;
	bh=kIncZ3k1pqa0/pLejzScqwcJD66jMhKAo/OgHOt03vo=;
	h=To:Subject:From:Date:From;
	b=hApFOOICLJLfJwiTHqayeWiG5Nc/TKAFmAUmF4y3TePxBPqgXbXxd5yNQKOWsSyZa
	 g/SlW/0CTU2zN/LiyviCw6jgVTjd5pXUMAUtKiEEHkRD9ndLVk9g8EjdCYuZmVIRyF
	 JgWsVFNqeEpxx0iSOTKADS0J3uNSfnFS2TthtVKLSg/8wbVDsdGORkxn5/EJxHyYy5
	 /MZ/l37y/4fiF+kbpnRNERESooR+CE/QaCwuRagEt06Z7jNaQYNrBe9gGwjSnWqEdL
	 YXxmdSdgQ/KP2K59zsI9+wJk04xmyat7ObHRx/C5zzoTFyELCzHUIGnmV3ITR2o1Tw
	 vyT9syZeK684w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04D1C4452B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468011369.3835.5191940049642279049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0894c388f6cd5df25ca866cb33980714a41669af7482d9700f9ae54779bd50
Date: Wed, 22 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784680113
