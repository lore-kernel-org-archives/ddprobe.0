Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F1733F5A2
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778755234; cv=none; b=HcrGwfhLXbfOA66diocjyCTnAn/+6XhGSbuAcsVRP0oaF3n853IH/hP4izSel209+23Bol1iJ17l+GavPs5F0/xptBaM6vAN5Ny+E7S+btZuhE6oKuYbjK/mCKgSthzYB/J+P6cgIR4V7eWjinvgo3fBe6XquAv3IKEXz0QfDt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778755234; c=relaxed/simple;
	bh=V/vTPLfrHYC4vSp1C3pS3YXxiJRuC4ujNw60q7USLu8=;
	h=To:Subject:From:Message-Id:Date; b=ddzgwoKjaadv+f1s1IOStmuz5B2IjzDpV/YhCIJoITgaA3IZnqgQ3qLsG2fIJJBNv65GQOScLj8wMPBSrM0cIM+tfGQ9WdO/4yH8iMCbw2FKVBUnBtQ5Xcp5/awG8KykqiPIQr/ThanmopQPUhQ0uhia6geBfUnjT6P7GZioZIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KepDJdsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KepDJdsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFA0C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778755233;
	bh=V/vTPLfrHYC4vSp1C3pS3YXxiJRuC4ujNw60q7USLu8=;
	h=To:Subject:From:Date:From;
	b=KepDJdsYYoAKq7JLJrSrcUGxg+2OKBeemwNTVbaiLfoR8qZwCIlAnJ7scQwh39TQq
	 50fQar0uNylWhFgx8oTWpn6SJhJcKVNf3YGYfGGrxGrqDNNtTH6RcD4ZkjAgfg5Nbn
	 gTZkzxU2LD4Ok8F8xE9ya7fvUvuPt5SRTFgPtd5+LPGDKpMZ6BIjlk7oHDgPxm8JW1
	 AtZMiSq8koLacRCWJkw4j2HhkwqqIPVOsEExhtpKQF9JuCVc4BpYYHTMNXEK75cdfd
	 sjvt9nU2DGeyrZQumtlRDhF2zmNRa5Pil2IgvFeE2s9rQZ4qbjErnoKLEUhIJbHiZq
	 UlcYYGRVgGHmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC25BCD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177875523369.29500.8076245065510228987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5526c48e00d162b23dadae2289e5ca4cf811abac413ba056aabed1d4260e3ee6
Date: Thu, 14 May 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778755233
