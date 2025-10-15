Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087AB342CA3
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760549394; cv=none; b=CutIjtTFyN2qZzpOVwkvuEwMuMAVW2pEexQJpv+du1NvExi6Eb6whZnVwSx5Tsgchx3fxrbpezpXFVk3zaLlBqJdYIOnnn7xL3mbmxGk2/eszFxf2ABU1xHyJjVFl08BP0aZTxFqfy1+MuKYlas1vIdpEipiA7SQl8nYtWuZNzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760549394; c=relaxed/simple;
	bh=fRXGzt0jUCLxTtfnKiSUVphqc3ZHzvw3O5wC80rtrqo=;
	h=To:Subject:From:Message-Id:Date; b=Rg8HyKej+m/Y7voXP/7cDOVbzm1rgnyNZjGx4oU8oaCzURD8W3+75Auu3wZdNPRkJuS9+0AlSDORUD86VVkeSyKVdwHRHCdSqgpFZNgHwdJyz/byNujdUS8/XcC23ykpDBIZJ7Tny/1YC5VsOxW1myf8Y8elywKIIuLu649pteU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SamORE83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SamORE83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97F98C113D0
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760549393;
	bh=fRXGzt0jUCLxTtfnKiSUVphqc3ZHzvw3O5wC80rtrqo=;
	h=To:Subject:From:Date:From;
	b=SamORE83bfp65+o7kimtERp0IusjNwEJdL0qZVHqJ4lJi59EpKGLPiTirGU0Uf/bM
	 mCYlk65BYjVBfGBop7qYP6A9Q0mGXMxDNER8RfqZVtS7niLXf/nrSsXI73wCctY4EO
	 fN2ck60AgJSh+k3X4UdrNbOl2Ekt81lhaGFisKVSakhEEg+LhEZUvcuTP1nxtPDfdO
	 YRF4Nh9dPaKi0xMSAbyvrZlZIoc36iPGPMgK8oiSR4AE8YDesUmLSM3H/YMpgbS6T6
	 5sPz8ACtpr1Dk5VTIT8hUPg2QZi1BIWXKJKvnOvkUSFdPmfzi3YXBp1Xea3dDIzGYz
	 TiRGsL0kCSlEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EF4CCD194
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054939358.16523.5452570412978737718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f66a0a064943d6afb1f1120482760b5798a289d1feffbe7290563475313645
Date: Wed, 15 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760549393
