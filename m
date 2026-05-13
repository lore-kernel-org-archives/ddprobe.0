Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268CD374E5A
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778658034; cv=none; b=EpxzerFwNJBJ6jPzq9vWkrtrw0HrDgwOgJEF/+8/Z7fdbOSG2uJIfEWkkwZw5xXpvYKPuNIiws3TgvuxGYjEim0fwIgJ9wRV1swM+YTFYxktguLvST5HKyhjhQqFqILYYxer5IexNEtrjtAz1uopmiCDDzmgzg1XSCO1l+BwT7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778658034; c=relaxed/simple;
	bh=4cdh0RNYN3MUUMv5cfjwqhOR2A6hUwbhsrfc0mTYMDI=;
	h=To:Subject:From:Message-Id:Date; b=EfbfyG/o4kCsj9Q5YnzDkbeF169tIvpmF15CL5am+7d6MtiQR8COX7eOuOL24ukAMrWmZluVfKM3R353FG2MxXIWhXymK62qjrBvd1gcybxqofDNtiN97gPpwHKoc7LNOyoLpFsunfakALHG2nLqAqTH0bdyv05zF8X8WYD7oi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lK7fX7vI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lK7fX7vI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D51C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778658033;
	bh=4cdh0RNYN3MUUMv5cfjwqhOR2A6hUwbhsrfc0mTYMDI=;
	h=To:Subject:From:Date:From;
	b=lK7fX7vI7ILfKvE29TGro/NUFyF0AeZ1M6jZjBfSu7AVW6W7vLewoyLzqstSTyNsQ
	 vrPptqj5y9sweoNDHvhaq5WwYTjSgrzhSI0YWXKi1h8nGHbvktQuLUdBRzr4TT/cUE
	 HqR/HqGG3yYL1+ymES6QAERFWMp+uBehQnKqvW63j1fqbzOJF31DBoEmkA4qewrzbb
	 2LsvYLD9hml+RpgobCLYXsjDINCNXZmEaW8OtvZQEj2ycnSvTESYZ/LAj7+2xWJN2+
	 n/cxQ8G8fQ/Ltj8C9MlUagis4LBTR4auQfwj4saytKx30O5w+lHyrnJJnOZ2DWTgNn
	 uHcPTNgxoB42w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE09CD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865803368.9170.16368071012202247277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f0714236c5140d164eab7f700baa733bc026d758ddefe25a9356498b6788a47
Date: Wed, 13 May 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778658033
