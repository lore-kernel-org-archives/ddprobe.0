Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3343E1F5617
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766807034; cv=none; b=ZvA1bpSpu9j5OIXEMVBE3njFei8wiKJN1yPfp2SzrmSEmppTVZ5MYydE6Vu3TbEnUHPD9isfsZBJ49pWhCpyi85vy/nXCJy1j0TautrDtCDzbP/iCS1HTSaQDVMqy0dM1YT3AZZUZy+cOeIy7jIyQlxwoUdjxUYbVdxI2qe3rZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766807034; c=relaxed/simple;
	bh=cAdtfnI3xBi4ORtz2lsX0PDfRyt0BaiGVLrc59sIfQw=;
	h=To:Subject:From:Message-Id:Date; b=hy2DZoqfeUoaPfHkuMcTJXAmGAD53SM2aJZm3HxoMAXnEoSrQjvHPz59kZgl12iVEsxRtyr1/WiuZmrCXKgGYeMhYroGhkfas6gQvfUvMbgV8/wkjRZINcOEAPEkFsgx/UtyFSrOmRu83nb0PbcQXrXGpxLbCqcvVetWBNe7FJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJP+Jyi4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJP+Jyi4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDDF2C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766807033;
	bh=cAdtfnI3xBi4ORtz2lsX0PDfRyt0BaiGVLrc59sIfQw=;
	h=To:Subject:From:Date:From;
	b=bJP+Jyi4gNm/2N5WkJopy5wpzji6M9/pfNZypHQEP+K3XP3ON63urYov5Kl5MxDiR
	 nN4q2c24nSOipolXLcgyYJTnfiRDpbWYaOPsucg+5K+WFJjBQ4nUEEE0mQbsoEA1sm
	 9H8d++JHAJt/ciiCQAfvncC5mwOLgA45jk+8X9glnXkBiaOted01kUciDlsaC6m8te
	 DolCM/QrH/ErcpEGBT+9vovc0MG40FCBXOB85lBJGZTf1qd/xw08HU8tUr1oDH5ps2
	 x7n+fQbI4B0ZhED1rxE6tiB3lLz5GivdKUVMFsURlGw55XuZ/+jtMowL7c7VgqwU3f
	 /v9PmcotEq/vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC4BE6B279
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176680703360.25732.15671467983984043300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677a0f50c6f1a624bc995e578909001f25739e3942115a4e381d1e720d8fe0c4
Date: Sat, 27 Dec 2025 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766807033
