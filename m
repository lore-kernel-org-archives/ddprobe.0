Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F43F207A32
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767310434; cv=none; b=bDzY14f2OTY15MJrFyyESP/JGSNjmGONS7xwoFBkum1IrLvAyLYotv9LyXHkBoAZCpun/tA77fdEio3jX3owoCB4EzqMDEl/n1kRgcO3UYkCucbL20MCFUpMHnD9kGUGaLDc7insxcTFUk2/47kdImYOAGxCGxcfJ8SL88TJcSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767310434; c=relaxed/simple;
	bh=3sJ09lc71J4v3SXIB0WJ12nJP60s1A/9ih74R1YLcK4=;
	h=To:Subject:From:Message-Id:Date; b=n3PHev4yl/XZliU1mC9ymxLmd4qyAQjZoHtAGcPFkJRoXRi6jgARA1qMFEn44otWxAOcdGnuRfL1gvtPPE8H1ZTOGFEnJOU+pyBq0OeLpSJgzVrMWLCcs4lGlkg/Be1O66kBDlMYAQHLh5j5lDaR9pRj7Ty99EETM5XY+IClIMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSWqF9EW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSWqF9EW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C1DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767310433;
	bh=3sJ09lc71J4v3SXIB0WJ12nJP60s1A/9ih74R1YLcK4=;
	h=To:Subject:From:Date:From;
	b=SSWqF9EWSaYygtnktTVjILiZ4VlDbA8Qul4up9KxEYh2o9QQPrPYxpfEdVYsUWznr
	 +fRfTlldAEswl/TY01LsadsUm+KlPbyI2hxIoSUvGLiS9zQh65xhyDBC2Irkl/+brx
	 Zq3/2nVRjt5QeJIsEB1QoWNqhrtZ4jsd8zAO3PHDXOfoD/NpcUfoiSEGWcKmza/Mtn
	 IG35kFiqKdRsKh/05t7NMCjm4HIRyL+477RaTcRB1x/ugHtLQ/fqOhRjDS7C4tGYe9
	 p5ScU7YJ2POGsqAIm8vTYLZ0ULE5Wi+ooNd1vOnRCcjCOA5th5/js0fvtxtDJJ0eDO
	 HKszKBvtFXQPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BD5FA3722
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176731043357.31669.10271495886208327673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb8a43440ada134e86599a469e8717a42b1876ee52e5527364ddd6709339fe9
Date: Thu, 01 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767310433
