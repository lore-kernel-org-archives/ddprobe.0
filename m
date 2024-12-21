Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386901F63D8
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734788754; cv=none; b=Xi/FmEhmoIOc+hp4Xal9yCqc8BIZ7PTjV0D8o2f2Ab+EH2xqOK07m3r9tinEHodLz6K3ik0ifraPHvv0rxyOFvmOgltjgZeLdhQtkMIQLfiMFNj2u/veoEfDzrodl/iw4k3BZEQssI0Nxbtd+AgApnrO3MzpRQ9uDcY4KNDL2lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734788754; c=relaxed/simple;
	bh=2y8NfYNpX8how6GuG8eG3G2z7LwhvbYYhzsDilRKbjo=;
	h=To:Subject:From:Message-Id:Date; b=UU3OR+TJITTADvcxz9T+Szt/HUSBvzoNNY8MECwxQsqJSbGAGxbrz1U5O3if1QxZwUnawKuiXC4RgaFr0uSx2NN9spocixWB1VnusYUfMq3CYw0MZG2LWaPfPmkHHTXqxQCbkX43rKreffzcQ/wfke1GPyT9plSZRS5PXlmu7nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXCdR3g+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXCdR3g+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F95C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734788753;
	bh=2y8NfYNpX8how6GuG8eG3G2z7LwhvbYYhzsDilRKbjo=;
	h=To:Subject:From:Date:From;
	b=mXCdR3g+V9cxAvR3tNdJ+gHeKf9COQ2fd5ldWaGq743/5EP4I3L3eD79vr75ri0G8
	 oNr5AoMDYW0FiJbEwt0deRtXFXmCUtOGDYAdzyGEE/dboCXV6qnj5x4UndJ43ToGVa
	 5qMg6cFQRDwoFECzf7PEpsZ/KqVulYSFsP7kxpFzbbmV5VOrnGmlJaO/xH2IPxycaM
	 ZCTDoOGklEKIn94+FpmtdrIv978NFGx2mPRyLd0yLnNGNNXyMjU++OjBrxgAZyTf5D
	 XVRfg/Wg1bLOVVAVO+QMiwfAIfkvj+cEL2FNsmDEETt5tnP1M5XUW9IdXmOOFV9FjA
	 AlRVsI1drXkcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A38D0E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173478875363.8352.3987989876180037156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 810c344d5d3b9adc3dead2a6f9df6f1ded97a14de34976deda66978fc0f00646
Date: Sat, 21 Dec 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734788753
