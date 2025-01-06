Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D6519343B
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736159754; cv=none; b=jGsLf/zzdcseGutdueO9zWs31Gd5H2y3B+GchxBN1wRPNeKARRY/SVBMiJuVFvN7TSBD6frMrh/4OQnzwFoCCcLsK8ecTNOQvM8rNQWkdq0T4KqcZPjjbR1ahiVCDSOXNY+2xTtCB/tIBCQmpNX2wgEJ11EI0IrXP882bq0bzDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736159754; c=relaxed/simple;
	bh=ChlQmEMNIBsLPgtvlt0uVlzwQhCtVrHfbySGAFysCPo=;
	h=To:Subject:From:Message-Id:Date; b=OLit3kJAAXyk7y9OuougdVOgNSCNPbXJA3q9BSaPZM5nTAKaUaOhe3TAP5YhAW9eH9HLZurzpICU7YwaSCaCKXBVEcvEMvSMvn9W1WBO9YbHuRAabTYmcdXhNYRzc/bF9kQ2MrNWVXNgJDAV2ivXty9eckprdLaMsuN2AJ30T9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xuenjo9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xuenjo9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1C5C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736159753;
	bh=ChlQmEMNIBsLPgtvlt0uVlzwQhCtVrHfbySGAFysCPo=;
	h=To:Subject:From:Date:From;
	b=Xuenjo9YVfAXHZXwa1+obglOkGJdN84gmL0/sSB8fKesDBY5u/cEPohUxC9YBoBZ6
	 ++d8wUhxz5od9EE6JjpLQkuth7MqLhbwA4cfZDYNm1ZJPMzzWXMSDILsuII/4yHUHe
	 3pfzNmjEl+tso4N+yfdClXmGaHCaktg2yZqh6xPokVE3eclOQAV2U3v2YKULAj06He
	 QkI31PQqNJz+/jPfovEdSG53AZ394sistlNGvVoyeCDXmfRMferMQ+3CO96C9vAJE6
	 81OUmyXiHnyFXh3zBqV06kK4z1O/mElu2fRqUvTyVk7wGbzi82/fC+CRD4Ym1Gs86z
	 XB6XnXAd2NH2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978B4E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173615975361.21291.1105491298852552316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d64b8983b09926aa5294c56881aa0e85205bb89b66c74e37366fcdaf454866d
Date: Mon, 06 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736159753
