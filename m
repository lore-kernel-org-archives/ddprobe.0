Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5291EE010
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733523354; cv=none; b=Rr5WWk4PZbTkbgIxxwygKvcJoBHu3Pn5TrbfdnayT4n17w4HEMNJICsDazf8UoyFiTX1JMZxack913yYZi6K4iQxUk/hmt+ht0+R8kub74YKO6SUUPVFBWefySYZryegwE6DTP58py0vMDynOl4HrqOpUpiwmNJs6lZtAy/0Vyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733523354; c=relaxed/simple;
	bh=jLGk+ysSxR0F9yH4b2wSs69eTPjFoAI4ejhMVU9l1vM=;
	h=To:Subject:From:Message-Id:Date; b=t7x3XcF8RMejMCf+kmpkraKr6QPOeNwjLTTcNmR6YpWB/2K+vQ8rikcrNNjeas32xF7cMNWTibAWgUOWvyjRL8psLNftbFVRGa7Phj4GonaG/AWNxLwYmRPx4Rld9QhKm4jybVc0DBHTbRVv7i0fjc00/8D5D9VPTJOiUEFqZUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iM6uI+6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iM6uI+6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95D4C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733523353;
	bh=jLGk+ysSxR0F9yH4b2wSs69eTPjFoAI4ejhMVU9l1vM=;
	h=To:Subject:From:Date:From;
	b=iM6uI+6jRQTYvWbDurLifyteEhUKJN9osdOvzdzqDyfONPAKVDeGpQDhoaJ4sN7zx
	 LPvdacpJgUMOq/pN8lHjpFb+O8xLa7QbtsJN4FR9rHAPvLbzYuFj1Ud3wdd2qQ8eMx
	 8aQJDTSSRBuu316yc3daXeBXPh36wLWSLcYWXbHYMasYsKnGbwQKWxNySkw9mSrANb
	 vzqMqjb3Nb9ifqzIFVBaN8OKcJ3E9f+U14dD4UVg/vF/QNhT5btkt4N09hdic+vB3t
	 3S2MXQoxONze+V83VABglHWSDSamxBcJrpVNJYy4+zVYQfMgbu6tD/QDF6Hds/3k/f
	 xf56X2V2hEBNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A67B2E77179
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173352335367.17696.15079437368530080587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 014d35c907a51a3c090866add6bf51d8062adc72444a76773bfbb24f6ea78265
Date: Fri, 06 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733523353
