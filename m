Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D9917BB21
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729235754; cv=none; b=F7hIGmn6Gdw+uIo6+rFNrR1Lkfx6xn9Y99m83fFQMYqGBk3Ip2zbLg6S0HbpZlFYoT6FRD52kp79gz/BipFnQyNtLkSjXLjhK0o12u9qjv7XyPhCpFqtYBcRn2BhVnjvxHyqhlIw60xmK+t50E+LRFpZb74trCP84gdwdCBq5ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729235754; c=relaxed/simple;
	bh=L8secD4M/6WOhtD9IcK0ava1YS7qIgatsmY+IWTRiVE=;
	h=To:Subject:From:Message-Id:Date; b=gUsn7Zb7t6/yoeUF1NLCCsaCsL553VW3NpdRaWLjw8Tu8Fd8ozHa3MSBJuK6emuZl3gc6eP0297E2jrpzpAoHOtKMddxbzaQdHE6a3h5rRfGj+YVBAO65HGLjgHW1rMCSLQ1FAzJEFNKoJPq0rgFgvYS8IIG/8W0+FniWUuWGck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWuJPMRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWuJPMRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A511FC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729235753;
	bh=L8secD4M/6WOhtD9IcK0ava1YS7qIgatsmY+IWTRiVE=;
	h=To:Subject:From:Date:From;
	b=kWuJPMRIcnZHbtJZqySIyi7p+2bVLN64qjSlpwIpmntmx+igja5305IY5fWMJNzfr
	 Yc/0Whz2Qymusp5YlDCjBPGBqw+g5FKv+q2oGkOi6aDSQ3i88bSNEusxFWh8PeYC+G
	 7uOKz0tc1ggADZ355/02jInucKICv+DJccU1i8rDek4rvTDl2FKhqu6vHfsw1uHgTQ
	 dLuVyHEQf1TZ+FTGNrTGkcKqtyJ/73K6JyYhXRkYf11lVDL0RtHlrNvREqC5d/PArj
	 pB7o3JPGAHb/dOnnE0tav260M8knNSiU7Go62OxpJrUb3c/gEpS26SEhWrhEGK6bwK
	 ErhLhDwame2vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CFCD3C54C
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172923575360.19442.892861164000928337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d817d20c5a1ef7f68aa096761669a05614f1eb7d2246442190313ca97e4eb1d5
Date: Fri, 18 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729235753
