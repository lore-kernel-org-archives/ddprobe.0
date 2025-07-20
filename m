Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E5E1F4180
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753018795; cv=none; b=NWo2U6XdCnocMgUw4jRLNVPnYKbbb/EwsCk3jtstK3Bv62xIlvo844uiofyZpKVV6LfvHF9O0BUYwkRcONApHDAS6vAC577AG3+9EpbKiIrdRGkLxsevxIApsVmXhwDiPfR6VwrG9QuCNW9CVBfDNsE4MTlWzbVeVkKPhc9ScOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753018795; c=relaxed/simple;
	bh=TvMS9VsLivtXFLpbwsjV4CQTJaTywfFtjRJjJYkdqrs=;
	h=To:Subject:From:Message-Id:Date; b=han7y9Hm+bIjGaMKiB9sxPtUT6mW6WIKWQ6UxlQrQDkNoigesn+uRZ1aNd95KG9yezFN9mjCeJDKBA/BJhNCyyJUovdoZCp62YpyAVfFH5X3BajtErJhT2X9JWYmmcTHFZRYOJMVZGIMcTDO2TfuCGMjXGmAnrNqhqIP5I0sd8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrdzacQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrdzacQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B0AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753018793;
	bh=TvMS9VsLivtXFLpbwsjV4CQTJaTywfFtjRJjJYkdqrs=;
	h=To:Subject:From:Date:From;
	b=VrdzacQXjVtfrWxDWNQGNitTHFGxSNR1YEDZFeUcVZoyzJzZtZHn/l583BWHTtKIT
	 oCFMBPypuJYt3FbKXp8GMdrsWd4nvAS7Sr5jLWVrMrI9w8JahTpJsrgYxnLrND5azi
	 brDHQDTpCpYpeIuEfI8+6JB4JNnbZsoTB8wHfDF0EB4b/W47ePU6t4Rs+MEz2QO/t6
	 Lr07XBH/YFwwef+NDay8bV95oq3GNnroi0AFT/WvEZIml8PouzC4zYNP3FnDnNgyce
	 5jF3QPWW1QF4sfvtfC8Sf9yppAwHYpw4jReJJemutWr41c0lg78nvOf4hPpphEs0T3
	 ThGV+aPMhh5PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F048C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301879357.22990.7389359366596745390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c70e64cd017fbd82f7bd097de975b171411131f4a53a68551e68d8c1466ad55
Date: Sun, 20 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753018793
