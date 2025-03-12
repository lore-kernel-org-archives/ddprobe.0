Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AF9189913
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 14:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741790934; cv=none; b=XLhwofp/2NpDSEhItYlGzC9p2EDTfjqp6XI/Ui85k3Msw/H8gTNVXypBeCnZ9QRod6CeybIyXfTx7sNeVXEdaM21lioSzPIuKEihvuXp87VMFgD7H7orTSv4cjL+AdMjb2g65qB/qg7/gBTacM4gNXlfbyUSEtXR0YN33XREG8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741790934; c=relaxed/simple;
	bh=NlRtDWJFexjuOflN35nDRPDuqdd9pVobQc6VIs1cP8c=;
	h=To:Subject:From:Message-Id:Date; b=W7M+6YHNljMJzkbUkhO19xDQOAHQY5bma95f59gSeWXwRV8p6i3OB2BashGeXCjThBzPXhkTgUnmeGv/e/ivPe+ewsUAholbu0azfjtQdMKihGIcmwFuCrNSmUkfZbBLCfX/LOV1HV55Qnhj+pv3qWJgMnvb2LM6NUFE9FQcdGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rg29MVce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rg29MVce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E7EC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 14:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741790933;
	bh=NlRtDWJFexjuOflN35nDRPDuqdd9pVobQc6VIs1cP8c=;
	h=To:Subject:From:Date:From;
	b=rg29MVce5S4Ee0kj9kKFepDm8+OLHKuLW3+LrlyDE9RYKbKv/hk8tkp90tug0qDXd
	 1DqQVDBg7i1Su58KR8FFeZ/MHP6ZJ4hp+uBQ+p/e1eKFa+yS5L1mJAk2nYCp+0Y4Y0
	 5jxKunM2c62DeFKSKyzFeNcR0c1bc7LGbAj5ffwAf2bhVXoWXmLYW1JFahrk+9LyKx
	 bkCQav2A3Eh+ikD5c4o6Dt8QLgD5k3KWIOSkkWmn8U7r5iRByLz58YWSYI5+WAu2vU
	 PJVxrVKUo8L2rgoFyhUr4ETRFP5yYgeMseU9giKBYJdDKzlLJoWF9+b6HfG9ZuogrC
	 XYwh5+qE9qN3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9014EC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 14:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174179093358.31805.6231060264560196170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1abaaea4ef6a21efa2daf61c4c9742072e82ad3043c9ca67a4639ebbe18e36f0
Date: Wed, 12 Mar 2025 14:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741790933
