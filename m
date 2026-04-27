Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084CC3D170C
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777308454; cv=none; b=LZKtL6t99FMFnX9skjootA9qGLk1U5OWguWFqZjsvxEf6dZJj2j6wB1DcDtoucD77pD6yxHe6xETfQSc6lXtR1c5/6Cg1mW+08iN1rAloZ92STOWB+rQRqM+M9vLXzhsI1b8rIr+2fdAGJZDk6qstdmo1lxmMgMOB1lK+hDwi2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777308454; c=relaxed/simple;
	bh=/B8ff2cSuVgzloA8tqFPRdTF1igj1vKh+2YTaKYRBHg=;
	h=To:Subject:From:Message-Id:Date; b=rET/JhRweDnO2g51Hd3OsTGqb1Nd0JhCS5brVo1zZdAZIbze8jwh/9TlKxKxwsuOK1TQZreVtMTzMOx82vhH0JwCQPwHCgqsyR0+daQVHFhTko7/AMud/zJc1vHevc1uh6fTtu8lZd3j/nV9JFjtWwwWb4v+giZaWOBmNS90Iys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxL/m9fv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxL/m9fv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8579C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777308453;
	bh=/B8ff2cSuVgzloA8tqFPRdTF1igj1vKh+2YTaKYRBHg=;
	h=To:Subject:From:Date:From;
	b=IxL/m9fvJUl7k29YeeAxnM0t5AOyBTQ7YDyNSf+ruhuuP+jDXNYHdllVda6v7Go7v
	 CkBL5wIgJlLwNq9CKFubVolScGVOvWpDbP74GSIlz7cshuv6XthJWBUfcQGO+dpqft
	 NpZXTMLr4njqM/SItrKsEgWNwwnbtZY16zrFsPdCgGQp44/iZN3UaRZnz6h3OpgiJ7
	 Gu31Q6dJrE98sootsEkRoYwK1uOtTfngwS1GMVZPbJFaCm6rqeoKAWSYxGd8Mtx/de
	 JgT1YbbdVWFjn/0e16Fwt1zCUO0EM+9jFPG+kEg6PbMNJrSa1mAodernXv26rI47Vh
	 ub6sUEy/ZlW/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF7CFF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730845369.16207.6097749857573609145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85fdbdf3156edfc3b53b9527289d5b2c3e546de186e0119a97ae8be3bc6adb11
Date: Mon, 27 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777308453
