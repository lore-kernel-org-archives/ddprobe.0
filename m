Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EC71FECAB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759584594; cv=none; b=rCbmrKqrGGgbawwQVW3Tvux3RBh279KBCxhnHB3OW1dSNi6v7fxvWFClaieyzb5oKvOaS5je61grWJYxbyi/Rfjvdf5i2D7mgyYRPqk81db+JbVlEwQEWcXQtdWH7IMuTUyR5UewgZMgXU8P+tXFIu7IVzXXgCWT0m9D/rJmnSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759584594; c=relaxed/simple;
	bh=WclBWacaawqOZP6N61POJgEKLaMn4Bb/coXwVybqnxQ=;
	h=To:Subject:From:Message-Id:Date; b=EdYK/UrDQVl1GDB43JJPoSRi9Q3wEMiDVxFJmPDyTDxtIcRTY5ugfenjSOK42hxDkl8aD6W0+fx6/5KvWM2Ob5USwmjaQ5SdYi2+cLAqa3nHnOvJjFN4EkNA7XGL91g+lILeZWDY2lMkdHtsM6CFTNprKvP465aY68GyUIFEv8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWGA8ZFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWGA8ZFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0600C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759584593;
	bh=WclBWacaawqOZP6N61POJgEKLaMn4Bb/coXwVybqnxQ=;
	h=To:Subject:From:Date:From;
	b=HWGA8ZFj0W+bUqd0ZVNbZ4NECIYM2eZu++gGvVtEXMKyXZo3BQbl0oXlT/uVvEJmB
	 8DrceKxLD52eHvlF9DwW66POBs6haLguyF3Q5VxZV/lk0sAiVMFDrU+04wtGlQHqja
	 3cI6nVcrIlWilsfgRnITR5eMZ5tvMmcaEWencvHRi2qVH3gbQ/hP/KVUGsseslpckN
	 GcxPkVwT8b1IJQBTVzxidRzoGkl479qctxzyfpMXvXkMRu1lCLznMGkJS1ZLIl4fxE
	 NbNJfQO8orzwqlEwAcAX2qF0SdLlk1EZsT9PTwUB0jjPrDrGtX3TUTq0t5vP9LB93X
	 tumXA03F7WKeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9B7CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958459361.26087.2074268586442551538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c8b8fa0d7598a1df2319bff0210439be68af7c8880e10fd7f51d25aecf830d
Date: Sat, 04 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759584593
