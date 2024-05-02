Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554B72EB11
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 17:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714671143; cv=none; b=uATNdr7ZR6nBUNKGQG5jWpwSbkUB9JzejkypYTQq3VSeptpt9pF5dN+uhSdmWGMNfxTid9k4gQvt99EgceOnEgvDVxcqZply1TbFMTI3XMALNv1ZL0swiiK1xjPMYdPt+ADxQ2OpMo45Y7C1pKfledc1QR7eT3xyukQnUDNWLco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714671143; c=relaxed/simple;
	bh=lojbiCb/3QSsHWALsC9lUXy1mNSjGPwQXz5YCz3uuZo=;
	h=To:Subject:From:Message-Id:Date; b=O+ufR8oUSM/FGWecMns4o5SMmd5eyXNjKt7gh5+W8QxIpbYlpD8Jxk/rEWkT67xRf310BuujokWOa8cWE+i08qguSGmhNqbNrRVgZ0bL+XZtIpZC+ycpEeGoW6tWyULuNzTOdlXlDKd0D/CUfVlGWT4llQlU8Vn8IpLSKBjd++M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TyPEX+ro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TyPEX+ro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D2BC113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714671142;
	bh=lojbiCb/3QSsHWALsC9lUXy1mNSjGPwQXz5YCz3uuZo=;
	h=To:Subject:From:Date:From;
	b=TyPEX+roN/ji2BsiDLYOTcHYuLwgBjIW5/+RImCaNNSTBOwC2B2zOIWbXhCIqCp08
	 P0Qem6XeAyLUKgc1ZmAfDfOT/w2uLZsLrD9cIDG/xT560fEYHdcS8dTD5ZrD8i9Z4q
	 n5r9B82hC+AiqBEy8h6vqCGsSjOywN2O4SsB2Nh8tJ17RqF/1upEyswJRNgRHFeqUS
	 NHvhFKeavdraPpYrrjePrH0zbcQgcwR1LH+wQ2PoopKtptUonNBALos2TccdNicmJI
	 yQRA8l4Un+HodgLDn1t986X7LsbsR81YTLd3Ny6MUN0cTSJANkx0u+0ZaRTJUlh+sQ
	 5J0o9yJoX4nuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2051C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171467114278.4850.5291666257127707409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4611e8a22e0442ca1e0ec928304cec603e7101c3463eb854c7d9aa7716222d5
Date: Thu, 02 May 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714671142
