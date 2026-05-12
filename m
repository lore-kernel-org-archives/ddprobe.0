Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C193947B5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778625634; cv=none; b=rU5q6yjs5v9Vhb6w50k7lRkuZ2ZSgKrcMl5KmscFmiYrEpXT+Nev8r3dz8TjtjgZh4m3E8TEbFSGCjB8n8L8IVV3g1KpFuQuLE6HiSx/wPSy4JXlDLWg8ScFqSInANN1JbS4ipjM71gl4OwXl8jtZRuumwjXOJc91DIgrkvcUwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778625634; c=relaxed/simple;
	bh=yu5uZmGjGW6QPtnUOcTICjAe+M9HFjB7ZcNnPwiTKQU=;
	h=To:Subject:From:Message-Id:Date; b=bSAu4m2eYeKo8LMaBs4xfdlxDV5tswp4NWu1sUFEPolFXd7oGyZdSZ+DZp/pVpr/RHrcEK9/3t7qpU4G3Oyy+SmWcUuy5RsTe4qUNxJEaIXxaWFViPhwqr0Z06hNpHMZ1Jk+n1w5MZ4Q8qCOCLsU5lQ7UnaV6wcMVQVO/aCSFpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N858MRZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N858MRZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4F1C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778625633;
	bh=yu5uZmGjGW6QPtnUOcTICjAe+M9HFjB7ZcNnPwiTKQU=;
	h=To:Subject:From:Date:From;
	b=N858MRZh4uRQ44nXxHGa/x9LWEp47dBjQTAS+gN8//C1xdnHPZ9IenwQy5bMMArFJ
	 0U59OWDgMfe4VyrUK8SEgmfnOPQo5/d5kRe4NyvSocIg3Dkrgsg8hBuZOtoZO5v60I
	 cZCYplV6V/LWIk/BBl6h7cO90k2Tq27ygzgn1ZPleGNM6N5ZjfV1yjupl6Faqpz5Oj
	 /cbMED34NdkE09jP5o+IHLF1HjyO4LlSRE41NFlins64JpELSVP16RCjhcVcXJdXaU
	 6FT6S8APG8D3aSBG0dye8figsMCutwVxrX2V/OizfK6IQdNRF1JgXNoY9CNrW/8qT9
	 /GbV86OzjRJaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA31CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862563369.27414.5344700766348533714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66774ac29dc8f4e35081c1b130ba5183ffc0482b78178e406fce2e1bf93e89d8
Date: Tue, 12 May 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778625633
