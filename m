Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208E0224AF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770915894; cv=none; b=XZPYBjP9LebnFBDg3r/5+HusU133vaN2tpRLZkND4MKROf1tFP8mvD2WyZNgUZG2TrM8b+ffUHbegQwP49CmLCuZiQoUadDx/nXevB1u/pW5m56V6CRQ7XxkS3oO5cEaN3O7loLjqEsvjw+XQcVBnupLsnbRzx+BPHGSDVfOIc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770915894; c=relaxed/simple;
	bh=AWhVN4aB5X++N5dCP7xbRTrtibaNh2xRb+0mtI2JVSQ=;
	h=To:Subject:From:Message-Id:Date; b=pPb0usR4Yxs8dZpNrYJwcQf5wCEpiojH2y+OpKHmovcZpM0+sviBCKbYlbee/DjYXAH1p+/RGUaxtnHT60sRW5nItHgqEBxt/pRlLXq0VHHJxbQoeYUSEB9KAtRfRlFhTrU2km7pmIE21gNBnr19qkqmONLpWUX+sluqeXaUrdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzK3bdZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzK3bdZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC41DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770915893;
	bh=AWhVN4aB5X++N5dCP7xbRTrtibaNh2xRb+0mtI2JVSQ=;
	h=To:Subject:From:Date:From;
	b=LzK3bdZeFxwDARsBG9IXy3pkUrj1ACpr+CJGJ+Fv1HDUODjXaSYpoNMKnrIxYgSCw
	 6T1nJZ1PmTjpCzpes55EN4YQbPMUE6dmqscOmj+FD4e6znLBq7SgfhlGUuaun+mlXf
	 JazG3AI5FK05u+Ii3azBaA18ekOioOA+UagHlaTEgTSfHtTV+b0F5qA3KoXStw6vXg
	 MVAMHyZpcXAis5mhT45Gqo3ZWobHwNA4kJg2sHcfXP7h5T4/LiMmEQ7xd3CnyAqMZG
	 Bky+VcoAQ+hTWgZe3Ke9j+NE4d1Rz006zGFRNgCmVlYJUmkfNIu/Nzi3+54RMdUuf/
	 xp+DcjGeEfEkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97128EE36AC
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177091589360.25231.3132763625275356872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd8d4c2c468b2f0db4e7d18ce665fcec26bbf0c61bae1e1609723069ca90d9ad
Date: Thu, 12 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770915893
