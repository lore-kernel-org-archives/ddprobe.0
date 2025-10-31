Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C96271462
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761880194; cv=none; b=UmSCjOPojCFNRetaXutkN7c2EBYpCaVFZYqL8DFNTuQ26HjJ4FUFIP1cFkKqAllhlvLrF7K5Is8SklXiCFn7+OBhsq9FeEVqmFMn3CKRDBudFMQ/oMFElfqTGwVpDEmfEk71MnNdy8+ZLtglc0+m+CJ6r5gBcovfN4E9/vOKXig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761880194; c=relaxed/simple;
	bh=0bp95IXrZCJ2wMKJnFrbhs7J//lpC40FZ2/2CxKvdWw=;
	h=To:Subject:From:Message-Id:Date; b=P2eiqJltLf1QLOF+fRutG80sr4FiXS1Zg0JtIHeUayqB/vFFJvfbIWGuCA8RFu+tyvkplnnMm1h/Gz+zUs5Gh/WhITODI6GYmlIlVNI+kPhtlVQZwS54c9/JzXeMszcFIXEA0sBzb1n8Ojv+KSrTAP3kxsUsdEZCG6AZudeBDP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9v77e+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9v77e+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA43C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761880193;
	bh=0bp95IXrZCJ2wMKJnFrbhs7J//lpC40FZ2/2CxKvdWw=;
	h=To:Subject:From:Date:From;
	b=N9v77e+XktANrWkY6Ee7qhCkoIWCJ+7Iwu+MWxwap3CUeJJ5Og1w7N9RWFO2+qeWb
	 Ez/kUGJYbh7i32VahTvRvEz2glU9b1XlEhotDYfaMnV+hLt0kyvCA2eCZilw+VsNCj
	 SSAnBGneboNZbmjM5AVR/vIRg53c/D3dAO5RdiDlV9UWc//33F8ZSeBekbO3YLGCjJ
	 7jEoaukW9fWYvfBXREUDoKOLnuPpkVTtDuqxxrjP/Ac3nts3JsfhOEIQTTkx78Kbm1
	 iY0X1OwDI+qxZTa6mbmOvhrKeZjw8eGVILaSN6ptFAy08dgMN6uyLcKIXerFYEd46e
	 bgU9ejJ80C1Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B484CCF9F0
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188019362.19209.1385579911135777665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d43d95491f28a3322c84f77a26af0665138be7d112d9958fdaa436209d838c2
Date: Fri, 31 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761880193
