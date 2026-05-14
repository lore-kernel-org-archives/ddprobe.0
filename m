Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F7322A4EE
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778719833; cv=none; b=p67eyVRus6GvNRwhwqZASaUnPp4XyPF92LCoGxdVacLfVidpGdHioMLBMAdwbGlywBuNQPpWz0VDWvSq5manqAv7vtDTsI3jAQXjY3OItknaRFU39q+x2lrgYxULr+bT+hdn9HDblZi1eQqHSHsBl+/IBe9WIaaSHM0X68VQirg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778719833; c=relaxed/simple;
	bh=SXP1vp6zMEYRFCWIYI55K8f2rVAc+TYoWKQJqa93ySQ=;
	h=To:Subject:From:Message-Id:Date; b=IY4MhGehpVkNVGnveF+duhxUppLfpTYTiqe4+gpICASjaS84lQf3GXLeb9C51LleLzUubJZMKFyaCAYzbVqD8eCJ6BZiCaCX7kADiH0WKENw9wgM9W1vorszUnGVtk/XDxmxpS0rcjtqW2tufHQPBbMVd/SvSLZLqI0jZ/3L5f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qx7ZLfFz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qx7ZLfFz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79ABC19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778719833;
	bh=SXP1vp6zMEYRFCWIYI55K8f2rVAc+TYoWKQJqa93ySQ=;
	h=To:Subject:From:Date:From;
	b=qx7ZLfFzi+FFu0ZVrMQYFaDioXqSGv97oyoYWoRH0lDK9SOMFLeLio5yDgdGUWdyj
	 dVbu6VmU2WEY1N8kpcyeZbGRA9q50txFqA8f3fKPGWbTjhosrjyOjSHSPdQOvCG3HE
	 Lg3wAxUI12NIsK8KUUd22NjrTKLqBh7hvinwG1VIAG6X4w2Y+z1jcfs92wWWodEIpH
	 ct4LG6Lag7omk8J76+GPFmBPapSMQp8YkL3Li5gIT0obO8bmlIHl/oAMzeoXDDRdhG
	 mEp5iMRc2piTcoWBht5yjMNukQpJ1WX1nJffAvRRm7c+5Pkx3N8RAFQ/ZQ5XLaWeYu
	 Zj1wrOtOrpIEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABB2CD4F21
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871983369.12961.15119716926239645810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9cf18f6c92333e348814f3fa47f30522b309517d471b5e0f7d33bc21e017d8
Date: Thu, 14 May 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778719833
