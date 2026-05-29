Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EFC1D555
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780014754; cv=none; b=EjD+YrxNtl0/orWf+XVtjSTOp8vDt/rW4hsX3gxDtEPAGARInGz/pyp++qgul0+++MrLTkyD8qnv9lritI7nAjzmMnCmyakSW7KWyansTnOLUwG6/QHURM7dysu8EylAl00uOZNTe52kCizRcTdN++yo8zYPPVWMloBCha65J1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780014754; c=relaxed/simple;
	bh=i/HTVnWX+QrjPN6nIJMCXA4KujJyVeIX4d4LBpJJJC8=;
	h=To:Subject:From:Message-Id:Date; b=ASvy5gKYqXl3LZaSRSBeUSPnMbBt0rGMqRyrzP4MfiDSJn2v+lXH1ZECKM4AwV4C+zAqASzTEyF9tnWCC3T8IeN4kGzN+EodDLK5MhWMq9dzE5g+kxGScYeN5dCNByVfsg33s3F+FMkvwsMPKNjfgUdLBsG7s9YbvX7Lx7K1gbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnPYpm4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnPYpm4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D414BC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780014753;
	bh=i/HTVnWX+QrjPN6nIJMCXA4KujJyVeIX4d4LBpJJJC8=;
	h=To:Subject:From:Date:From;
	b=tnPYpm4ERZjaYQFZ31vMwH9tQzMBDWSZodIhJr94eruSGOuAhLC4Vt+CfysbiuVPu
	 wRs9utS1rIb9FqvOxwtvWHGXiY2OJyyF7resoUNgawx4CLzvweEkNzeuK3UFA6EliV
	 VVdPEbiZR+SDe/OBh505N9+XlbdL1vZ4N/RmCwRODMl0ZTGtlvemkP3MlmwCQo9w8x
	 Mn4Lb9wkOJxl4bNghHe4An2JI5lHS9z0Q9YGDTCwZUss9TOVSrhkCinqMJRy4o5MnN
	 mh/G5MsuoT0oQW2cnOZpu68IGilqVMSeOB9cbvPho1rTw/QsV4flH2ESc83p9TAOeP
	 1BjHqFVJATYAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB272CD5BD1
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178001475373.29940.18125869967446816754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931f79def866d18e918b4ffede74a48bb475e7072a9e0180c65e498396fabb55
Date: Fri, 29 May 2026 00:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780014753
