Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F5D1B6D0F
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 07:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739948934; cv=none; b=PqeFWPd0XhQMO8RTykbOWtGpKZOM9f19GZlRZT1f5ZzDwsbjtAKSpfotxYWNFWbxFIOXuEGvUAdsoSYNZSS3maUvmMcGvq6jDV0c4Vs1i51v/n+sfDz4ZPjPGkf/dL8WavPfKZY20sGxUHaem7zBlNJpNbkfJsA45sHy/YQCSI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739948934; c=relaxed/simple;
	bh=to1/lbDGxsNW5rQNJS++G9DxzclChB0PTmySV3xtZts=;
	h=To:Subject:From:Message-Id:Date; b=uvCvzuuRn6q4vDr5KcOR1JKjvWR5APHTlcBSP4dEA5ALSsBsKh6hjuVJU0TmuPhZRCwO9M08Jrf+ZqdH+2Ua8YcnJyP3EqcRauWfMbYiHIKQia/iqD6kONe3GY4ojXzj1SX4uqoL+4j0rbjvLBvtJGZzYkFre/+hkvZcMqmw6qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2LETRdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2LETRdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A917FC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 07:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739948933;
	bh=to1/lbDGxsNW5rQNJS++G9DxzclChB0PTmySV3xtZts=;
	h=To:Subject:From:Date:From;
	b=V2LETRdh1IqJiUT8a2UF7JqKEwdc9EuzChE1k1kpkPBLv5XlEvwJE8emH+XQc05Z2
	 oovmWM9EsJQOvJirjQN7XbS3zjpjY4z04609Z89hsH0FgrWqjdaaSGRhNtLkrS+PnG
	 MHVKmhS1khHCEE4NkyI0dpSppl8c4lcDALO019Yr0ErOFOjk2o0rL1zfq4Rr3C93Gn
	 VX1MOlCLfg8xtI5/KGb1t0QClb6vukGcl/bjXEKX6ht1C3yHbcESz/4kV1hIK2O43i
	 L+Xuf//u38DYEKYkcPuFPBoz1cfZpMgBwytCo0/D/4hOvVwRaU5SxsWetR3pPwhqTx
	 QI9FzGHi5txsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92203C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 07:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173994893359.23629.2474213059049394465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f64c69e9dd662422cd9c694757378c37e32c0bcf65e80900cf598063b4a8f59
Date: Wed, 19 Feb 2025 07:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739948933
