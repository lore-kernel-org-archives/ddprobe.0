Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC15280317
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770921894; cv=none; b=JEGxRq10FHkMMVYT9ZgIO80LIctMu740EZR05IIT6blAfoGM/DS95forEyLHVHk7GMvEHdPGMVP4OVByDDBNvSEi83u6jRK5KzRuN5gUFSYta83ddML1R8VYeL7Gu6tQcbQcHarWbxG4Rw08kyKA0ZJf6XiWUVjnn3imHopuGs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770921894; c=relaxed/simple;
	bh=f+3QMS8shcP8mDHgrhAOk0WhzjUYpBRsqdg8v+uqa88=;
	h=To:Subject:From:Message-Id:Date; b=m7jb7x+Ju5Edu1pPHCu9EEKc/ZN0vx/zyFrLR8dnZKEzTtZm+/1P1COlcTuAKCRaZnaG35Alb5S/MXG1ktpPhQHfntv4mrAnepONoU8DVOuG/ktWPE5csup8q1tthY09E97Wv3NIA808nRQjZCgaJYdK7mGqLaCZgdCznrlmWSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvHm7NkN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvHm7NkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB61AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770921893;
	bh=f+3QMS8shcP8mDHgrhAOk0WhzjUYpBRsqdg8v+uqa88=;
	h=To:Subject:From:Date:From;
	b=BvHm7NkNISMnOSJwh01ZTxxFEjSKX2xAO29mI/qcSGBwVJzGi8rob7oBp/UAk+F3H
	 IFGkObn7/fpXYYTo4kU+wwOiInMBAKIb8TvA4rUqrjcnlupn/O3wrQI09N9r8Mw8vc
	 hpFbOUJGycVbZ0C5yKHGNPMEy+jv0aI0W3GM6BNkvn9rIFZplcBUqcrtbaWM62lLat
	 A2PSjQzOqEHA85jcXA/knqETRZmY39eOXV1Nd877D2G7t+yHszgslZJyYkd7r9pKK2
	 ZvrdxrWFdPGK59fDBIjj4N/MgbbMZigkJO0l4+cnPl3JVecyeEIyCM19Y/q53xZHU2
	 ArtvartZouacw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B10EEA845
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092189359.21069.3813146550156142398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a11c58cb5abc9a924fb7338407237f07f31af1bbb1e23e75716e31224dac03
Date: Thu, 12 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770921893
