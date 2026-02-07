Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4EE17D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770428634; cv=none; b=JYo7FOqWInWBX1uBm6VGWKzq7z4do6Am7crYL5wb67nMegHMrsa0AeGYi13SuGVPZOEwdFhiONgaxtfuco3r07cwwwPbZLHZAtNoIz8S6SX7+x+6VWjhbngTvcTINS81os1+2dngXnhDCK3eUeqJL6dsB9lCAqWPx5PUw0A8Dkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770428634; c=relaxed/simple;
	bh=QMYdmCmDlFNQpKwvO9ZojCFx7CBBWtfOnmML6jyKib8=;
	h=To:Subject:From:Message-Id:Date; b=m+i2OH7dthYUlGUBgC+peGj17vORNegyDqGg/QL7++Rbj33pyyj52EowqhByv0Ob9mPzbG+0FTUmFA+zBz9GP8+F+CK0PxNqK0iC9l/iuzTp+ojt4ppvu2xef+l+ZQ9YZh/qO2sopesibLAfr2HNhhgqobJZ+hcTtC2bpbyDwHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WX/J0jsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WX/J0jsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA05C116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770428633;
	bh=QMYdmCmDlFNQpKwvO9ZojCFx7CBBWtfOnmML6jyKib8=;
	h=To:Subject:From:Date:From;
	b=WX/J0jszcdlYfbVxCJBt82L/lMF9BdvKswHFq4zHYqoLtX7KWs4PZmSPToXZVjcu+
	 sT6XvrtMWFZNBpppp/zQzAPp03gU6rvdi6taQ/0be3CI3kuRrixquABkXM15yjJ96K
	 ZDDW+M0/r7uhrkjiBA/TxCilSrl9a7CkbS7r9TYjfAYcXrTvcPP4dkxk8AQa/yo89Q
	 4lxI2ubwdDgoJbbMMKqFs/8LqiVwQuqymT39z2OmC80otc02mQ+NPsZxHGAqTnKaGP
	 kZNIvVdMSAbf+hu73QXHOTOFBgL5mdSt6oCniCNJpWrDgEczIL1+YvFa1ygYlS4S2L
	 DnMkyaaW1gAHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5134EE6B6F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042863359.13677.6799972481444149899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff259c5543d600274a52932a46930ff07256fa7f15e367c4f2c3072f1f0ae73
Date: Sat, 07 Feb 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770428633
