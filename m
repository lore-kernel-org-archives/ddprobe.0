Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185A4261B70
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771314294; cv=none; b=YH2UxOBKa06yaBr/+9sDCw5+BCywXTVFh8td1vJTwY0w3hEGOFfToMEi5KauLwbctrm1/uicj+wuFD1uT3emiTX3NwZE2Z29IBIoi2mhKjVB4K3qWl42hWlbJ6E3XeThLhi5CFEnUImWklgd1SHRHyqbLq1U8D/CxvdmqdtKnZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771314294; c=relaxed/simple;
	bh=gkLkTUVS/VuScIr6BaQIr33kYPPAUZZF6xBdCouh96o=;
	h=To:Subject:From:Message-Id:Date; b=rYEVmW2fd/U0nEAwpjXjLXNDALOXzcSUGU+eyA25Ss8PYt6ZaOhUUfp7UqStVyVnFb50FL5msWW7EEoC3efygX1rBUrupqcHdw71k9WQyb3rcRcMLwdlDQ65xNePcAHrPl9cyd+uwJDM6pfP+9Ovu7i+Tup0rJGGWW+dDmxLgFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fx1s5219; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fx1s5219"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EB2C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771314293;
	bh=gkLkTUVS/VuScIr6BaQIr33kYPPAUZZF6xBdCouh96o=;
	h=To:Subject:From:Date:From;
	b=Fx1s5219sM2hH2wrWOrMaklIb7+frEYmuk0nkoc55453hN5I77BG5/+UAiesT9Tp7
	 4AIBiLVRZR+WUcT4e3+lfRNgNXKOKV0AtuvF8BxZODot17/2wGOSjjbTe65rm5qJ7L
	 SPDj7J5dp4VlVMV4zmmhq1CkvOEAEiM3b6CY2HyXtebMM1UIwHG2N4hi/kim8elY3w
	 /PR2q8nPg01wSfAH/TjC2V2Ste0nQk6eJ3iAQPRkgnMbNETq20E7YYR7dgV3yDwq1G
	 eL04P5MeJesFyzAXyzDm4K+DUNdq/xMZWi97spyBucFT9lX04/4ERq0GnN4UVmIFz7
	 6WuUf4DLUzN6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EE9E8385B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131429358.14567.15572571219399591620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6099c3e57f1af951795b6dcdaf6bc242919d077b8fc213691e11eb0fc648f6f5
Date: Tue, 17 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771314293
