Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EA028851F
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762367994; cv=none; b=BGXefrRjgjrhCz3MI7DzsY7Hp2CVAuEMGcIyXpn6MWpdHm4sgnFAKwpGxQ7DTCQ0C1tn8FQhNVyve+J+4lmcXPJejMXLxK3peEaccRFQ1dyjJi1gBqkl7ohSTt/VB/CI9nyOo6iIYIE93WoBldb7UMaWQa09pdBSBuU5IXRhhKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762367994; c=relaxed/simple;
	bh=LE5G84j6NjXCJpSiY1+MuoDETx1+gImWIQ7DiSe2CUo=;
	h=To:Subject:From:Message-Id:Date; b=KEuvwtOQ6wVNFUaXsFeuewGgYwrMtREtlAH9jQf7i458Nvz1bgHTFM7zDxnlzziG1k+CSVKuLoTfBWLs8QPQ2kCWLYST70HrNSjoghP+UXLJAMAlQxoipF5yDzj/NpwUrTEyui8lk+K4iiDuoqZkI+Gw1LfHA7kkSNjlDF1P6aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dq1BjfWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dq1BjfWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC3FC116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762367993;
	bh=LE5G84j6NjXCJpSiY1+MuoDETx1+gImWIQ7DiSe2CUo=;
	h=To:Subject:From:Date:From;
	b=Dq1BjfWEca1vZlcLz1LaAZ/Ir5RI4cO6nmBAdkAysmNQLWTDO4ZOQHFLmr2uqNRNZ
	 E/lM6yQRBBc479CwQY4WSsO56XX5I1Xy4b8feLOmWsgEjqJBw65eMhQLG9+KTxa5Sb
	 Eg80YqQH28DnNk1WUQQefxcm9JgGTy07Z/e4m4PY79tclsDx8zKLZHB6wj6B9r8wjr
	 eXnYMm85v5kzVG9HjhLK+BoWNPAHvUEObF18OkDsSNEehv9PtimL1RPP4Jov3YdaoH
	 8ZOzjj4lxkbeYgo1h/F6sM/ndsy3paHtHxLgAo2K3VEhxMpeKEAMKOKbRUYIQTH5IE
	 zFi7vxVlJN/+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90865CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236799358.10556.7100146227370360988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc55864ede0dd53b763f624866806f0310ead09390a0bd35ee80ad5c8060c0d
Date: Wed, 05 Nov 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762367993
