Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1415ACA4E
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775019894; cv=none; b=SRYL9+vRZjQN0B1eUaGDYo9mWTzT+pPi233DARsAJ++KbIWXWTLXXriPdLCJb+qNBiHiU2ngA+cg0KpHgFv4QSls+RE34dH57T7lT60XDoClf7IMbv/sQXU4ytr8HhQ9pXvxtyAsRRntRL3IVciu9/GgFWJxbD22Pv9ol2Eoifo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775019894; c=relaxed/simple;
	bh=0XrGKjQUC8IJaw2Fm6afBQ2Ol7VOasjoC3MkRfdLrxg=;
	h=To:Subject:From:Message-Id:Date; b=rfpP6uTzEUWUkNLV/l/q6zx80c7cranImGnScEK4yvX4N1d59bm963mjvkxmHcQE55SL9c8Ju7E7JDLCw33F7ve6yrTDk1vxWzqva9D+t2FI11m7B0kG+Iedo4/GzpPrsWYGEAO9KMoPHSCrrPfP/n8EYyO80DAEpdAKw/hzdYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihAmecdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihAmecdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BC4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775019893;
	bh=0XrGKjQUC8IJaw2Fm6afBQ2Ol7VOasjoC3MkRfdLrxg=;
	h=To:Subject:From:Date:From;
	b=ihAmecdHcw2CxhUDMr/wSfq3y1qVmtDyfDRSFE/8c//DshgxeNJQFJ2t5sC43XTvi
	 2R/VnfbxYu2a27cqQd0x/sD6GlOosiqppR+Wsqz+bB+30DUyMYfyV2Ok82PFKUEsmw
	 gqxMwZEIFixbj4qrttoW20/i8uT6WOErmzbAdtvKAt1e+LsD8nBd6iNpYN21XoxTDK
	 kQ05PGDz3Yzla9SRrlmjgc9oXAz3bzG5QkrqJGoZoW8Ga+dzoojxmxhabU5atZuZkm
	 Bbp+lHuNWB8lC+70k8f4t/b+VqaYjN34317GqCCG0oMO7sg4p4vio3jQx3sFbfJ2XZ
	 VLflclwLryWIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986831076365
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501989358.19476.18246725629263470117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a9da990013c26f8e1f280e747a4d643d524f5c1bf527c1ea937926c450b9d7
Date: Wed, 01 Apr 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775019893
