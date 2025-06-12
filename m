Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1E72F4326
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749731994; cv=none; b=dUXT+E75ltb94DlleDziMp4uj9W1skMJ1oHjDdDJZF+2YFinC+PHBoeQwp2RbgF+01i21NVBcF0L5YF0DQHgHBMzy+EtIH3uIY6cK3SYGtp9UdAUl+jAPyBMvAg+83iYtWfJy9X3FKorE3wLO2OULNhyRCPvNvyOgIbudr0zKvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749731994; c=relaxed/simple;
	bh=YRUexzkv/lN2KaUfrzz7nckhC9CMQwcy3sE9FUVw81s=;
	h=To:Subject:From:Message-Id:Date; b=a4Dh2mv/O98jCJSkxUazEPlQtJlm7FbGLynoZVOFntNVvKwZxjYoPU2zmU8+ksPfJi0RAJHSgcl18zn9kgM0RcKfHxGPlfL3it+zmhSHI+ER7WKr5iDPgV60YZ1YcDTtoClR/NqK88pGgiGFwr9+vMiyEP1hFqKVeMi9masyKgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUwlWEUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUwlWEUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7552C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749731993;
	bh=YRUexzkv/lN2KaUfrzz7nckhC9CMQwcy3sE9FUVw81s=;
	h=To:Subject:From:Date:From;
	b=mUwlWEUzyFJnEO0GKU0S81HSVfqmzQOubqwLI65ibvAN0W9vRzN7LSRNg0ljh2qFj
	 or0Yu/8/hnD/sMX3vxwD2Pf3Q9N3jifg8k0uVuVEWd6Wmkp85TsjKCTezjk05t/bEM
	 YOlOu7y1IIcovThuvAPEk0iuzogn8rDi3s4fTaP1W9i2vOTT2kj5N2vPZOkWZ00Yy/
	 fpnonDu2nmGgpRDrc4McS9J8XxlTOEcScGlNLFfstiWBGZMbfeB96LNBDg2wiF3+QC
	 nz4fB8ZyfhT1Pcn5MapRS1YQFJ7zmEu8svo4gCDb62k88acVv9AN9/2nnPdBXPNa38
	 jzt4O9jAclK7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934F2C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973199359.17686.11973478444898854173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80b6e42aadbbca90bcd9c54446ab9473d8b4db67bdc74f62f7c80b757419a45
Date: Thu, 12 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749731993
