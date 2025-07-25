Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D0F153BED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753463995; cv=none; b=nQEEAyx3Rtnt86vZbHZ36cmNcXIZxLz6bRxYtXaMZdeJne0MlgBc2F6YyKMl7FnXulyASClBm6GS7GpgbMDST3PVEwYFJYgbleZUlsb8DE6FjhAGhr1gNW9T2MqhaKGiupgALdPkL0cFNr6+3FWgqFDTIhLlxZvowxBEicHHoN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753463995; c=relaxed/simple;
	bh=7zqiZabwWKpMooki2BOHi3kN0D6Di8H5ooU9STIDF/Y=;
	h=To:Subject:From:Message-Id:Date; b=fdqc/q+UnBORrmUyvH1+ISrxJfHPbZphWANmrMSdkiahWyCw8q9U4eNYf9K0JDEi9ZXrLr0RGU35Q2fzbquIKwGxtyZ6lCBBZivjXatAnrmTozVr3ynMG/ME4IlQoDMODXBb1Y6a0oMphhhS7ZtgmIGaovDGRZtgN1eck1ffnsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXFDKTTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXFDKTTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F8EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753463993;
	bh=7zqiZabwWKpMooki2BOHi3kN0D6Di8H5ooU9STIDF/Y=;
	h=To:Subject:From:Date:From;
	b=MXFDKTTMXXNrnH4UEw4g9Z2+ZJtFWv4XkJJzQ11E1I5aenN8VzeiTh/qrwN+Y+ugK
	 jRUdO+MuAWCQ/kgNNrwhJo5UttI7KJT9glst43Apb//r0/3NFyh+NhgvVIlnDyxYQd
	 wad1ayVhtQQu3njGx/LMkq8O2JJBUJjXsVi/2NyRRbLmnreZwYRHdUSwj6skSXT1cK
	 B+CnaVN5YnczaLQwEIWI8iK9p8YoLGAwfccq+W4WE5IDp2/xOF6tfYumHvTCB0zwi1
	 EBopmidc/jGEUBM+Fz7hwN4XxFatf9A6fJdcwwCWDkjiBn2PLH9Llvwc1xGjDBQGW7
	 MB1zy58KNDz4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9334AC87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346399359.17743.3699420637484006094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a642f19e8da5aeeca3b9680a09aa36b346c50f460cb9c7651aef120ce03c2e8f
Date: Fri, 25 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753463993
