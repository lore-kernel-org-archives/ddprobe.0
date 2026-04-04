Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAB51A9FA7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775307934; cv=none; b=cVeMMHdYl/IGUApBvZ+MqO1vCrqGThvlJZUl0MzrKj9KuSSECj7U0xiGRapl1fujpmow8ViRzFZvtwLZWb5ihFBVUH7lHHmeX56qUU/64heJ1TB2q7q39/7V+izE7O7l/5zKRS7ROu/A/nb+yo3NOBubmGbzwN/FMKVJtvz9wMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775307934; c=relaxed/simple;
	bh=m3OQPLAw3Hl0o7Rvb9DFmOb4NkVBt2E85Ckd7k0vn8I=;
	h=To:Subject:From:Message-Id:Date; b=psxE91Hp59kns/xPwutI5GTznSFJ03Ozb+UvSntyOLi8WSddcBpqDxn9Ads8VYagk4oFnyEnFZmnf1F9eK0ckwdPy4QTOkowAkINtqZXC3WOzQHc1pHi39yxB4QlgaSPEJZRUzNCfH1MrgObC/C/tEoyYdMCADti8SlEFD4RWp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfjquYDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfjquYDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C199FC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775307933;
	bh=m3OQPLAw3Hl0o7Rvb9DFmOb4NkVBt2E85Ckd7k0vn8I=;
	h=To:Subject:From:Date:From;
	b=pfjquYDvOTiayTKsTUPsKuYeJCCZwWQuF6iDq+n0kjJuIpyNTcGX3hq0fgs2ZCDzD
	 ef9FrSOOt+CinlMnzSX5RHJpJJpbdDLrspRDCE6Rys6EDVUOIWP1e+qyPUHSt1A6WG
	 Maydy3CZbeHYUfGfuMjaZ41mbzhTd12kwW/L4bfhCRai3X3DqlykGJtNpnbaLxt3iD
	 AtBGBtNuU5751tEu33KFWzk7JnLMCItoRFslTTeo9Tw7ALvOcpLiXjnHw3cEXrR0PG
	 hkC7adN5WEGipLMQ4Xb+cKI+wqQSxRNY3oX8cb2XqgbNkT8aJJy0RbhmB7x6cAY++L
	 i8irKCD3m50Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD740E88D9B
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530793368.26477.10078976541541773319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e36cf7da9ba82d5c75de6c74101e04a51b4d57a2f430cdd4342d6cae6e63a2
Date: Sat, 04 Apr 2026 13:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775307933
