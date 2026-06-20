Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61198327BFB
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781951794; cv=none; b=myANLhwiaRv9O2HVNrQfVokDtFUv8mR17IsYRtOIMtBxLMUkKeMBlJe+fbzG1qyo7/jK4u8PLPJ3n/htsM/UBwMMjCloRB4WrRIC/tT4N2I1Yoyebm0UGgxjbOQdrvF5nTB9THkUWNHG4uWKcp1mmdvbo3TNXV8OIIjRob3tDYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781951794; c=relaxed/simple;
	bh=5SuuVkrWFhVKo12zDA3Yo76Cl95CfJwNnnZ7TLLWYqY=;
	h=To:Subject:From:Message-Id:Date; b=lU8QWfBuk/wbKZev8p/Yxn8Fbel0tqBdeOdpUh3oEXMmjQ0P9af+loO6icMcmhBApVyEt83vAMkclwZxw6sal9Td5Zi6rHdpxDPUFEXcfZsHcE4F7q1n1DwneQWpSomxp8xdl61Z43i1pwqiY4DI9ymc3NkiuOf7hdg3/+cI23s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLUTyKHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLUTyKHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0149C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781951793;
	bh=5SuuVkrWFhVKo12zDA3Yo76Cl95CfJwNnnZ7TLLWYqY=;
	h=To:Subject:From:Date:From;
	b=CLUTyKHg6+ad0J/hfAGAAnGGPCtD1/ec4f+NCIietGGUv++fCUmK1iw8dK7rc7K0x
	 5P+wayG/F0s1mnjovRXj5HsK5A8CqxvJiLLPJVw5vJlIu3qJiiSfqcAUhmhpYqqaHb
	 SOvSzs+u8xM7d2KmnZRWGh7nCOLlzaUrI1cHAeEDFvZVkGlk03x8GcNHZuGfj/FjGX
	 eb4KszSdwFHZYkjj+RqlYtSzWoccwTpOTSv21/d3lXDvQsz4GF/CzFIdJRS3h6gsj9
	 zyoLLeU8Rqy2+Dt8w6kdMm5UGZ9GGCdhMMtmvhuc40w/C+JYjhPBuP1r8m4pqKnuzX
	 sAW0HGy7cr5Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC140CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178195179373.27671.15781534988146912677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c1da330e73071e801b363b21b6d4d09b20326f72598327a547320f1292550ff
Date: Sat, 20 Jun 2026 10:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781951793
