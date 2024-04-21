Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AC7D2FF
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 21:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713735623; cv=none; b=VQ7+QWmwiiV06kqFoVfC3h2+dxlOSJH53mmuNGH8sD3xDhj+PBEwOmwpI4beobk3pkjXuD+sguKy8B98tjYwVh0dPxuPRc0fvvAguJ9xIrDfX6zQvdMDk6TySgAnr69ehMLxqMBFI6iSIoNJD3VciAOfT4mXWPc1niSttlU0zKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713735623; c=relaxed/simple;
	bh=MheAECBAdaHYi2qlMdm9vwwa+MzU6bVE29bMH1F6+bE=;
	h=To:Subject:From:Message-Id:Date; b=fFd05qw5ZK/vVS32JnJTPcwbUFgALiIykLlp5htJrTxgJoo2UkElbk7VbMZMAv5YNXDK0MQ8VAW8TDfRYfityac0dmWYf68Myre5SGd5AbTToGqsbiE9oXEhPcZ21ua5UV/QkhhFniab+/tFRFzi7Lc5CZVxwqPLO2I+WFxxlDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9+t8eIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9+t8eIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7ADCC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 21:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713735622;
	bh=MheAECBAdaHYi2qlMdm9vwwa+MzU6bVE29bMH1F6+bE=;
	h=To:Subject:From:Date:From;
	b=F9+t8eIEhKFDgxy0FmU/UHGssRyGdIWJaKqKg0Qa55rkLHsboLpH9Gh2CVgxsIiX6
	 U5YkhH2xpXemKK/rywxdjc23aXnzramypKFprN2IVNKdhrX4PNfZlBF2WZN4vKf9aK
	 w0XBHYGDfe+GRIe3e3PuohLsnhvrIVVy5yLRzncWyaGuXB4nIvXAQKLrd6sMItKuE9
	 O3tIiQYcgYm0jMk3rw/egmayTM1RatkJmR7GbfeVFyFuLpVZmh9CivIhYmuf2/vumH
	 Ozm/U+sQrz89AP6rRw8+PsoetIDWyciUJS5+bok8Nvyi8Yx4G2PKBStQ++j6DLgo/Q
	 FsOQM4wuVcoZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B8BC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 21:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171373562276.23450.4059905952725023763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 520cb21a737684d8384a314f31717e47424416ebf2b9030eb044497ef9868cff
Date: Sun, 21 Apr 2024 21:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713735622
