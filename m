Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB73C1B6CFB
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738610153; cv=none; b=KUg2mCtxj1LIW1/wzZPaFE+pM88xw5Qmwy5Z6nkoPIo88qserimodr6PiQAzcj4g4kS+iZAJ4QPYXLTSJiueuG3c70YYR8yPXERBkJRDTv7Xw2Wmn7A7YCX8hwMV8lU6zucBatKtKcMs2fAeVLnDlv/hn30CWBgqe+gaWyCjcE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738610153; c=relaxed/simple;
	bh=EIYkWlV0rp1ucmVorbDE14FqhtpzBrqxXGGf0IavO4E=;
	h=To:Subject:From:Message-Id:Date; b=Qro438Umw44utw0ie2QKaiDpfJg5Yr8S7RwilBOpT4GOChDxDOApXn6XCSpG3iI13apoGtFzksHE+G3Yhuib5Wz47ZDuh5nVRv9ys7iZ03Rj/hv9QigsugW55fZGWDcbrXnx8HY9nAGWjQ9F6ZWC+TTq55VXKZOCaNwiS/soX9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCmzNq0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCmzNq0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA319C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738610153;
	bh=EIYkWlV0rp1ucmVorbDE14FqhtpzBrqxXGGf0IavO4E=;
	h=To:Subject:From:Date:From;
	b=kCmzNq0QwL39SwQRdb40XjMYfrhLdsJ0vJ56OK9BLKEMAoohVRHnGaieUPGheAsJu
	 j3VwrJ2woZTOhe1qqGV841y2DBsKgLO2gy+OYMpemvsGGxaFnaL5rT66ZxmBAm/uOx
	 73wYLiKVAysMGn8T6rHj9MlffizR/NyHEzu42iOfjcnN0mSHaKGWXNAO6M6+Is2loa
	 OFGA5j43U4rXWN8qQXAx5+d9J9ieaqKNsHe/pNqpVctCxwDcBI2LXt1cRrmk2DVEQp
	 59FvsdmR0Qsj/bwmDj+1LnCgMUYJP8dtuqshroyF4gh6oyWRD5EDVdxNfQpVa+5KLi
	 tG531ymVkuShA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B57C02193
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173861015361.27847.5712466578089262024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c75476aecdccb3be6ea880269b9a679e65c6ace4e2f0f56f0a94f4d270ae16
Date: Mon, 03 Feb 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738610153
