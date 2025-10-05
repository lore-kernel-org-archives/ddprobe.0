Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAF718EB0
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759661394; cv=none; b=cVKr9wEhpHeLIirDdwdQyHSkO2789oYzcMlVcTIohH+LcJNKpUuYsDd0HfUXtE5MyMFMkPc7kFparmkwUM0YQEVTuPO3sfBmea0seFUZ2uS4WUPsBTWVonURE3PCnqjmesWGUvkTaIS3zehkLAd+YpvChmCsy8sYq/zrEvfuOHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759661394; c=relaxed/simple;
	bh=aCjl0qqubrawe5rlKIWdjSSPZLYBtWTevKfQb6S8yIU=;
	h=To:Subject:From:Message-Id:Date; b=OSPLugqe/dwXipA9eVdqAlg9kOw+fh+MAsgVgwSY01YsdwIqA8Uhjux6VfzgvZPAgkR2CTHbv3D515jVK9pDA/7aiNhmdRlR9vT0QNTJgvDcT04611wUsXarAQV9746bRhsbGe30Czhf0Z4sBl5SQQDhpTJHkihABJXG5YoKbyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSw2CaXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSw2CaXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A17C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759661393;
	bh=aCjl0qqubrawe5rlKIWdjSSPZLYBtWTevKfQb6S8yIU=;
	h=To:Subject:From:Date:From;
	b=kSw2CaXAMPEPmzvYGyFQiWjZBn9CjGG9Akxenr/fAL7VRomzQvTBut9Htoby90w+B
	 NC95mDfyjM/+RAmZswbyRO6HccSfCcQTFUcJcAcHyJFJjpMZLGTkmyBge7YmKBr9l3
	 RwxuojO0H/b1xl5+sbbSzVeY9LD2JwYd6crdSdEOKiwqBYrbUbNARz8CDPeRwVS+p1
	 GcIy6paSIVj2knYNjaO7s5qXViTQNgGT/s1xGfcZNiZ9G2OTvL4+h5R2j+LSpsgjOu
	 E4TraJz1gA9atsyuEsxsqmjeDLJVVb5L5fJ+p6Xt0V9/EZypyfRA7FQp9D9U6gWp/r
	 k9WTFvssP62DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E94CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966139358.32441.4765251701236049707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ebf404e637914f2d1a37d95d95cbbcadb39e71ebf6a293baaf5d34baf516cbf
Date: Sun, 05 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759661393
