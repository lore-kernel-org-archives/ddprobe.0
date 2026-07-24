Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4567827FD4B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784860234; cv=none; b=GBA7eqbRsJS0HKML1ciE50HFNJaeeCFVg3b5eWJrWIP8CDgCLngytQAHl/1TpC2ACS2HCmjKMhrNDauZIKkSYqX7de3HIjhZfqS7b5pTZVGlsFlwF79hHhmWa3aCjep5E67Mzl6J/AnQwnc7dt8ylf3u9+zu3y0LldLgH5pYfxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784860234; c=relaxed/simple;
	bh=o2E45BeCeKfFewgbgYQD4NBqTly8sh0r5UNbGqefrEI=;
	h=To:Subject:From:Message-Id:Date; b=O7GhyQU7z99tJZB3NIR2xtQvme5Gz+xfoVJtOoiDWSOw4D2XGjdrGt+5fCx/EL8IxK0dHbmPn6uI2ujtv2WzTdaotrLXwKZdc+e/kdalEUrntM6iLUpcmlkcj14Mo+NDGbbaWi2rsRfYSpdYseGW+TT81qq4kM1uJmS86iakyGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvqGd7Mx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvqGd7Mx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27AAC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784860233;
	bh=o2E45BeCeKfFewgbgYQD4NBqTly8sh0r5UNbGqefrEI=;
	h=To:Subject:From:Date:From;
	b=UvqGd7Mxm5yzgcvv30aSSLniyzYPmSKKp5Qug7lx+hENAWHIuGPzsbi+lgLLxcvSV
	 l300Z4Vd/G7aEx6KC4cf+DuJ+w1yOZ/7XDh7E1fTfRi/s3y9w7iIRLjV+cEvDaMv0B
	 BVGRgauK6cgUVs2H7BYnZnPXnjexHVXCa+tDRB8P0LRmANYh9LjtYqhy8ilPSjjIG0
	 x0olHWfxzYm8UaUxu+MGMDfzqXfsES2B1SYFvq6CMkuqmDbKo4bYygGECx5cS+wK29
	 JGhg1ECc7qRViNfSgLwsnNa51fqplDTgsorRA5W6wko3ub5D7ANRtbgfODMIvCdukj
	 wrYwKU+H0gZtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A964CC531CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486023368.8747.17339643894163079311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 009e43b8a2884c7e9e7b3d053342df009565f60bf6293340e31a1305b24335c7
Date: Fri, 24 Jul 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784860233
