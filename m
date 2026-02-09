Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C51E318ED0
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770678834; cv=none; b=ZNpwjJjW+JbXgkaPs3ogB1SZXxPa5UqAjlcOcxI5dEvbDniE6OhuP59jXKfbj3lnBI0OQRF7ABw40YQ8DcZNsnT5+vrZPZtXl+zZNLbEeArDa1GdnKVN3XF9RCnC9viMYSCEZLbdRjrZYw3NadvZPRFjIFsZtf+kgFq6yo1PL4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770678834; c=relaxed/simple;
	bh=fHVjDwuQfunDC4IYbgQ0YaghcW2Kw0F4zv/r5fYLwwA=;
	h=To:Subject:From:Message-Id:Date; b=Xfv4byKRdeXWhFLIpG3Tl/hDQxTQCp3YTRCJfosnt0jloXWkZHwZjdNUs5Y6YCW/liMnzumX57sskvo7O8YVOvYg2VjPiI0mtoDW6DXSgxEnchc6eKNxcqdp+WLhbPYvS6P81OnmsZnQq3kaIfnljDKuLWO/xWBZPnceRGKlqBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDIPLj/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDIPLj/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A833DC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770678833;
	bh=fHVjDwuQfunDC4IYbgQ0YaghcW2Kw0F4zv/r5fYLwwA=;
	h=To:Subject:From:Date:From;
	b=oDIPLj/nykvKpSkajmWTVzp+2a2T+ms2BiVUD6YGYWIulSpB/8nASAHor2T9cwoF6
	 mW6Qsrl/cGyZOe6aFTy9aS12YoUNZrDk0JsExsET1xuXcPYVL0XQZ3g+bKzb05Wand
	 6QdVDbQsVWVP0i21NNO4zYKHVnSR3+9kp3ZCReOVXV/l5M1Q79leOs4EWkFVuRtor/
	 6cfHQThDCC0+er0jNB+Vj6HcDtiB6+e4GhGG7RsC2KxU/q/kIvaRH1NBLyPNehBSN7
	 2TJQw5+vZhFWfgcGmsUFoUzcw5Srx7/jICSDZtMRKamZgdcxXy8lQi2Jk3TDMEN4U7
	 PavFDcMwJ0XAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9257BE9461F
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177067883359.9564.12966603511032573753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39071f7f517fe44a915c6a38c6f2f017d20c1c22c01655efa0345205c458400
Date: Mon, 09 Feb 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770678833
