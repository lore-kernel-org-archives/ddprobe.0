Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F569334C1B
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762536594; cv=none; b=h3iPOyd6iV1nBTRB0jINu4O7gwNyO33IkH3uPtp44Kh5LMQWWxYRe6SAJC0pMBQJTzf35ChqrIQ+L012bHPrZAvJBJW1cyy031XQnRE10ZMsPU6mP2QO3H7pyPitBZ4Bnnoy/xk7adDqB2nS4QtNDmGpItb7MwfDNkf0YbEtLR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762536594; c=relaxed/simple;
	bh=Q5IXMc8p40g/zZU0qBdIwCdNjfUzbKevMAJcC1L4sIY=;
	h=To:Subject:From:Message-Id:Date; b=IulZ+McatRDHln4WPukMIVJM6Kz/LhMzUP9GAA2ZN2snj68M9s9Y3OURxt5nRcFebhbdeCbc6pXInv84eHEuTEApSxNePGK6kKmS+4K2ZSdtDTobv5CgB4veOR7OV8EBFwZDx8k4dDPkyDiwRSPEUqClhZ76YcfFnBdY5/4KK3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaqTIYix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaqTIYix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB5DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762536593;
	bh=Q5IXMc8p40g/zZU0qBdIwCdNjfUzbKevMAJcC1L4sIY=;
	h=To:Subject:From:Date:From;
	b=ZaqTIYixq/O1BKyQx7NEBqxn4smYsFQKX9lQmXyzNdiha/tE/QtXDHYKLTsiodeBK
	 NxPudtjcnyNY54PHq5pX17IBFZmBiKuVJQbuNryn+piu5Y5mpK7x01tpOQL7Is3PDT
	 QjXEdd1pDy4lZ5C8wBA737H71e6rqFi4vVl82By67CCoWUt7YWIX1yY+uRakWjeDkT
	 oMDUieWHi3OjJWQpq+VRnOXehHMfILfv7TROs7fouae3hnMxWklkK+DdVOHjkCZSiA
	 N+QvIMjPSR2mOxNQBCVF7nmS5khaLHKJLK5XUjQPPQzt2/A24dRhs6Ss8klX1rXBbv
	 6Ltgk13h5EeEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F372CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176253659360.25705.3849113611235970310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c53ad5f005c437a97f3de72d0a483f469efd950f829470c3940b0253f303eed
Date: Fri, 07 Nov 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762536593
