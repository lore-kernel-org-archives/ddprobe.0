Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1651D41F7F2
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788341434; cv=none; b=Zz8Q2u3KXwMjkBs8c3X1LuxXTDcRXDy8uoIT2ZMdJv+7xLVl+zU+TADSgZqAE7d8LfBVOtQEcczI1q+bwdpB6ovzWOaDCZ1N2sXqHbv7Dgb4E95jvtLo8P2Im4EqlA5th5jVIQrGJ5s+YyLBlUfFhp0EIknyV2CSWbpi/YKD0UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788341434; c=relaxed/simple;
	bh=4T0bo5GIJHXNq+1eeCF4IWdk/FfDvy6LPCtAwREjRzs=;
	h=To:Subject:From:Message-Id:Date; b=h99ywcXj7c69iA36TsmQwX5eI62czcjGd9UN73A2qhkQxMb94pACh4rdDXS1dgL27RtPnb1fexQP/MFPVi9Y/vpArUsMxY/fgVmg9LNN2FgRmI/6rMt9vSJ3W418mgMvx9SpAkHHMhHORl8jtZ3lR5WzPbTrzjzjq4+mZSWnLcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ooi9QQ3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ooi9QQ3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBE3C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788341433;
	bh=4T0bo5GIJHXNq+1eeCF4IWdk/FfDvy6LPCtAwREjRzs=;
	h=To:Subject:From:Date:From;
	b=ooi9QQ3X/0Xij+JXTTHqOlXeZYf21Yp92juQdlieRPfCcxY7EZR1X5N7aLg4QcoTY
	 BHdM4Cp+WATVpDw/UxonozUdgo9YzaPddH9+vjfcTz81HoIL8V28iA/UOAMoYbuuKJ
	 IpW1kTk4E4yfDLH1N64N3c71HAQIpzVXYOfKTMf85NQPPlRbhvocq97k/cJYgY+PlD
	 TbfvSF1UUgyZ2w38F2cRE/4y2BZPwRHKCU+PQayEKL9OBkQlLJFu3+Qeeqar2e2CLZ
	 mG7L7U9SrguIGTG0h2UsdzCFF7O9yOCrFItboPsNE2wQbyjlOESlTlo4+F5kscPkXI
	 k4DlXtXn8EroQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA053C624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834143368.12243.8574852033953882943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f57b38fcccfc3afadc71d97ec41d8aee178c23062dcefa1cdbbc82e4f8a0a43b
Date: Wed, 02 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788341433
