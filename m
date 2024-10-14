Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C994C7E
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728882954; cv=none; b=j+c/nKWGXJzuyIFW085CLZvnR4d5Iiop6iDxY5BLXkxUdCnGsNJNw+q42IrLBA1P6clSBAtS6il0atSpke4eP59a+MHRwoRr0pS9O03QWQCcQfxnDBfeCkDvJLI/8BNJaHRxUMvqTDVaCQvTTEqIcSLySEl9IM9PBwr6Lej9GpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728882954; c=relaxed/simple;
	bh=oxKtUNMWbiHtkcIlH01/7VO4EIkZzV2BTYWQfRiHo88=;
	h=To:Subject:From:Message-Id:Date; b=shyV+GvYNDHAzMQO9iyWr9El+iCOjUShaMRFlsWWXwHp0yWV8vqlC2RklzIv4YEFrr5va1DqtaPAxAmToz48/KuFPXNLXtri+gQ/Q3GQeyht91gMcIAUPErbHCo0jvXu6R3vB0xPbHcTMuDfRinWWrI7D3n9jYYp9WA7utyNjfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkCvH9se; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkCvH9se"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40E5C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728882953;
	bh=oxKtUNMWbiHtkcIlH01/7VO4EIkZzV2BTYWQfRiHo88=;
	h=To:Subject:From:Date:From;
	b=FkCvH9semVov+0TSzz2dWYEcPmzN00TluoSG8tt+egaeL0lfdC5lHBSZGYmACWNpC
	 QiDWyrCF/EsPaSbYqq1D+igvNDVxozDw+pyQV58ADS7MZJf/NE2oGSm9lZD4hXcR5h
	 lAeg6bf2Gk3OebrSotmBkFAGJXXTXkN0pfGOCxLv+2UY459ohWigOqYuKuF/WG7vl8
	 AFABWeUU1mYAUIso6tfgeVGtUuBQeFWH5RaITLL4GyXOETduvaoOY/k8LSK1tiFKWX
	 No3re0B3jxJ7MJ8zg8tqwdgUxxezEMnE0BxPEruxZuahPsBVRmHBME43uSo/J145JU
	 ysf5N9HRH5X/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AB1CF259D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172888295359.28990.5140564050324371589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c60586101e32132675f8aa6923dadda2627c3a729c6cf741a2ebeed3dc0ee3b
Date: Mon, 14 Oct 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728882953
