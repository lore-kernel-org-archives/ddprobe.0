Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D772417D4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745006395; cv=none; b=tWH9id5cgfnxi9QtykDNuQ0rZ+CmyqlR4u9DOuKdbeAvIqXPE9J4Ya6mJfCDZ2M8jts/dqgn4t8VS38bMhJM8fm9HcKy6PtfiXQ7/+ZfIg5Fxyglj5Gzf/NTAGJi4a9PIqtYnHLnoM0BzW/k4Fp6hx2K7G28zvtp5L2TuxqYfDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745006395; c=relaxed/simple;
	bh=+SlF8jPGd3y/dWCdP57cqlrfP3dSS+9wdlxxsbEObmg=;
	h=To:Subject:From:Message-Id:Date; b=UBV32QFvYdQLtYe0G/cH3bJODWuquuvJPDME4tCHvm+YC6vdl+OZXdngFJtcNhL6uhQ4l2eakZztY+/EoVpbrMd6x05jmb5bJVhYcm74rBKx7IvIrsPepAvOfsyqFQii1ktR1uubtOe8IObEDXa8/iwjVekxMXeTLVEWY5tZBK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pC7GfVgg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pC7GfVgg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6717C4CEEC
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745006393;
	bh=+SlF8jPGd3y/dWCdP57cqlrfP3dSS+9wdlxxsbEObmg=;
	h=To:Subject:From:Date:From;
	b=pC7GfVgggFNmEALwBr6Et5BIFB9nmmQo7Gl5YlSfxrF9XWABXxbc44g+VQivahMmk
	 22p52Z7aq++hJZCqBPlLXb5DD1zq067u9Yfs+EPy3l+w2+khHaylCmYKnummGj9ZqH
	 sTR5gfo7d0SaTKBGjK7WahLILUeQ9hMCmVELZ+J2B7jeYA+h567dgKnaKMfVZk5yLh
	 ZOrI7kgPd7zHLTLQ5zJdH790pTEEHClr+PFesDt8iH7lBLrIU8wXJdhknkVMzN7Ya2
	 qubObA6WnDjYZO/tuftPK92O7zV835uqZyjRwKepe4WubTdnOhlGHNWECWK2akKH9a
	 RK0wKuzK61b7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2155C369C9
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174500639364.10317.11412964437282895758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4344f65aeab1d332ff7215c13b219677f9628ca2378bf76b2e9d85efe7581a9d
Date: Fri, 18 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745006393
