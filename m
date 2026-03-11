Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387EF3C1407
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773228294; cv=none; b=Licu2PLjcc4UQmpxOwdpLHLBod07B+H/0GVW5c7nnBos5xlmSHGeXhjTSOMiHVg5QHkHlKshfB/5d+IjfPOzmB9jSvm2X4PRZ4fkaLx8u0vhED/ftnuQ/HzI1J5OssDnOIIuSaWKBY2A/X/WnWGE2am3pFemikFdEsVXmukuAr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773228294; c=relaxed/simple;
	bh=9IKPnh619LfskrdW3hboTU9jylFo67d104cuoj9YW/s=;
	h=To:Subject:From:Message-Id:Date; b=bePKvhq0FimpISRDFUBFZ+VmP8D+SwKM0/RlNm0OSpShAd5V++tmh2RMZrq+COw3hHxH86vzgKpvLAPQ0K22WQH6uLSm31MtLgWlqQ1Jz+Zrj0+eh5JINUEpLDay4RUvbd3vRK1epv8PRXmw+LsO1oR3kmTcwxnr1JR7pE6xIqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rH0+UlkS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rH0+UlkS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A305DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773228293;
	bh=9IKPnh619LfskrdW3hboTU9jylFo67d104cuoj9YW/s=;
	h=To:Subject:From:Date:From;
	b=rH0+UlkSgPdYWfxF9RRGDWBIHlAOQFB1iR/t9HSVRUfupwvuH+gm+c+w+HC8zEfRC
	 m8W9Ea4NgRkR3QjpOooMSB1aHzJWBp4eW3AdtrBlav0sGwsaeEQRH+OS4CYGFf3n9/
	 0QfEGxCEVYWeidxS1cGDzyyQWixqItlZfkl3ct+dzbPd5Z6nNxyO0Zuw1f6z+LDlMz
	 kAOJVQJWV549Ve5Ap7J3xHt2FI3mFLNDcQrkb79Q8nF5GTcLX64U8t3DD2E56Bdilz
	 w69id9ipc8XasEcB+gVKDZMA4qkJe2eG7mO87ibvf3SlgL2MkCMp5vS8Lnn0WqAy1+
	 ceLpoIoMGABcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9110E1062868
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177322829358.17161.3265842351894810902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba388412eac2ce0e58807653cdc3572d3a85ff29065a50c6a8f160ea19bbe34
Date: Wed, 11 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773228293
