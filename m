Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B38827FB05
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759600795; cv=none; b=bfQcow/cGF1Fw2Or0pAL7FYCcs73RgslMioA1QwXT1M/PJJ1+pubR400WJp4gdoxcZ+X4mAzi+3wt6oU2uxh2iwoBSEVO9MWLeS4X26dbwKfyYxmNzAJTG5yIhDa0N3iffNa0RgPDBr5oN/5GHapcU9gxq5kHf/aiwLUPfnYLus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759600795; c=relaxed/simple;
	bh=SWPuFizPhtGKZ6mJ9p8zEJknjx31ZovrrrlGDPUjS/k=;
	h=To:Subject:From:Message-Id:Date; b=Spdu57TXo1JN9t5XDMDDh+1zmExyvOvmGUMht0cYkoxSPQLB09DmIb1tr7cO9a38CVPs73Bt6cg0oUCIW32Jf803nHN+YOtTTDyrKT3fc8PsEjKa1fTLhLI+/tahBU1H77iJiJJC8RQ7aHzfBicwWcnKmyhqRsn93xenUVK94yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxGKZ5R8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxGKZ5R8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DE3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759600793;
	bh=SWPuFizPhtGKZ6mJ9p8zEJknjx31ZovrrrlGDPUjS/k=;
	h=To:Subject:From:Date:From;
	b=pxGKZ5R8TzFSwMyJA/Ytprxh+aEyWQcG/na8w+Ri5OXjrOPWBqBnIWzZTttqtv1l2
	 ot+ViBoMXMKgWPF9gwqUVSDo7xiBkjVBGsaTdZ26W6yZKWL0fsonD04m4gF7O56kkG
	 bgEoDHPKM3WtFKuy0LlVUoLE0xTGqSGsN0Mdz6MjYTyuAyQxVEhI3wB1jjThaWthDG
	 RlVJgV/Om2KqCniL9r56MN2oKt/geq4u2fAmV/aW6rnzzZnSOqckoOIVKdXKnmQfcT
	 E3RaZ/3Nn7kcOmWktK9ay31GbaEhfYdmJllvCDw21QksURzZoK1SbvxhlRZKfwvBsU
	 vDSecIxeiiKow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927BCCAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175960079357.3078.3354587803963603693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 842b4d9cce63315b3719831e09d0a3f6a3ea71d63c60d119761ac58360a987a0
Date: Sat, 04 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759600793
