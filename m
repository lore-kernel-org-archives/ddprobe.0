Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399982C0F6E
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767363234; cv=none; b=Z8CXvW1tf1hBrdJ96dxX3MDBntJW68O4d3zQV3OEQvcunVVPMpZoALB7z239Uw4sMLBUi63eVcCOJ36V+tSH7nrE5Nta/jceWXCKtj41czGZApO/CXFOF+tjddATWZ9GXIG4Y2f4UDHFpMtgTEjjg5WYeRn5czVnLveYFE4Inm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767363234; c=relaxed/simple;
	bh=CWWDNb7E81C4fiKZjyjjNWxnbgneXkFCLJzoFKciqAo=;
	h=To:Subject:From:Message-Id:Date; b=krOBWc7Wp5FMXT3D9dto3KzWYIBJCpcb+8pFsDCnIuj5miISED2zr8PXeYB804ea/jokJXrGicZfyJI2ai2SOpV6fbzxuOVsxFZX8bJTzk7c7vYZmZ+Pvf69QzeWq0sNF7COqlFMLgPy40L5Bg486rYQEJadfyhJsNCkfneq7Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMx/b51E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMx/b51E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2483C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767363233;
	bh=CWWDNb7E81C4fiKZjyjjNWxnbgneXkFCLJzoFKciqAo=;
	h=To:Subject:From:Date:From;
	b=HMx/b51E9RuhRtPez8jOxmZA4QWRCW8QlsA8FWeLuDOlE+QiiccKzQPiHtuIGrb1w
	 nmLhlG1ml+BHM5gj8MD5XLfBMbmFvmAokZCN2dsfrWOAOn568WUOQ33uoTR6tZUK6R
	 29x02tfzr352TU0qAct/UstNn9qv/G/zzo1oNSr07g4FHKO5gAXc3R9So+Ob7ZrH3z
	 +tIrnSQUp72duXr0hqQAwQwPZM4uO5LTO8gjF2K5u6QUl6yR8WwvQTf0qWvZu6+UQB
	 XxHhdNIUZ5qOdX4NssZ+3DYfkVgMnM3/7R3/o9bjD9wp7wDdUpOzhkGgDDu/BkhuTv
	 kUXvyS6zyAz/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD3FA3741
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736323357.21400.14351386169130514971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97b3addf4a91b867f2f8fd9ac4291b806712d350b9fac5d493b3952f6167d63
Date: Fri, 02 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767363233
