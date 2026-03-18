Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA46285CA4
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773808494; cv=none; b=Iv0dAaeNZM+Ebso2tKq09ea6RqATzSg2qujhJuDOl7A6lMSHYjFOK0baqBQddOkrFYuhBGMlD2WCtqQbtpJE822B/tTFoE1/5rR83WVfm6x6Os14Vm3wKz9yzippRSMbnDQBa6Km0Eh8GSINk0NjQ1H/CXZ1ov8UEPGuEYWS9fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773808494; c=relaxed/simple;
	bh=gSrnoGt58VhDCBf5R15CH5qcBWDljMoIxsmxZHu9O+w=;
	h=To:Subject:From:Message-Id:Date; b=tixryyhUfVjGX+FB5ucJZ5CUZesu01mEaq2jaWI3wkpttZESydIpPfLZ3IOufm1KYATKJBm+SH0jNID/SlEgPycUOjj5sVZA+v+uXVUwKkSnIN7jlDFxJeklY7oLNGIrWcCOlvFWCC5uk5Kd4OXMMYH48G12Ti36sqDwirLEdi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFvQTG65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFvQTG65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD204C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773808493;
	bh=gSrnoGt58VhDCBf5R15CH5qcBWDljMoIxsmxZHu9O+w=;
	h=To:Subject:From:Date:From;
	b=FFvQTG65IVNS7FY8ZZIP0lEJ6F8bIHoP/eX2YU/P7CBRdeVlozPolGCP+os+9xXFB
	 uGLnwQCfj5IZnukV5ToTL2A6dWU4Ce0xYZ5XCWp6JwSmwabq2iIPrHwnPf+uLfbxfZ
	 lewD0IwyPfQSnNq2vRZO7eCCdZJoFUGhZr2yqb4IDauAqQVgqYil3m6SU9g2VnnE74
	 Yaw5ZYyANIV6E8ZVrKIfhdtZ3FM1Q/TIBLQuzxfgbphqmq7ks3HLr5y1y2+eRBUWyg
	 NSxB1GqR8BIhNRQ3X0nqlVNQn0dM9h7HjDPyIS17aS3MmyfuYXODlNP4qUiY8gFAS9
	 N8uwKiDq5EaiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99299FCD0A7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380849359.2367.13831750972193076830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1114b0f5b5c9e29b2207c6ff14043d27d117a563174291f49a2140df59554ea6
Date: Wed, 18 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773808493
