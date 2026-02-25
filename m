Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE0F13D51E
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771979094; cv=none; b=Shk8z6cD2reisz4xxeg4XjrKqU1cTrQ9iS3ODSTKHBZvmegmsbbFieYJJCghnqb12krK+BPB7Wp9JDD4dR0KS50yCKFQNHhDASamVdvSupVNrZBcY4BVuOtbvpChE/e6NbX+HKkd1Vy6Ts5gop4Lfw+ilrUVT4CE+sJPhfIsTeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771979094; c=relaxed/simple;
	bh=tQ/bHxtgtaLv7vMhzn3teXprUNSCWVObyzkAaBgyatE=;
	h=To:Subject:From:Message-Id:Date; b=KcX6cKKgnHDE6wiK8xXPiByPkrKbhFmYZnjOu0YyaT2p6KSyWGQ1mXi4+ReaKFZ6HQlVk8iLU6jbWh349NbNOJqnS0fj3wbC7XJcCMctvIx9gFwHie4Ci90MTZar08/R8y0tnnuDWtcpMY4RfI3custGXWvKuSvqxesA4Ku4aDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGLqKtan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGLqKtan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A660EC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771979093;
	bh=tQ/bHxtgtaLv7vMhzn3teXprUNSCWVObyzkAaBgyatE=;
	h=To:Subject:From:Date:From;
	b=qGLqKtanB3f2gq0wYutySOzBtq8o2BhYVVYDJuRj4+mRMafqSvNZKjxSUK7s/oodb
	 2ltlb7kPc10nCJWBAqZrktIThxzbiMeULNgME2vJ3CK06n8e1FakDZXid4tUilZoQ9
	 Lro6nxWOqEqTRDAAQrjsmGYhYNDNh4fPuZ3bPMliREePk8RLuOKrgj31t2JJF0+QVf
	 fghq9DWGfZaPmWhGVmykVL1+6XoVetWbObu6Fxd07iRS9gJ0KF7ndVz4UryFHVYCw4
	 8kPcormo0v6MSBo5VyyVvkGp3yTX9EkCa14xrEQsA06qnODSUnOOVSn8VAYLxuCs5k
	 RdZ0HsF8UU+4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92614F55431
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197909358.15155.2132111682879873746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58f2b7cc24d350a8fef1db47113183fe4b2081952cfc27566cb7c108d320beb
Date: Wed, 25 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771979093
