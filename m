Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411C770830
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744303194; cv=none; b=NhulFUJAd7+w4ShFf30x6sCwZ9y3HLyy+qoCMeFRFmy2nhLP3CE9CZoHmbi3pCE4oOQmooc/aG+MCvZrkvaSqBLHw9HP2fMK8Wz5nb5t0FMONSwDY3iV2b10Ok749tdbjEBZN6rlxXVKaBkd3k25oAUrHOZXSnswE+vPgHtK6tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744303194; c=relaxed/simple;
	bh=XdxVwyf1oKHekxvRnMEXZAdLFGMxwJNfHydt7k0jV+4=;
	h=To:Subject:From:Message-Id:Date; b=HB12h94WZcRAk480BHLYHXNtDFFYIUdaNfKPis4gEr64w1XFVubJYOcq4s1AhBdgW+TDAxUsdel/eJki7Q5+E3BQ/rF0kcwnIfjN/cwtEfjwfm7lRZ40aEzsnGOCLT8ZVDcZa+KM/WcKHzCcmNkF85GKN1kM+Z3nWXyH/xLYREk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPHLYnMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPHLYnMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3830C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744303193;
	bh=XdxVwyf1oKHekxvRnMEXZAdLFGMxwJNfHydt7k0jV+4=;
	h=To:Subject:From:Date:From;
	b=RPHLYnMD5Nt++mh/2u8Xb/tmdafgIWDDR7sz7AXdWvzpx5dzFje/PI4ZoZ+CNEhjw
	 shRexW1gcJC5VTkofOxA1m6KuxpGxkQjKPrCUZQFy57jIAVKRsUHl4KGgKDn38ujUP
	 2/oBXyxNKbbtCBknVYgo735W29dRV89GvazovNWAv8sI48zwYCtFTV2/d3ootuh8Mu
	 Xe5U8AN+XybazC3s7dacKTUMKEvOUPtq0ArCGKbLXywrBj9SkFHJpDrxtRQJTiWxCP
	 xOrbc32lyTBHHcxYUxYa/JZgSjjVMot9nRZftoGsmqXNcbund2xCMP0TGhMp8JWDOA
	 sWzy3mQQuobzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E99C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174430319359.14543.10895987088113856307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0548ac14aeb1831922576c7bd90bce78ce4983323e98d13a6745e5f907b4f4d2
Date: Thu, 10 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744303193
