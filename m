Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D2138AC7B
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779919954; cv=none; b=Lvp92tk2P/22ce1PTHRaf6UTAHFAao+cclkIzEL5yXMkDaqCPSJtM4+KhbQkP6l5FoT1FnjtBSFwvGHv3me0YzHtFacROPsFmykxiIOtuyGui0MOK8CA4sXYmhpEJu15P3JNTPgnglSlN5pshfvb9x84miSIEff+oiT3jSlMbzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779919954; c=relaxed/simple;
	bh=xeyTp/6wbveXkDdDZ1UlnVMPlVq3hPhHXP1udCZcc68=;
	h=To:Subject:From:Message-Id:Date; b=JIY5RJAVuuzFJH5pZXNl2ZxE2A18yqRdXxYLiQfjCL8Se3xeO7oMUg6EnB97k5/8znUaHDReex1WO2qOw0vO2ndBPrDJO9XjGVO5qieaXZVm1bY6ScxoSWNbAJKRfDhJxQ8JauWPU1pBZMtG3xhX8iGHMzkyPYxUgi1XMWieViY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WP5BYJjn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WP5BYJjn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD58C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779919953;
	bh=xeyTp/6wbveXkDdDZ1UlnVMPlVq3hPhHXP1udCZcc68=;
	h=To:Subject:From:Date:From;
	b=WP5BYJjn0l7ZhjWvh4Dj361xdzltw8FIaVYvBurTfaf8k1BeyboEW4uUUgrIdQmjO
	 P36sb7QEj3F//sPZR9K+FCkQ3zp8N1VWTC75vsXR52S4S845Ul09yyApqcQ/RHDzti
	 xYFGm4v0BSf92NtwdIcKOCnYT9TOkgdyGQwS6ISSJhGFinY0SxSAh8O7OS2spg8OR8
	 UjpBZNvPE09pMNEom6aFxj7sb93AwaeUkEOCUsUf6mKGDmh17SijOTDGywMb+FJTS7
	 GceCH2Y5h8eNLSGe19joDuA2oROWPluSEjlrla8/uNSZSsSeclFZDDp/9wBZlQtvwe
	 ZYWz5eRna2j7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1284CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177991995370.15190.15715169922758548420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0390fb5d306c9804fa4e61d662ee310bd49c63b177e1afa4c4aa79d27b3c8c0
Date: Wed, 27 May 2026 22:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779919953
