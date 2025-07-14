Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1849123AD
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752454794; cv=none; b=TFuAcJyULvgDlAt9qPdB57pJEfatNGsC0eNa0cICldkseR7ZTGPjN3hpzAyz/0bt3mzw7f+YUv1ypHR6t7G+j+odLAgbQEqlZX73vOauu7KjZeALDGI9pXoWp8v6jeSdiLTu3x+BUCR87BWUxy4CvWhqwcLLgPUOV3Ujg3l0dOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752454794; c=relaxed/simple;
	bh=s6IkD2PYcol/JkKxp4V3b935jpuAU24UT5xZZLSlSAo=;
	h=To:Subject:From:Message-Id:Date; b=tXidPo+3C4Wio9Q4HSl9suPeFoDSe4lhRY9kPwwyhCASs7WAB5jhccvQekOyW9u5eP1f24HjX6VNBEesrh2EtYW9bEPohjplIYXGq/l48Yeb/sLWpkYltgqnYtxmIpVUxeM3eHvCi3iCd2aqa28QHWVacnce1cpc7FOpR+0tJUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaAZyLNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaAZyLNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9CEC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752454793;
	bh=s6IkD2PYcol/JkKxp4V3b935jpuAU24UT5xZZLSlSAo=;
	h=To:Subject:From:Date:From;
	b=QaAZyLNXqHMm+amgKEk12TjozZ+VQvQ186BRTixkefC1ts+veHtecljx2/XKKJrHM
	 flbnqdEn8HA0oPSYXvPsbDmi6T0DvMumU68RfCimpLqzA7Vhv6UuryYRuwVnJSWAPQ
	 tDgDtTLdepXsDcNC5AZN1E029jm+S04E/nwyonqRj9agospjmBovcjS6XAQQCWSnaN
	 1t7yFUeEMkKLOfwEm5+Knjqmzf7zc6v9Sa/+AQVVugFsS9jkzaPAnc0gEHF8uVYgew
	 ZyoD3bm2u0viKqMkxggIyamxUZES8Nr75HlpmxTMadaEOTzgVlvhM5vBOUKGszQOoD
	 WoJ4dA9OjK1vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF4C83F1D
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175245479357.23300.3525356840465308343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb47b6a0b49baf86b43c96e2fa9232703db914bf7f3d9470dad7137b95948f30
Date: Mon, 14 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752454793
