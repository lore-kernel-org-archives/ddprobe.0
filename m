Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF781B983F
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765012374; cv=none; b=Te1myd4tvPPHd9/z6H3sj2VRRZLlP0bUUiD1RciFtGLNoO2eQZvVr3+feft0ANhmhYaJ0GRB015gea243TevJ4IpSyyVk3TLBieBK9/ZOAoUFkMU9LqGhrhme68+y5ReFZmHp1YYkr1yYF/aNSXPyietw2+lSXUkXwpssbNU1ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765012374; c=relaxed/simple;
	bh=maKs7U2xSse3tNxcIBhQV6uXkywxb2ErocgVfp2eCt0=;
	h=To:Subject:From:Message-Id:Date; b=V7H6/e1R3QuFFi0OYwYNyoLiU23fraJs5JLIkyelWD3L/ppEKf4REWXNLZnoJqBewFtC78HYmd30c3HUx0R26u51N35Or77hJvVtYxp5miMOJTYO7UtW5Q0EumsRofoCa4lFL94WF4mLfasokZ0Yt4jdYoGq+NVtecbyWhBV064=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCV+ZqQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCV+ZqQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6871C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765012373;
	bh=maKs7U2xSse3tNxcIBhQV6uXkywxb2ErocgVfp2eCt0=;
	h=To:Subject:From:Date:From;
	b=aCV+ZqQLWVaSRKzQZfnu5Q24D2SB4xLWZjqnFaKu0IyPcTLUzgy/+iY/M1Qq8z+8i
	 MKh8J97R/KY9OkijUhYpiYZvz0jf30oHarD164gbL+uhxNrVX95SB5RSuVvB1E3Lhs
	 NPUNmSTyqx+JZrrBSrntcryptEMVnVSdJrY8La+3uFTNKiAi2FGli/Jamcp+tQ1HiQ
	 UPUfDx7IOl77mQGWzM/Vclckiautq2ENbgpUkmhr32TsXNVuQ4kYhnyTDtgCtMRnDb
	 +8b+DEvxBBkr27r0TXQ7x2pOcIMRcLic+Vh5QJYYzQRAymRUeb0AaSMnIcSlClxJMc
	 Hj4TPK8LeYc0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F6D3B7CE
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176501237359.17056.10530756696022490799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9359f27880ac2d3e4299d9b4afef8bc2603f59635e12480ab9a4797bd621199b
Date: Sat, 06 Dec 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765012373
