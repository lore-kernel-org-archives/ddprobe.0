Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E343A8F7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778012854; cv=none; b=AA/pwbXAQmhaHHGJUkLxz6mOAEzxPdnveTwvOZCsU1VCSWcLwITJenf95388KYVE5Y4+Jx0cc6jjH0R2R0ghwsQzOSeZq1HSGpMBNExhqtfzLyKErVcLmz2YU6FzqrD1azQtkMlAS2S4tbOVMC4yxpisE8SYnBnfGbeyt3B6pj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778012854; c=relaxed/simple;
	bh=1MW/VOkDn9U8DsUWMUHQRDAe+Qz+FMje6sWvNsoqzXU=;
	h=To:Subject:From:Message-Id:Date; b=JIx3i7dGaBpjFixXS/zFc0HOkkcPlQA9+RkWdysHhq2hjmiIBVB4a+KkJdlLudJOD0EiejoZPdCcZEqItdVYtpSIO8eCqmk20vhXtNrzhlE/Gy9+xTL8VPlUhDqlJqHqEvOSTqCgvELspPhfZhVzYPamdp2DDlUhaExSlJJluOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQ/+WKaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQ/+WKaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA87AC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778012853;
	bh=1MW/VOkDn9U8DsUWMUHQRDAe+Qz+FMje6sWvNsoqzXU=;
	h=To:Subject:From:Date:From;
	b=jQ/+WKaHXm499sNC1TL07HdI6OK3feIjj2ANrntBpXfufwcAQZVOwhCX78CUzl8KC
	 W9SrD84xz780VL4StgmINvBGFMynFsSbjpsntKMzVFsLReBxtf+5P0Lq+SkQ9op3fk
	 bocOQVgibu+ayy46rtXW0ZdWDshM2XjjSpejBRYg27zBZZRgbmu7WkdLSToUkP13Ok
	 LhJ/GYavwb2NwRvPjFgEKg1715RWQC5yW7QsasRwxqFcTsEqACxoCE0U6iZhTxaCtq
	 anGWF1TLEmxjOlHI98Lsp0he7qhlbYKTnftGMLfdCAyyGVE9fIx4Jyv9zprlSzU3i4
	 /mchXt7EdoZbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB338FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177801285369.25845.10278617419968571299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c862446eeb03d1987313e4670c2a2a53439bf12074335f38c681fd7c6aa4e316
Date: Tue, 05 May 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778012853
