Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2983C1990A7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784304514; cv=none; b=Zg1TiU6Z0+Mh3jZlQdXsu9QEUmj9NO6iR+9JYwP7FyDHVv/jOdMQ8fdO3dKrQGkKTW0J9u9Hz9AMh+Jm4Q0xpc+HV6BaJf4/WrejDrGumn03BmZwvg05MRK2YTXuK/mmB5v+xs70QK9VqdTti0U82vy3ImzdA21mc6mG6RlYys0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784304514; c=relaxed/simple;
	bh=M1RkgbAQZyxCTdUy937uXBNYzPZErSu0McQqPKsA7cI=;
	h=To:Subject:From:Message-Id:Date; b=lfGvBAc6tbJyOZb5voBhC/6hLZTi3JBBsdgfe/NyxXRuJZCmkRIxXd6UBMC9Qot43dxQAQTJhC8+XF7k2MufuqqP5VOVifz621siY9YhNq55P88QxsFXzlky+d4n3284LSxolL6ERZRVkqrMhI2UlJu/oe2ZQx0twjTA7KYdQ+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5iFO61p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5iFO61p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD60C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784304513;
	bh=M1RkgbAQZyxCTdUy937uXBNYzPZErSu0McQqPKsA7cI=;
	h=To:Subject:From:Date:From;
	b=f5iFO61pqknaL/yuSoO8rwsgw7KP7kYia98OfxSCSO5O2TaQFrI3tSvvGbQXeAqUJ
	 GlpQdC1RvehWTaK63evI4hPGqRlSFpXh++MzgQ5xJuFYhj4RoZhNl6kSgtWJJsNnNO
	 0aEDWkoKONAignOVb7NJBXVgcyOI7IXxj09SbrWbmkG5nGuugNZEVVKQv2mURWjeE5
	 BiG1oOHgIbn2OQGKC0jQNYn/yP/XUWR/inRNZvNfxKnrSA1t9+cLBpgGcI75LhGeON
	 XRrjqooBMjp8yNDxssDFZhN3NoPtVCt44p16QC/aTCQdFoUo3Yab6MTKMmKV5BX/66
	 GGaCUzMNjP5kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91FEC44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430451368.32738.1562432352953565932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1998bb8ee7874727d9436e3f6da94978f7829756dab25d27d275ba37d47ad259
Date: Fri, 17 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784304513
