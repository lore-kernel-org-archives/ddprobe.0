Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A8FDF42
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750370994; cv=none; b=QJsMIxLein6qufc8D39djE2bAFguhsKOb+XigUs/1L9CXDShTEh7ujy1X670tdfxGSWYHTlTS7FMb68gs5olGvr1vsG56Pm1/TtixkXW15BK3TfgKFr8rm0hJC0PtIpo30u33Ca9Q2spEw4gaf3+6l+30m2koBkAOKYrcOIeT4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750370994; c=relaxed/simple;
	bh=jm3OZBxPFYvOtDWPoMfqheH3Izv4OVG7ABArhTW/z5I=;
	h=To:Subject:From:Message-Id:Date; b=Wng0AXtQ7DZbUKJb/CCeZOcVROde95BFbJAE3K6GIqX2jppAKB7VcuI5H/QQkFCq776D/PXlRwIF2e8qOjcezQMo4BuJXVSlDLgaS/fUc+JoyNPdh+yeDQzQcp/Du615ffoU/oque+W0tfBsMe4g5iASu+rF5XX2JRvr8b6qjco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRKMdeTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRKMdeTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B9CC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750370993;
	bh=jm3OZBxPFYvOtDWPoMfqheH3Izv4OVG7ABArhTW/z5I=;
	h=To:Subject:From:Date:From;
	b=eRKMdeTaR9HiLdVWCOBX9+zWtZPLQcJJ+K/yotc+IoIeB3O1gku03O9E8tUQxX7Lz
	 5CEmpgA9WNtlmkhaL1oTklAvKy/V+0mV7bDrKSiyawikcV5cpX5wy0QPEhHUtKOXC/
	 TxOVUYGRHaCFHOHuJwsrdTxZXC0Icq36i2bAKw7nF3NoCdFq+Yj7SQR0AiWvClxC57
	 54cD9/bqCQH4jPLskVU89tp+JIPdEVuPSHOGsJibGX0pgikvrO1VMc/+pwPF7XrBt2
	 FcJrJ4gJPETFy10JunRCvqdPPwES2DEE0eeTtZQseUIxq/BKbWDVYiyJZjO2n1gYtO
	 IHL3on+nj4FYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D2AC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037099357.1722.17192401083209298793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06fb8f6f7eac38ef135cb75ddaec91b1c59701d1f2630d5d8fd5250b6e8d6268
Date: Thu, 19 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750370993
