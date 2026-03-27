Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8BD2BE65B
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774577094; cv=none; b=Y7kzggyN6O6nRbWER1tVeU0rQK3WXRRJ3MISpZ5opArKeQdNX8nC4XLvBic/hjnovmgnzggh/hFfgSJ1GHodqTKyd5OCSBmHbz0MtNpgFxVxXM2A5wYMH0bhaWxk0aGK2ralMQ1Yc4clKI+FLkR/IxiEUrXaPGr+LFDvzUujwIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774577094; c=relaxed/simple;
	bh=tsIMyihAqcOkPKUctQgoMyKjtRryOga2tt8UxZ8eNlU=;
	h=To:Subject:From:Message-Id:Date; b=K061xm66sc0RUvGrDAmIadjPcj0h8hUE/DgilKoL0l+OzmEUGBOnjCNtZaQk4d+1F3xvh0+nYLDRDbKo2PyCg4/wgfCUKUW3QDnIR5DVaeg7CZ1Qqa1E+b24pen1+vm/A/MkRCgMAryBI4G8XPOqUN1ltFdhm4LIXYaVc6UOltI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcPXl9ss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcPXl9ss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8309C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774577093;
	bh=tsIMyihAqcOkPKUctQgoMyKjtRryOga2tt8UxZ8eNlU=;
	h=To:Subject:From:Date:From;
	b=LcPXl9ssOGTidCJEntOcCn7/FuVkMkBJ1lVkC0VI7i1ysct/d2t01TWwA56MQSXcD
	 zk6w2I2jCHrXpoS4FC+krCP/qy0o9UiN8oacFpT7HqmxqaJBzJB2MK8nfojblNq72P
	 L1kLUkXpPtkRDSrUl40kOMIn3ilvddF5mOquJbXRDpM6PuH8nQAZCwFKfC7naihQIK
	 o05mwbajRyavsRw2CtwjAW2IlmtOZz89v/s7syH86afDRHQaJl/NXVGcqKwP2loiPZ
	 2wwjN/LZLHzPWAllgxfonFCRS2qlVbUkpODHIUq/mg7X4kz50RbfQScLTRWkNdv2sD
	 QvCCo3hUq00cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934BC10AB83F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177457709359.27965.13271909468044539345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f65ea21c53eab1321d1babb8a551a250911bb22d11af7817a4496a6ad865490
Date: Fri, 27 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774577093
