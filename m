Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C65E33A71A
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789368034; cv=none; b=FZOEj3lKxiQsx/FBEm3uRCGH3fZc7wF1mOVUoa6FocHRodojqMCVg5rKKMbxL/zr5AbK8nVyKubLZXXhQ9qBdj58u5D7QARdtPvE/f2d8NRdvI+zYx/DUWNghzg4pHca6KIF3Mcb2HehtwqtIhVob2ZEUVKI0rwvWhWN/0Lll54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789368034; c=relaxed/simple;
	bh=NlXYYiYqIBpBiX5PW5e5kDFn0HQF+gzsytEoprLAzEA=;
	h=To:Subject:From:Message-Id:Date; b=eLDF3Tkp7ppWGIeHVwIrh0M74efKySJPmLZrWQ9cuVyvhdlYiii6ZK1erSulno53pY6Qm0hgXOcXId/FpWSoddQ5jwc1khJ1wFiouG68cYHihBtvGluL15CFshG1lOG4/q+SCkTccMMpffAhnzoecaiZblWO1ratVqhtMXIjRek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIbZPwlz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIbZPwlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCEFC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789368033;
	bh=NlXYYiYqIBpBiX5PW5e5kDFn0HQF+gzsytEoprLAzEA=;
	h=To:Subject:From:Date:From;
	b=jIbZPwlzILSk0WuGCSIule+S6Gg3kA0BSfmrd9cqVJ5TVTr7y2ybGwwsTVg5IBNgE
	 kxUM9wm/8BXof0wOvwqpRySpjdiM1cAUxgrXMNVChfC5Vt+ZnnzqV4h2SiboXNBBNa
	 s2sFxtMevRfL8Ej5zrbBA/G+eX/c6ohTpDWQxAJvnEQKFzMuOxe66vjxYUBT1Hy0Cq
	 aN+tfnCvg3ZqjcKn5ApCzmYGMGNqwXabkZ+EXIszw+by5RgnG6dYrziH/yAt9I+O2k
	 6qkB0Z5F3m49dkbOFCUrt0DGNnOaOg3iwni7vBl6Kbs0EE63JzYfONvtea+KxFzSgI
	 Rym+EHM/E+QWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC95C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936803368.19268.11797164019260457357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e504ccbf031aff12d7a451c257b98ea502fc2bfa1f79c5e8309772c36864ee85
Date: Mon, 14 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789368033
