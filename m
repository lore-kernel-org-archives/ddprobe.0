Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC2A1AD256
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726217754; cv=none; b=BphyIkCEolRhh2qVT/BxPFePKAZCT+VUN+mP46xbrZ69lpMSF+RhX/L50vxw4AdnjIUH+jUiEeJakqJDBY3AKcTq5IRvZcSeZAdy5IbNfuGBo3bGZjPDAlo4JtavLE/iBcW1NiJHmbmMznSpruk8lDgs6dz377W01Ij/E8IyLyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726217754; c=relaxed/simple;
	bh=0paTL7AI+VxTas2M/OheEMhApCJ5HsHxPTmzSCPuybg=;
	h=To:Subject:From:Message-Id:Date; b=FWyw9lNV/A/Tc3GOoCgr2Q0xC6Mkd3+zmC/0XSGazPjsezDGoUMGpSnxkFHn1vlMLW2dzEjXPgdzi4sDIXsBqJC6cJgJMCVe8X1lzO0b+ycOf7hPzBsaQdwpoLSsft4eKvwaDZJHBMcngcEiGgtgOGRxWAMn+WmWLMd22PdHv5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkbbKBWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkbbKBWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78FDC4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726217753;
	bh=0paTL7AI+VxTas2M/OheEMhApCJ5HsHxPTmzSCPuybg=;
	h=To:Subject:From:Date:From;
	b=dkbbKBWoQ/9BxIKt2f6+MrcM958FnqhWdCymscGl/mBgHgF41TEDUvvW+s0w7v38U
	 I1ssgh06U+6zuY/XvkcIlCxlCldUg7aQT9SXz6kyGol1jbZCs6NVvzYW0J7Rrj5z2x
	 MUoeLDmEH+9QlGLnhkLzdCGakS9os8iwTCprf54Wz2A6mkJoQBBenhzAA38arj8DVY
	 EqPHoNtYHg99kjwzuQd0XxXSWnewWdVjkkWB+RTc/vb4o+m57bzEEFoxLkuWXFHTon
	 hW2kGung1uIXcCkEsgE+jgPtATzXfiiSijHTb8Z0l68tgZO17KfBaUq5jLuwvWmbUE
	 sYGA/IxKdLSHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84DBFA3733
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172621775364.8139.3298953467826658218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed60e2bb2c337d43aca39e6e1491e03ef6aa39b59511e017cda2485228c7ff8
Date: Fri, 13 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726217753
