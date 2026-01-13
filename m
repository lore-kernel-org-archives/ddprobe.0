Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7C512D1F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768262634; cv=none; b=mKdNFEWClnCxzBY02YV4LxuxDEOA68V3R9OOWGnQkBiNZ+wI1Auq96fVKzxmnlwTs4lpYfPRWLjXdaflXnyw+XGIKkclT6F0uOau6BK8UwvKoc53X8vSljy2ZXHY6bPNjSAQyaU+AKhbaeSocREi7rTpJpqEvKsc+FP/eVTDPns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768262634; c=relaxed/simple;
	bh=ZhffnzLPDE0Ngfp8xGsuAAmc/X6SVbImPlBa5IB5lfE=;
	h=To:Subject:From:Message-Id:Date; b=cfd3bw15v5HdT7h24Rizceba0KoN8cwQNGXGZzVYiqiZFgMKbgRKCYvrj/AKVLqX54QoKgsnosyX9Xb2/v0CnmiaR1cw6pEAiijDClpQDWb1DbQAlrDLyJmvbHFGCSi3J4Ma15yQxBqL4JbGR7AvYqF0sUyRIOWHkcTopcbko/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cL+GDqTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cL+GDqTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A418FC116D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768262633;
	bh=ZhffnzLPDE0Ngfp8xGsuAAmc/X6SVbImPlBa5IB5lfE=;
	h=To:Subject:From:Date:From;
	b=cL+GDqTcSxKnyiDZ+Mk3o0KF22vadO/75o1CheI/eKUIq0SJ00ofVyfjx85fZ1gYp
	 rhLiPoUaoGvnqLbTCuIGFssJWwgXhDEqiKv2h1tXVfRhXztkf1PPtdqWdOPXPG3wby
	 SMrYUoERsiugmvDYTXL0n1oDOp7z9v/AC2M4mjy1xRaVTxfs1eKNiYW/gTOruiqnG4
	 8QPUMexlzSWCRa2KPYg5GTHDtWIAnGKXBhrdeEIEHsvD3QalvqrwlfbIoAZ/WGlNjx
	 KtIjoxatTWJ26cnvqH6jSR9Qo7i1Ly0VZY/fUszFVISMKt6F6Wi9u9YkRNY6KFa3uq
	 EPjhVJX0c5Wvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BB0CF45D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826263358.12902.16315805447273874511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a5a33ce43034229b652232b770c9be5c8c0a28d4adb382bb51c9523c2dbb0c
Date: Tue, 13 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768262633
