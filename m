Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40F1256C79
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748503793; cv=none; b=uNxI1k0Hk3HHHcAQXLdlQ+RuYppaQVZL26FsWByYuk0R8m4cYAxW/ctDWECJzHFMxxPSy9vdf/Xc+vA98llhnRfIWnSM7spHY5zwQhXhRjYAoMXVg3g1c0bofFM07yOCm77Ksyt45THscj4509X2C7kAPZHWOP2SYHbuOriR0Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748503793; c=relaxed/simple;
	bh=8s6LpSO1SEyEh3Wjw1r5m4Dp8sUF2l051037ZCJab78=;
	h=To:Subject:From:Message-Id:Date; b=X33oTTx/GQOURcOvsyILs5FZtL3zBQsX0Ojvsn7z+Ko86I0MdWQpuYQ0xtN6qJR8B+5IE7Re1auwVWQA0tikuuZYvksNE4zfSIlFeMgrGjtH/YWpxd/KOAxwe4Q/Ig8jMvBFdIZr+nmSBTXJNJixaQfhjJbsD08ViM0kcHhzqCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cI9nDN8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cI9nDN8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D00DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748503793;
	bh=8s6LpSO1SEyEh3Wjw1r5m4Dp8sUF2l051037ZCJab78=;
	h=To:Subject:From:Date:From;
	b=cI9nDN8w5l6K+xina/rxHRuCcGVDVmUfK3KWXkGBVR5cUgE69YuEXZIKYAcqGqQJn
	 V8pjDCWIK3evg7ErDfixvDli4MyDdq1PjWawMV0TiltsTVXstDqeOsjOZgYG3kXpfS
	 U7apzI5ssYgZmW9PeiZxfEVmynXuek86ni+j0AcJTlmcQX1vOBMVW5CzfIJxyzzA4M
	 LUj0O+zI4oLRYaXwINmeZq5WorDzOpUTExQmrIrT8cPFAZiSWWRhkh2Bqy0N490Ysg
	 USzIdovBDBvA9N8f2wm4Oi05WqhqtS+/zwlSvlHggw22nejne9koU2kFllncXR9GSu
	 PwZLcfU4RzO0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBF4C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174850379357.21719.2594804025056923063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd16ea407790846dc1880d1d5b3711a6cf377191f2851092c81dea5ef7035f1
Date: Thu, 29 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748503793
