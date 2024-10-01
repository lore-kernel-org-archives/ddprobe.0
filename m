Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4AC71CF7D1
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727823953; cv=none; b=i1sCSQ987u2oVLoMCdvVRYQxLOYnBsEB1Cg8+x4yq8IMQdhugzrkt8t4o+qP66C3HWWWGHIgJjrZoN8yrywL3oXXohyqipC9/8zDvo8bjasfqxa8h4N6d9PtzaezoaZ9Qa2+VLR6VXJBTRJPn87BL6IYzBSsqpJnS9czEP42OZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727823953; c=relaxed/simple;
	bh=MAQltXdxhj3oj/uo4DoynzaPQaMEhtto7xm+X29z7+s=;
	h=To:Subject:From:Message-Id:Date; b=kTdYmK/JPv0H51azxGJc3Z7SJNHmT/HAC0rotSL5QieiBymrpjYwp9Ky5Vk1O3fNsSIQdxoaRRpVpeoEbm6iLXbPpI2+wdvSJp2Gx3W5JsksqlBNYMSPuggxilt94yOTEIHwlwiUv5/ze8IwKux53hPEMa5Sxx1wg1ruVuHyl9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNMugQlh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNMugQlh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DB9C4CECD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727823953;
	bh=MAQltXdxhj3oj/uo4DoynzaPQaMEhtto7xm+X29z7+s=;
	h=To:Subject:From:Date:From;
	b=DNMugQlh1rF19Yicyg9TBehhOaFs+UkY8VWRgmyneyU6NtQhHggAK4ubMetQPbCWO
	 7+CRx3ZDFG3+V8/H5BLLLYiLHOv5Oc4/edu+g53nWopbeaxpWP/MTjE6947PtgZ5bn
	 y/OcJ7bCQSg6ORzmjY9eUbUmp4ezExvfAT4RUWFI7G1tXNhoiYY4XRvkwIQPiGjzdk
	 rLGafcIca7uGXom8D8qNQQEaGddnnHeqdIm5Ct6J4NmKgC5db07knDAtQfcUXh94lj
	 kYCXRS8Q8iIYWlFTLpmy3NwyVF0w8l+79mc1Ldpeqlai6JZS7R3/1fxpgS4xmuI7Rj
	 GAf/pSkv8ZM2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A21CF318A
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172782395358.7402.1163431404801112088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df13ad9524d819c0d8b70381a99cd0e9cf696559ae7da0aff2b0c3b4ffb7ffcc
Date: Tue, 01 Oct 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727823953
