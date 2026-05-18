Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289522F8EB4
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779127834; cv=none; b=oKXt9xiP751uor2+YqiBqFMFAEh385dNmdLofe8SIU7UEpM7pjSHDFWv/6G2txMqq4Ci6dAPqHKvnxR0nmDkZ5H7tc7djvpytHtDNCL8q0GcKs/efZEWW0cUSdrG4kZndriLnv6trGmY4dWT5YHsoQov0h32x3BdA7ae16y6Deo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779127834; c=relaxed/simple;
	bh=3ZCAViTLyONWcrzuj+UMoAfBURJDXaUp6PZc2zqtE/4=;
	h=To:Subject:From:Message-Id:Date; b=n9SpUBremTbEmRCq3uBQy0qjLUXTeGZr4c5lweZVG9zF2ip0PU4f4Ks0uPNYzJrKaBWW91sYWh8tVQ/GzK6C44Ghdrd8RhicgsdkCn0kVDF1/4ykJr96qxB+WDiqd1Lai+wRPoFbzKPyaY6zwatdPq1sx9Cqa1hu4CaJNBSRKpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beWL16Tt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beWL16Tt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6628C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779127833;
	bh=3ZCAViTLyONWcrzuj+UMoAfBURJDXaUp6PZc2zqtE/4=;
	h=To:Subject:From:Date:From;
	b=beWL16TtO6NGg5WYz58nXxljRoYDu99uHEWjBEInfQZIHWo9UdQ2G+Q4pru/4KlOV
	 yG57OYBfVBinDR27ylEDNtvAtHrnzRFCZNff48TmmRJLVfYLRk/zByzBcFCj4WMPtb
	 pseC8gVWZtOCOK8rWe5XNE5aFsqbnmULB7+9TzBtr830M4q9ys1fRcX5dxe8mP0YGY
	 R8Ek8EVtEPX6GV8AiLt38c9K7DJI+RZzMxgDDfrliS+Z9UBJ1ZQL66xvYcIsfWj6kA
	 oVcS07oB1DjK1FkMN+1HKz+eBtslPTuOs1y+7j1zdGUD9Gy1jol5NeIqZUQ2bQ2WnA
	 0OOlLG9EQUWqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B55CD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912783371.21771.9574985607981982836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61603c5da1234ccc2d941ef2bd358c6f7ee2473b1b46cfe810d4630b9009486b
Date: Mon, 18 May 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779127833
