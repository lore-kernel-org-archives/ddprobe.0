Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF1F35E92F
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788748834; cv=none; b=p+l4Y5KqTOM1sRnCjHRi/zTr00vk550/pLFD5eIZpQCOA27PnUzLhKUqSbeB/9BXmlWSZyoaVAITj80RryKC17ACWDz5x+X64JO3fjmbJTTrdHrwbOk6i4WMw0FYXWGXFRZJdoiANA7Nx9uKRrUDHRKegJTqrA6HJRhH3evFVdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788748834; c=relaxed/simple;
	bh=lB6191dA44Yg6x+vjMa75wPlKKO4DfYqNEyWXux5Xpg=;
	h=To:Subject:From:Message-Id:Date; b=j33Fdth6mc2yRtmRzkL78ge8qV3d4V93QXxanWN2GqoPW3ttGHMJ9l3pah+SCkNRIZWQD984dpzxzS9rDqGWVZZvznNeF27FZUq964+btaoEU0b8xpEAo+AvPJaoVPCLz7DY2Zs/DGL+7eNkfu/hcSADePzmmoyZ+o57jfqfkVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9/bufR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9/bufR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B03C2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788748833;
	bh=lB6191dA44Yg6x+vjMa75wPlKKO4DfYqNEyWXux5Xpg=;
	h=To:Subject:From:Date:From;
	b=C9/bufR2Qb+ucShdtsHDXazLcb2FJiHTc5/uMr5pyKSZT2tIY3XBwQ7H0XSoV8QqV
	 tETtd0VSeO2JMbMsy9vU4TnuHLWiVWEV9kzp5Q9aXAkedbAh0p1FZLr+9jLleT27F/
	 X/n2tXR2FAI5/l2oiz/ySKfupLqSn5G36ruS42hlsI3LAriyYIN3oPTa+69IuGNDpj
	 IQRYoNNdzMlKjT66w3UIDxtUx4UsalICbr+8v2bE2/HEclyrFXBQOMcpFxIosnTOwi
	 mWKeR+If3OsEdKEhKYgCQCIxrFyzVZzDzcZ9MDMEHjrtkB5v8ImJ96ZLp1pFxv/OFi
	 pR7BSMd+s+kAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE839C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178874883370.25636.12578924816448706755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03714b8e22a6d77708bac8cbb81b9de05aaa5216fea90770b33380852da8c35d
Date: Mon, 07 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788748833
