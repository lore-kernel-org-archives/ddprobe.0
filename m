Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295722EFD8C
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753465194; cv=none; b=nf1RY8faPG2b+ceSWCZWXIIVv77LfP+TGJvDkyylX7JqehAyuPXt+xXwg99+2gAn0ikw4/xSUks0XFTHaMKCXAcbkEiglXGbvwQFeKgJIkw3G+XILrLuqFhwxr5P9M6jXJBRVokhsc106HJFFYxakxYMJE2PSFVLYY6ENabZkUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753465194; c=relaxed/simple;
	bh=KN0gkiDPL5uea0Ow2iMcXif8MGKToHefs7CI9uS9Zjk=;
	h=To:Subject:From:Message-Id:Date; b=Yv8YxM48WW5fVXeWRT+Vns0/sY3ma16p+bSw+CAaSxXYNbr6ztN2y6j/xy4NI8aDCXGQuLyrOM/hjgTG77hF1Ou3M8ak/V7lMBQZVmBRtBcKCftfUXDI+M2FNvY7QXvMh0sHdkdEKxFmbygFpCkMWabiDrfuQIOZsc3Qm7AtMRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwG2OJIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwG2OJIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D190C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753465193;
	bh=KN0gkiDPL5uea0Ow2iMcXif8MGKToHefs7CI9uS9Zjk=;
	h=To:Subject:From:Date:From;
	b=ZwG2OJIh7b/JqdcqGBikkGWvJ9IjIG90mK+pmbe6waEkRooRtSWY1uoQIGoISx0zj
	 kc4OMs0nbDangpBgMk2tRCpDvirS2g0Gmm+5tMU0YFYlYpX6tPFXhPhhKAtzpvl5dr
	 eWnJfXoy8zrfFYJATxyxvdPYZ6M82+uCDVweOiuoaMkIuyJGeAPJwJIg7ep/Bspdlb
	 TgyaIpx+DXU1XkThh7dq+xYCUj9/8CKcbd6BbZoQeDg3htB+JcMDsoFaQjYA2mhCkC
	 Gw+D4mCtql6e06DEbR988GbbF4kuZEdytp7W/TwKEJTjlrp1s0mUafRRffsKtK6cwS
	 LkMWMvcE8Uj3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFCDC87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346519357.9753.10160293053675613142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2cccf9ede7fd08cc67169e169de27652a54172f80a4b4fbdfba2246605039b8
Date: Fri, 25 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753465193
