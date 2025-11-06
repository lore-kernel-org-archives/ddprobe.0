Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333162DCBFC
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762460394; cv=none; b=RPYllQ+aw0nqf7RIeymu5kbF0Ga3Xw1UaDqVXPROgDL13hAKlIu/8uYFk7/r+MPsZcxis0cCW5gz7sQXSfLdIRtTDCWPSp6YBf5tV3QVt0rT09Wq6qtGmw3KlIIJIIseVqia7CUMHr+NbJcOz647frAnQhFWUlRMPz4MG1QBlaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762460394; c=relaxed/simple;
	bh=DhSJ2nF005YXTdZk3ZnD0zU2/YwXadRCuurVjBlRlqw=;
	h=To:Subject:From:Message-Id:Date; b=eEBMWRHag7MfT0IXC9pGo3uIG2YKRgKbDMCZi49dmJr06AqL7w1bysM19V6gFfQGGxsJ+9T+k+/rkUGBkDdHVvQrwTRDl7hSGJvn+RBfRhTimPsl4KikVyAcp5N9ybsDTGb81sWiRKI8ouEIiiM0axraGOpulljeQSJp4QFVycY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWtl+LZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWtl+LZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB049C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762460393;
	bh=DhSJ2nF005YXTdZk3ZnD0zU2/YwXadRCuurVjBlRlqw=;
	h=To:Subject:From:Date:From;
	b=sWtl+LZx6UgWZCiC05eyAF9oi7o5l0l5+BNoyn3ijkEKf5aflNmNnZoT/6FmaOxvu
	 5CmK4jkGa5qa4/waYrJs3BNgGcFJMOCC5H/kL9wZxmWi9By4yu92dacj63at/VLVkX
	 OdPjikmlNG2o60opZ/OnCNjZmAsgBAY2jwS45V0YyW4XnCEp430NImbaqf7TWNWGKS
	 7vgMFNNZ3U1GzYwIit0eoYCheAjIG9Od8XYoC1FBhoBBy/UM/GH5Iz8PhcBa0fvtvN
	 FOARLN3jj5XiLPKv+TnEib5+4TOx3VvZIO3ysU9mI10GbZCM6Rz7eM5U783DasDUi+
	 crbHQUGOuGMtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB1ECCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246039361.14808.14581130601657641574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d57c4daa5b465b9b597352e65878f7f65cc274a565200f724389026b683e83
Date: Thu, 06 Nov 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762460393
