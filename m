Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4812543DEAB
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789381834; cv=none; b=pjk5HKTEdNsHOFRdXy32ZEzbsXWZmAoxKhuh9V5q1IAT5q9q1DeTVQFH3KjzpIjcjX8f62Yxnp3/R9rWfIbOxHeRcQRCrQGMIV3uzh/Sxr/VBipCBaWU65pvTttrSrx4eltazy8DXmEGIbAGhrDfbxKW9gbhWRiH/oPO6az3tIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789381834; c=relaxed/simple;
	bh=shCkqiZFKTE7bn30FXzqJN/vnl+YYxFGBfUk2Y3x8yw=;
	h=To:Subject:From:Message-Id:Date; b=owTvd8orqnqGo7NLuKk/dl2Hd3qyWf14wSWEof9gwBRYDkBtemw8D+lFMczBMYvLK2JAPjGNo9Gp4uwPJw7QMOLwnAz6biOwmtWE/r3NFQBIfpk5BiED3JsA2bt1k4MvCNO01Gjr5Ajp+X7qdDeU+x3mnKS66B3qau/XJSDy1IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uq1Zrb/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uq1Zrb/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC31C2BCFD
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789381833;
	bh=shCkqiZFKTE7bn30FXzqJN/vnl+YYxFGBfUk2Y3x8yw=;
	h=To:Subject:From:Date:From;
	b=Uq1Zrb/TY33YzOI7NI3QZKeb5suqLNiluZjaicUhoX30jUO+UjjOSqhZ2uPuYf/lV
	 3jJVjClpaqyPr2qpu/Rl5hCMV8obcN9TJuJB96mHjO+Bx27cinePcUQp+lKpKaZqEH
	 rHpX4F2lxX2uoqaoLYW49SYSO7q9orVovzyoZvCqD7+ttFiXgl4ux6QPKb93bqIovp
	 cOFAYu20qDqDQ/oeoMA18jgSsMqhQ4xI2zzXXoKZIRtXCwmEytSbvz+MN4owyKAo9f
	 fTFf/fh2lUGOpMRnm/V0q0dcnfNzRzT8JYGB5R7Sa/TwwxwMHhtRAMbrnb+Kktc37g
	 IwJMLCUNkvhTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB155C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938183369.7208.10319660213963717547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26428999ce7fea89cbaabb0ee26906925ad6291c92dd6d63f874542b95311cd9
Date: Mon, 14 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789381833
