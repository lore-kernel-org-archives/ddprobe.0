Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230102AD20
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768110834; cv=none; b=oiaOdd+vORtbin/1E2OUezbOoRjFMXZN4MoOx1aovzY5osFJflen5pFx2/zweKYJMFSUHUaN07UgTJrRGZqCV/vBlY8yY5AJDzxf+MDb3JL5el30xQa+JZUDh6Jh10ZzKGtFBXydjrtZm95MOM4WT5Us0CjAMk0rf/a+xoWhhLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768110834; c=relaxed/simple;
	bh=D8ufOyg75rPvvio5MJ5tuNKSN1Ogh5ga9/GPbZARDpU=;
	h=To:Subject:From:Message-Id:Date; b=Uu+EUbFXa0HQfVhjIIVHVeIVdgIQlsNf+BFViaMKTDSmxz+soIyShla5DhxHU8+sJJYz3km9A1ftGZckwNUo9gF2g89mN6UB/2UkI3+gWtzL8YHR529HbFxnZO2eirlMe8kEI3j4H3yc6utf1cxR21h56rpek8iHkGxteBfCd6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+XURg9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+XURg9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45A3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768110833;
	bh=D8ufOyg75rPvvio5MJ5tuNKSN1Ogh5ga9/GPbZARDpU=;
	h=To:Subject:From:Date:From;
	b=Q+XURg9J27SEEXDURaUDbXIPXABObi2b/SfVey+rJljOqJ1VPKm/+FGNvvDytiPxE
	 0o78bI03io99npMIwTx0vulvoCB7gfPdYO5UeSrrMd21jVoiu5SSCXWbqVZuxEAHcT
	 c/7+JJ7vcSM0aR3pKHJk+PTwtYr+fDJ1ePvEGjmAFG+/Wq7y3jOa4nu8MDbi7SPdNN
	 yQDhECVr0KCBvmuzrWlIZCWz/I6uCH2UzAl6uAquKC1RANQnmiARboyL5qz/opexYE
	 aiTQXCdiW9iglmjtBqBSTgiOZ5yQCUloafC4EbT9ik4XZEPPQGYqI728YdSV9cXHiO
	 BLGKE8kDUczTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927B0D25032
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811083357.24630.3684232524475490521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a23bc4ddbb0f89d1ccff2fce96fab8ed22ead18a19b501e4aad98b38f64eca
Date: Sun, 11 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768110833
